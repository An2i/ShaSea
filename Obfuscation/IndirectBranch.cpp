#include "IndirectBranch.h"
#include <random>

PreservedAnalyses IndirectBranchPass::run(Module &M, ModuleAnalysisManager &AM)
{
    // if (this->flag)
    // {
    //     outs() << "[Soule] force.run.IndirectBranchPass\n";
    // }
    for (Function &Fn : M)
    {

        if (Options && Options->skipFunction(Fn.getName()))
        {
            continue;
        }

        //跳过空函数、模板实例化或内联函数、启动段的函数
        if (Fn.empty() || Fn.hasLinkOnceLinkage() || Fn.getSection() == ".text.startup")
        {
            continue;
        }

        LLVMContext &Ctx = Fn.getContext();

        // 初始化成员变量
        BBNumbering.clear();
        BBTargets.clear();

        // 关键边分割：将从"多后继块"到"多前驱块"的边进行分割，确保控制流的唯一性
        //关键边：从有多个后继的基本块到有多个前驱的基本块的边
        SplitAllCriticalEdges(Fn, CriticalEdgeSplittingOptions(nullptr, nullptr));
        NumberBasicBlock(Fn);   //调用自定义方法为函数中的基本块分配随机编号

        //检查是否有可处理的基本块
        if (BBNumbering.empty())
        {
            continue;
        }

        uint64_t V = RandomEngine.get_uint64_t();
        IntegerType *intType = Type::getInt32Ty(Ctx);
        unsigned pointerSize =
                Fn.getEntryBlock().getModule()->getDataLayout().getTypeAllocSize(
                        PointerType::getUnqual(Fn.getContext())); // Soule
        if (pointerSize == 8)
        {
            intType = Type::getInt64Ty(Ctx);
        }
        ConstantInt *EncKey = ConstantInt::get(intType, V, false);  // 加密密钥: +V
        ConstantInt *EncKey1 = ConstantInt::get(intType, -V, false);// 加密密钥: -V

        Value *MySecret = ConstantInt::get(intType, 0, true);

        ConstantInt *Zero = ConstantInt::get(intType, 0);
        GlobalVariable *DestBBs = getIndirectTargets(Fn, EncKey1); //使用加密密钥加密目标函数名

        for (auto &BB : Fn)
        {
            auto *BI = dyn_cast<BranchInst>(BB.getTerminator());
            if (BI && BI->isConditional())
            {
                IRBuilder<> IRB(BI);

                Value *Cond = BI->getCondition();// 获取分支条件
                Value *Idx;
                Value *TIdx, *FIdx;

                TIdx = ConstantInt::get(intType, BBNumbering[BI->getSuccessor(0)]);
                FIdx = ConstantInt::get(intType, BBNumbering[BI->getSuccessor(1)]);
                Idx = IRB.CreateSelect(Cond, TIdx, FIdx);

                // 从全局数组中获取加密的目标地址
                Value *GEP = IRB.CreateGEP(DestBBs->getValueType(), DestBBs, {Zero, Idx});//指针偏移计算
                Value *EncDestAddr = IRB.CreateLoad(GEP->getType(), GEP, "EncDestAddr");//从加密函数地址表里取数
                // -EncKey = X - FuncSecret
                Value *DecKey = IRB.CreateAdd(EncKey, MySecret);
                Value *DestAddr = IRB.CreateGEP(Type::getInt8Ty(Ctx), EncDestAddr, DecKey);

                //创建间接分支
                //创建间接分支指令，容量为2（两个可能的目标）
                IndirectBrInst *IBI = IndirectBrInst::Create(DestAddr, 2);
                // 添加可能的跳转目标
                IBI->addDestination(BI->getSuccessor(0));
                IBI->addDestination(BI->getSuccessor(1));
                ReplaceInstWithInst(BI, IBI);// 替换原始的条件分支指令
            }
        }
    }
    return PreservedAnalyses::none();
}

void IndirectBranchPass::NumberBasicBlock(Function &F)//基本块随机化
{
    for (auto &BB : F)
    {
        if (auto *BI = dyn_cast<BranchInst>(BB.getTerminator()))
        {
            if (BI->isConditional())
            {
                unsigned N = BI->getNumSuccessors();
                for (unsigned I = 0; I < N; I++)
                {
                    BasicBlock *Succ = BI->getSuccessor(I);
                    if (BBNumbering.count(Succ) == 0)
                    {
                        BBTargets.push_back(Succ);
                        BBNumbering[Succ] = 0;
                    }
                }
            }
        }
    }

    long seed = RandomEngine.get_uint32_t();
    std::default_random_engine e(seed);
    std::shuffle(BBTargets.begin(), BBTargets.end(), e);

    unsigned N = 0;
    for (auto BB : BBTargets)
    {
        BBNumbering[BB] = N++;
    }
}

//创建加密目标数组
GlobalVariable *IndirectBranchPass::getIndirectTargets(Function &F, ConstantInt *EncKey)
{
    std::string GVName(F.getName().str() + "_vv");
    GlobalVariable *GV = F.getParent()->getNamedGlobal(GVName);
    if (GV)
        return GV;

    // encrypt branch targets
    std::vector<Constant *> Elements;
    for (const auto BB : BBTargets)
    {
        Constant *CE = ConstantExpr::getBitCast(BlockAddress::get(BB),  PointerType::getUnqual(F.getContext()));
        CE = ConstantExpr::getGetElementPtr(PointerType::getUnqual(F.getContext()), CE, EncKey);
        Elements.push_back(CE);
    }

    ArrayType *ATy = ArrayType::get(PointerType::getUnqual(F.getContext()), Elements.size());
    Constant *CA = ConstantArray::get(ATy, ArrayRef<Constant *>(Elements));
    GV = new GlobalVariable(*F.getParent(), ATy, false, GlobalValue::LinkageTypes::PrivateLinkage, CA, GVName);
    appendToCompilerUsed(*F.getParent(), {GV});
    return GV;
}

IndirectBranchPass *llvm::createIndirectBranch(bool flag)
{
    return new IndirectBranchPass(flag);
}