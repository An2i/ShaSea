#include "VMFlatten.h"

PreservedAnalyses VMFlattenPass::run(Function &F)
{
    // Function *tmp = &F;
    DoFlatten(&F, 0);
    return PreservedAnalyses::none();
}

std::vector<BasicBlock *> *VMFlattenPass::getBlocks(Function *function, std::vector<BasicBlock *> *lists)
{
    lists->clear();
    for (BasicBlock &basicBlock : *function)
    {
        lists->push_back(&basicBlock);
    }
    return lists;
}

unsigned int VMFlattenPass::getUniqueNumber(std::vector<unsigned int> *rand_list)
{
    //生成一个在指定列表中不存在的唯一随机数
    unsigned int num = rand();
    while (true)
    {
        bool state = true;
        for (std::vector<unsigned int>::iterator n = rand_list->begin(); n != rand_list->end(); n++)
        {
            if (*n == num)
            {
                state = false;
                break;
            }
        }
        if (state)
        {
            break;
        }
        num = rand();
    }
    return num;
}

bool VMFlattenPass::valueEscapes(Instruction *Inst)
{
    const BasicBlock *BB = Inst->getParent(); //获取该指令所在的基本块
    for (const User *U : Inst->users())
    {
        const Instruction *UI = cast<Instruction>(U);
        if (UI->getParent() != BB || isa<PHINode>(UI))
            return true;
    }
    return false;
}

Node *VMFlattenPass::newNode(unsigned int value)
{
    Node *node = (Node *)malloc(sizeof(Node));
    node->value = value;
    node->bb1 = node->bb2 = NULL;
    return node;
}

VMInst *VMFlattenPass::newInst(unsigned int type, unsigned int op1, unsigned int op2)
{
    VMInst *code = (VMInst *)malloc(sizeof(VMInst));
    code->type = type;
    code->op1 = op1;
    code->op2 = op2;
    return code;
}

void VMFlattenPass::create_node_inst(std::vector<VMInst *> *all_inst, std::map<Node *, unsigned int> *inst_map, Node *node)
{
    VMInst *code = newInst(RUN_BLOCK, node->value, 0);
    all_inst->push_back(code);
    inst_map->insert(std::map<Node *, unsigned int>::value_type(node, all_inst->size() - 1));
}

Node *VMFlattenPass::findBBNode(BasicBlock *bb, std::vector<Node *> *all_node)
{
    for (std::vector<Node *>::iterator i = all_node->begin(); i != all_node->end(); i++)
    {
        if (bb == (*i)->data)
        {
            return *i;
        }
    }
    return NULL;
}

//all_inst: 存储生成的VM指令序列
//inst_map: 节点到指令地址的映射表
//node: 当前处理的控制流节点
void VMFlattenPass::gen_inst(std::vector<VMInst *> *all_inst, std::map<Node *, unsigned int> *inst_map, Node *node)
{
    // 单分支情况 (无条件跳转)
    if (node->bb1 != NULL && node->bb2 == NULL)
    {
        if (inst_map->count(node->bb1) == 0)//如果目标节点未处理过，递归生成其指令
        {
            create_node_inst(all_inst, inst_map, node->bb1);// 创建目标块指令
            gen_inst(all_inst, inst_map, node->bb1);
        }
        else                               //如果已处理过，生成JMP_BORING指令直接跳转
        {
            unsigned int addr = (*inst_map->find(node->bb1)).second * 3;//second = 指令序列中的索引位置
            VMInst *code = newInst(JMP_BORING, addr, 0);
            all_inst->push_back(code);
        }
    }
    //双分支情况 (条件跳转)
    else if (node->bb2 != NULL)
    {
        VMInst *code = newInst(JMP_SELECT, 0, 0);
        all_inst->push_back(code);
        if (inst_map->count(node->bb1) == 0)
        {
            create_node_inst(all_inst, inst_map, node->bb1);
            gen_inst(all_inst, inst_map, node->bb1);
        }
        if (inst_map->count(node->bb2) == 0)
        {
            create_node_inst(all_inst, inst_map, node->bb2);
            gen_inst(all_inst, inst_map, node->bb2);
        }
        // 回填跳转地址（×3是因为每条VM指令占3个int）
        code->op1 = (*inst_map->find(node->bb1)).second * 3;
        code->op2 = (*inst_map->find(node->bb2)).second * 3;
    }
    else
    {
        return;
    }
}

void VMFlattenPass::dump_inst(std::vector<VMInst *> *all_inst)
{
    unsigned int x = 0;
    for (std::vector<VMInst *>::iterator i = all_inst->begin(); i != all_inst->end(); i++)
    {
        // printf("\033[1;32m0x%02x: \033[0m", x++);
        VMInst *c = *i;
        if (c->type == RUN_BLOCK)
        {
            // printf("\033[1;32mRUN_BLOCK 0x%02x\033[0m\n", c->op1);
        }
        if (c->type == JMP_BORING)
        {
            // printf("\033[1;32mJMP_BORING 0x%02x\033[0m\n", c->op1);
        }
        if (c->type == JMP_SELECT)
        {
            // printf("\033[1;32mJMP_SELECT 0x%02x 0x%02x\033[0m\n", c->op1, c->op2);
        }
    }
}

void VMFlattenPass::DoFlatten(Function *f, int seed)
{
    srand(seed);
    std::vector<BasicBlock *> origBB;
    getBlocks(f, &origBB);
    //基本块数量为1的函数不做混淆
    if (origBB.size() <= 1)
    {
        return;
    }

    unsigned int rand_val = seed;
    //处理入口基本块
    //原始入口块需要特殊处理，因为它不能成为平坦化结构的一部分
    Function::iterator tmp = f->begin();
    BasicBlock *oldEntry = &*tmp;
    origBB.erase(origBB.begin());
    BranchInst *firstBr = NULL;
    if (isa<BranchInst>(oldEntry->getTerminator()))
    {
        firstBr = cast<BranchInst>(oldEntry->getTerminator());
    }
    BasicBlock *firstbb = oldEntry->getTerminator()->getSuccessor(0);
    //入口基本块是多分支情况时，需要
    if ((firstBr != NULL && firstBr->isConditional()) || oldEntry->getTerminator()->getNumSuccessors() > 2)
    { // Split the first basic block
        BasicBlock::iterator iter = oldEntry->end();// 指向末尾之后
        iter--;// 回退1步 → 现在指向terminator
        if (oldEntry->size() > 1)
        {
            iter--;// 再回退1步 → 指向倒数第二条指令
        }
        //选择在倒数第一或二条指令处作为分割点，因为这两条指令都是跳转指令，分割后入口基本块就变成普通基本块（入度出度均为1的基本块）
        BasicBlock *splited = oldEntry->splitBasicBlock(iter, Twine("FirstBB"));
        firstbb = splited; //分割出的新基本块，是入口基本块的下一个基本块
        origBB.insert(origBB.begin(), splited);  
    }

    std::vector<Node *> all_node;         //为每个基本块创建一个 Node

    std::vector<unsigned int> rand_list;
    for (std::vector<BasicBlock *>::iterator i = origBB.begin(); i != origBB.end(); i++)
    {
        unsigned int num = getUniqueNumber(&rand_list);  //为每个节点分配一个唯一的随机数
        rand_list.push_back(num);
        Node *tmp = newNode(num);
        all_node.push_back(tmp);
        tmp->data = *i;
    }

    //为该函数构建控制流图，方便后续重构
    for (std::vector<Node *>::iterator i = all_node.begin(); i != all_node.end(); i++)
    {
        Node *tmp = *i;
        BasicBlock *bb = tmp->data;

        if (bb->getTerminator()->getNumSuccessors() == 2)// 条件分支 - 有两个后继
        {
            BasicBlock *bb1 = bb->getTerminator()->getSuccessor(0);
            BasicBlock *bb2 = bb->getTerminator()->getSuccessor(1);
            Node *n1 = findBBNode(bb1, &all_node);
            Node *n2 = findBBNode(bb2, &all_node);
            tmp->bb1 = n1;
            tmp->bb2 = n2;
        }
        else if (bb->getTerminator()->getNumSuccessors() == 1)// 无条件分支 - 有一个后继
        {
            BasicBlock *bb1 = bb->getTerminator()->getSuccessor(0);
            Node *n = findBBNode(bb1, &all_node);
            tmp->bb1 = n;
        }
        else
        {
            continue;
        }
    }

    //将控制流图转换为线性的虚拟机指令数组
    Node *start = findBBNode(firstbb, &all_node); //找到函数真正的入口节点
    Node *fake = newNode(0x7FFFFFFF);   //创建虚拟根节点，也就是虚拟机分发器；标记值0x7FFFFFFF最大整数，不会与真实块ID冲突
    std::vector<VMInst *> all_inst;
    std::map<Node *, unsigned int> inst_map;
    fake->bb1 = start;              // 虚拟节点指向真正入口
    gen_inst(&all_inst, &inst_map, fake);      //生成VM指令
    // dump_inst(&all_inst);           // 打印指令序列用于调试
    //将VM指令存储到常量数组中
    std::vector<Constant *> opcodes;
    for (std::vector<VMInst *>::iterator i = all_inst.begin(); i != all_inst.end(); i++)
    {
        VMInst *inst = *i;
        opcodes.push_back(ConstantInt::get(Type::getInt32Ty(f->getContext()), inst->type));
        opcodes.push_back(ConstantInt::get(Type::getInt32Ty(f->getContext()), inst->op1));
        opcodes.push_back(ConstantInt::get(Type::getInt32Ty(f->getContext()), inst->op2));
    }
    ArrayType *AT = ArrayType::get(Type::getInt32Ty(f->getContext()), opcodes.size());
    Constant *opcode_array = ConstantArray::get(AT, ArrayRef<Constant *>(opcodes));
    GlobalVariable *oparr_var = new GlobalVariable(*(f->getParent()), AT, false, GlobalValue::LinkageTypes::PrivateLinkage, opcode_array, "opcodes");
    
    // Remove the jump at the end of the first basic block
    oldEntry->getTerminator()->eraseFromParent();
    // 创建VM变量
    AllocaInst *vm_pc = new AllocaInst(Type::getInt32Ty(f->getContext()), 0, Twine("VMpc"), oldEntry);
    ConstantInt *init_pc = ConstantInt::get(Type::getInt32Ty(f->getContext()), 0);
    new StoreInst(init_pc, vm_pc, oldEntry);
    AllocaInst *vm_flag = new AllocaInst(Type::getInt32Ty(f->getContext()), 0, Twine("VMJmpFlag"), oldEntry);
    BasicBlock *vm_entry = BasicBlock::Create(f->getContext(), "VMEntry", f, firstbb);  // 创建调度器块

    BranchInst::Create(vm_entry, oldEntry);
    IRBuilder<> IRB(vm_entry);
    Value *zero = ConstantInt::get(Type::getInt32Ty(f->getContext()), 0);

    // Fixed: Use proper types for LLVM 17 with opaque pointers
    Type *i32Ty = Type::getInt32Ty(f->getContext());
    
    Value *pc_load = IRB.CreateLoad(i32Ty, vm_pc);
    Value *op1_offset = IRB.CreateAdd(pc_load, ConstantInt::get(i32Ty, 1));
    Value *op2_offset = IRB.CreateAdd(pc_load, ConstantInt::get(i32Ty, 2));

    Value *optype_gep = IRB.CreateGEP(AT, oparr_var, {zero, pc_load});
    Value *optype = IRB.CreateLoad(i32Ty, optype_gep);
    
    Value *op1_gep = IRB.CreateGEP(AT, oparr_var, {zero, op1_offset});
    Value *op1 = IRB.CreateLoad(i32Ty, op1_gep);

    Value *op2_gep = IRB.CreateGEP(AT, oparr_var, {zero, op2_offset});
    Value *op2 = IRB.CreateLoad(i32Ty, op2_gep);

    IRB.CreateStore(IRB.CreateAdd(pc_load, ConstantInt::get(i32Ty, 3)), vm_pc);
    
    BasicBlock *run_block = BasicBlock::Create(f->getContext(), "RunBlock", f, firstbb);
    BasicBlock *jmp_boring = BasicBlock::Create(f->getContext(), "JmpBoring", f, firstbb);
    BasicBlock *jmp_select = BasicBlock::Create(f->getContext(), "JmpSelect", f, firstbb);
    BasicBlock *defaultCase = BasicBlock::Create(f->getContext(), "Default", f, firstbb);
    BranchInst::Create(vm_entry, defaultCase);
    // 基于指令类型进行调度
    SwitchInst *switch1 = IRB.CreateSwitch(optype, defaultCase, 0);
    switch1->addCase(ConstantInt::get(Type::getInt32Ty(f->getContext()), RUN_BLOCK), run_block);
    switch1->addCase(ConstantInt::get(Type::getInt32Ty(f->getContext()), JMP_BORING), jmp_boring);
    switch1->addCase(ConstantInt::get(Type::getInt32Ty(f->getContext()), JMP_SELECT), jmp_select);

    // create run_block's basicblock
    // the first choice
    IRB.SetInsertPoint(run_block);
    /*
        std::vector<Constant *> bb_addrs;
        for(std::vector<BasicBlock *>::iterator b=origBB.begin();b!=origBB.end();b++){
            BasicBlock *block=*b;
            bb_addrs.push_back(BlockAddress::get(block));
        }
        ArrayType *AT_=ArrayType::get(Type::getInt8PtrTy(f->getContext()),bb_addrs.size());
        Constant *addr_array=ConstantArray::get(AT_,ArrayRef<Constant*>(bb_addrs));
        GlobalVariable *address_arr_var=new GlobalVariable(*(f->getParent()),AT_,false,GlobalValue::LinkageTypes::PrivateLinkage,addr_array,"address_table");
        Value *load=IRB.CreateLoad(IRB.CreateGEP(address_arr_var,{zero,op1}),"address");
        IndirectBrInst *indirBr=IndirectBrInst::Create(load,bb_addrs.size(),run_block);
        for(std::vector<BasicBlock *>::iterator b=origBB.begin();b!=origBB.end();b++)
        {
            BasicBlock *block=*b;
            indirBr->addDestination(block);
        }
    */
    // the seconde choice
    SwitchInst *switch2 = IRB.CreateSwitch(op1, defaultCase, 0);
    for (std::vector<BasicBlock *>::iterator b = origBB.begin(); b != origBB.end(); b++)
    {
        BasicBlock *block = *b;
        block->moveBefore(defaultCase);
        Node *t = findBBNode(block, &all_node);
        ConstantInt *numCase = cast<ConstantInt>(ConstantInt::get(switch2->getCondition()->getType(), t->value));
        switch2->addCase(numCase, block);
    }
    //切断原始基本块之间的直接跳转关系，将所有控制流重定向到VM调度器
    for (std::vector<BasicBlock *>::iterator b = origBB.begin(); b != origBB.end(); b++)
    { // Handle successors
        BasicBlock *block = *b;
        if (block->getTerminator()->getNumSuccessors() == 1)
        {
            BasicBlock *succ = block->getTerminator()->getSuccessor(0);//获取后继块
            block->getTerminator()->eraseFromParent();//删除原始终结指令
            BranchInst::Create(defaultCase, block); // 创建无条件分支指令,返回调度器
        }
        else if (block->getTerminator()->getNumSuccessors() == 2)
        {
            BranchInst *oldBr = cast<BranchInst>(block->getTerminator());
            //使用SelectInst将布尔条件转换为1（真）或0（假）
            SelectInst *select = SelectInst::Create(oldBr->getCondition(), ConstantInt::get(Type::getInt32Ty(f->getContext()), 1), ConstantInt::get(Type::getInt32Ty(f->getContext()), 0), "", block->getTerminator());
            new StoreInst(select, vm_flag, block->getTerminator()); //将select的值保存到vm_flag中
            block->getTerminator()->eraseFromParent();//删除原始终结指令
            BranchInst::Create(defaultCase, block); // 创建无条件分支指令,返回调度器
        }
        else
        {
            continue;
        }
    }
    IRB.SetInsertPoint(jmp_boring);//设置创建的LLVM IR指令将被插入到jmp_boring块中
    IRB.CreateStore(op1, vm_pc);//在jmp_boring块末尾插入store指令，将op1（目标地址）存储到vm_pc
    IRB.CreateBr(vm_entry);        // 在jmp_boring块末尾插入branch指令，跳转回vm_entry块

    IRB.SetInsertPoint(jmp_select);//设置创建的LLVM IR指令将被插入到jmp_select块中
    // 创建新基本块
    BasicBlock *select_true = BasicBlock::Create(f->getContext(), "JmpSelectTrue", f, firstbb);
    BasicBlock *select_false = BasicBlock::Create(f->getContext(), "JmpSelectFalse", f, firstbb);
    Value *flag_load = IRB.CreateLoad(i32Ty, vm_flag);//在jmp_select块末尾插入load指令，将vm_flag加载到i32Ty
    IRB.CreateCondBr(IRB.CreateICmpEQ(flag_load, ConstantInt::get(Type::getInt32Ty(f->getContext()), 1)), select_true, select_false);
    //切换到select_true块中
    IRB.SetInsertPoint(select_true);
    IRB.CreateStore(op1, vm_pc);
    IRB.CreateBr(vm_entry);
    //切换到select_false块中
    IRB.SetInsertPoint(select_false);
    IRB.CreateStore(op2, vm_pc);
    IRB.CreateBr(vm_entry);

    //当控制流被平坦化后，原始的SSA（Static Single Assignment）约束被破坏，需要通过**寄存器降级（Register Demotion）**来解决
    //（也就是通过将值存储到栈上，消除SSA依赖）。
    std::vector<PHINode *> tmpPhi; // 存储需要处理的PHI节点
    std::vector<Instruction *> tmpReg;// 存储需要降级的寄存器
    BasicBlock *bbEntry = &*f->begin();// 获取函数入口块

    do
    {
        tmpPhi.clear();
        tmpReg.clear();
        for (Function::iterator i = f->begin(); i != f->end(); i++)
        {
            for (BasicBlock::iterator j = i->begin(); j != i->end(); j++)
            {
                if (isa<PHINode>(j))
                {
                    PHINode *phi = cast<PHINode>(j);
                    tmpPhi.push_back(phi);
                    continue;
                }
                if (!(isa<AllocaInst>(j) && j->getParent() == bbEntry) && (valueEscapes(&*j) || j->isUsedOutsideOfBlock(&*i)))
                {
                    tmpReg.push_back(&*j);
                    continue;
                }
            }
        }
        for (unsigned int i = 0; i < tmpReg.size(); i++)
        {
            DemoteRegToStack(*tmpReg.at(i), f->begin()->getTerminator());
        }
        for (unsigned int i = 0; i < tmpPhi.size(); i++)
        {
            DemotePHIToStack(tmpPhi.at(i), nullptr);
        }
    } while (tmpReg.size() != 0 || tmpPhi.size() != 0);
}

VMFlattenPass *llvm::createVMFlatten(bool flag)
{
    return new VMFlattenPass(flag);
}