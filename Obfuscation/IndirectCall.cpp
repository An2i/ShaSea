#include "IndirectCall.h"

using namespace llvm;
using std::vector;

/**
 * @brief
 *
 * @param F
 * @param AM
 * @return PreservedAnalyses
 */
PreservedAnalyses IndirectCallPass::run(Function &F)
{
    doIndirctCall(F);
    return PreservedAnalyses::none();
}

bool IndirectCallPass::doIndirctCall(Function &Fn)
{
    if (Options && Options->skipFunction(Fn.getName()))// 跳过指定函数
    {
        return false;
    }

    LLVMContext &Ctx = Fn.getContext();

    // 清理之前的数据
    CalleeNumbering.clear();
    Callees.clear();
    CallSites.clear();

    NumberCallees(Fn); // 收集函数调用信息

    if (Callees.empty())
    {
        return false;
    }

    uint64_t V = RandomEngine.get_uint64_t(); // 生成随机数

    // 根据指针大小选择整数类型
    unsigned pointerSize = Fn.getEntryBlock().getModule()->getDataLayout().getTypeAllocSize(PointerType::getUnqual(Fn.getContext())); // Soule
    IntegerType *intType = Type::getInt32Ty(Ctx);
    if (pointerSize == 8)
    {
        intType = Type::getInt64Ty(Ctx);
    }
    ConstantInt *EncKey = ConstantInt::get(intType, V, false);   //解密密钥: -V
    ConstantInt *EncKey1 = ConstantInt::get(intType, -V, false); //加密密钥: +V

    Value *MySecret = ConstantInt::get(intType, 0, true); //创建了一个值为0的常量，后续扩展使用
    ConstantInt *Zero = ConstantInt::get(intType, 0);     //创建了一个值为0的常量，专门用作数组访问的第一个索引
    
    GlobalVariable *Targets = getIndirectCallees(Fn, EncKey1); //创建加密函数表Targets

    //转换每个调用点，换为真实函数指针并替换调用
    for (auto CI : CallSites)
    {
        SmallVector<Value *, 8> Args;
        SmallVector<AttributeSet, 8> ArgAttrVec;

        CallBase *CB = CI;

        Function *Callee = CB->getCalledFunction();
        FunctionType *FTy = CB->getFunctionType();
        IRBuilder<> IRB(CB);

        Args.clear();
        ArgAttrVec.clear();

        Value *Idx = ConstantInt::get(intType, CalleeNumbering[CB->getCalledFunction()]);// 计算函数在表中的索引

        Value *GEP = IRB.CreateGEP(Targets->getValueType(), Targets, {Zero, Idx});
        LoadInst *EncDestAddr = IRB.CreateLoad(GEP->getType(), GEP, CI->getName());// 从加密表中获取加密地址

        const AttributeList &CallPAL = CB->getAttributes();
        auto I = CB->arg_begin();
        unsigned i = 0;

        for (unsigned e = FTy->getNumParams(); i != e; ++I, ++i)
        {
            Args.push_back(*I);
            AttributeSet Attrs = CallPAL.getParamAttrs(i);
            ArgAttrVec.push_back(Attrs);
        }

        for (auto E = CB->arg_end(); I != E; ++I, ++i)
        {
            Args.push_back(*I);
            ArgAttrVec.push_back(CallPAL.getParamAttrs(i));
        }

        // 解密：加密地址 + 密钥 = 真实地址
        Value *Secret = IRB.CreateAdd(EncKey, MySecret); //EncKey = EncKey + MySecret
        Value *DestAddr = IRB.CreateGEP(Type::getInt8Ty(Ctx), EncDestAddr, Secret);//解密公式：EncDestAddr + EncKey + 0 = DestAddr

        Value *FnPtr = IRB.CreateBitCast(DestAddr, FTy->getPointerTo());
        FnPtr->setName("Call_" + Callee->getName());
        CB->setCalledOperand(FnPtr);// 转换为函数指针并替换调用
    }

    return true;
}

/**
 * @brief
 *
 * @param F
 * @param EncKey
 * @return GlobalVariable*
 */
GlobalVariable *IndirectCallPass::getIndirectCallees(Function &F, ConstantInt *EncKey)//创建加密函数表 
{
    //为函数 F 创建一个包含加密函数指针的全局数组，用于隐藏真实的间接调用目标
    // std::string GVName(F.getName().str() + "_IndirectCallees");
    std::string GVName = F.getName().str() + "_ll";
    GlobalVariable *GV = F.getParent()->getNamedGlobal(GVName);//在模块中查找指定名称的全局变量
    if (GV)
    {
        return GV;
    }

    //为每个被调用函数创建加密后的函数指针
    std::vector<Constant *> Elements;
    for (auto Callee : Callees) //遍历所有被调用函数
    {
        Constant *CE = ConstantExpr::getBitCast(Callee, PointerType::getUnqual(F.getContext())); //类型转换，将函数指针统一转换为通用指针类型
        CE = ConstantExpr::getGetElementPtr(Type::getInt8Ty(F.getContext()), CE, EncKey); //执行指针算术运算。加密地址 = 原地址CE + EncKey
        Elements.push_back(CE); //CE加密完后放入容器
    }
    // 创建全局数组存储加密后的函数指针
    ArrayType *ATy = ArrayType::get(PointerType::getUnqual(F.getContext()), Elements.size());
    Constant *CA = ConstantArray::get(ATy, ArrayRef<Constant *>(Elements));
    GV = new GlobalVariable(*F.getParent(), ATy, false, GlobalValue::LinkageTypes::PrivateLinkage, CA, GVName);
    appendToCompilerUsed(*F.getParent(), {GV});
    return GV;
}

/**
 * @brief
 *
 * @param F
 */
void IndirectCallPass::NumberCallees(Function &F) //收集函数调用
{
    for (auto &BB : F)
    {
        for (auto &I : BB)
        {
            if (dyn_cast<CallInst>(&I))// 检查指令是否为调用指令
            {
                CallSite CS(&I);
                Function *Callee = CS.getCalledFunction();//获取被调用函数
                if (Callee == nullptr)
                {
                    continue;
                }
                if (Callee->isIntrinsic()) //跳过内置函数
                {
                    continue;
                }
                CallSites.push_back((CallInst *)&I);
                if (CalleeNumbering.count(Callee) == 0) //检查函数是否已经被编号
                {
                    CalleeNumbering[Callee] = Callees.size(); // Callees是函数容器列表，使用进队顺序作为编号
                    Callees.push_back(Callee); //然后将函数添加到容器中
                }
            }
        }
    }
}

/**
 * @brief
 *
 * @param flag
 * @return IndirectCallPass*
 */
IndirectCallPass *llvm::createIndirectCall(bool flag)
{
    return new IndirectCallPass(flag);
}