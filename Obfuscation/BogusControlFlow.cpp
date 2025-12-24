#include "BogusControlFlow.h"

using namespace llvm;

// 命令行选项定义
static cl::opt<int> ObfTimes("bcf_loop", cl::desc("Choose how many time the -bcf pass loop on a function"), cl::value_desc("number of times"), cl::init(1), cl::Optional);
static cl::opt<int> ObfProbRate("bcf_prob", cl::desc("Choose the probability [%] each basic blocks will be obfuscated by the -bcf pass"), cl::value_desc("probability rate"), cl::init(70), cl::Optional);

// 统计变量定义
static int defaultObfRate = 70;
static int defaultObfTime = 1;
static int NumFunction = 0;
static int NumTimesOnFunctions = 0;
static int NumModifiedBasicBlocks = 0;
static int NumAddedBasicBlocks = 0;
static int FinalNumBasicBlocks = 0;
static int InitNumBasicBlocks = 0;

// 简化的虚假基本块创建函数

BasicBlock *createAlteredBasicBlock(BasicBlock *basicBlock, const Twine &Name = "gen", Function *F = 0)
{
    ValueToValueMapTy VMap;
    // basicBlock->dump();
    BasicBlock *alteredBB = llvm::CloneBasicBlock(basicBlock, VMap, Name, F);

    // Remap operands.
    BasicBlock::iterator ji = basicBlock->begin();
    for (BasicBlock::iterator i = alteredBB->begin(), e = alteredBB->end();
         i != e; ++i)
    {
        // Loop over the operands of the instruction
        for (User::op_iterator opi = i->op_begin(), ope = i->op_end(); opi != ope;
             ++opi)
        {
            // get the value for the operand
            Value *v = MapValue(*opi, VMap, RF_None, 0);
            if (v != 0)
            {
                *opi = v;
            }
        }

        // Remap phi nodes' incoming blocks.
        if (PHINode *pn = dyn_cast<PHINode>(i))
        {
            for (unsigned j = 0, e = pn->getNumIncomingValues(); j != e; ++j)
            {
                Value *v = MapValue(pn->getIncomingBlock(j), VMap, RF_None, 0);
                if (v != 0)
                {
                    pn->setIncomingBlock(j, cast<BasicBlock>(v));
                }
            }
        }

        // Remap attached metadata.
        SmallVector<std::pair<unsigned, MDNode *>, 4> MDs;
        i->getAllMetadata(MDs);

        // important for compiling with DWARF, using option -g.
        i->setDebugLoc(ji->getDebugLoc());
        ji++;

    } // The instructions' informations are now all correct

    for (auto I = alteredBB->begin(), E = alteredBB->end(); I != E;)
    {
        Instruction *Instr = &*I++;
        if (isa<DbgInfoIntrinsic>(Instr))
            Instr->eraseFromParent();
    }


    // add random instruction in the middle of the bloc. This part can be
    // improve
    for (BasicBlock::iterator i = alteredBB->begin(), e = alteredBB->end();
         i != e; ++i)
    {
        // in the case we find binary operator, we modify slightly this part by
        // randomly insert some instructions
        if (i->isBinaryOp())
        { // binary instructions
            unsigned opcode = i->getOpcode();
            Instruction *op, *op1 = NULL;
            Twine *var = new Twine("_");
            // treat differently float or int
            // Binary int
            if (opcode == Instruction::Add || opcode == Instruction::Sub ||
                opcode == Instruction::Mul || opcode == Instruction::UDiv ||
                opcode == Instruction::SDiv || opcode == Instruction::URem ||
                opcode == Instruction::SRem || opcode == Instruction::Shl ||
                opcode == Instruction::LShr || opcode == Instruction::AShr ||
                opcode == Instruction::And || opcode == Instruction::Or ||
                opcode == Instruction::Xor)
            {
                for (int random = (int)llvm::cryptoutils->get_range(10); random < 10;
                     ++random)
                {
                    switch (llvm::cryptoutils->get_range(4))
                    {       // to improve
                    case 0: // do nothing
                        break;
                    case 1:
                        op = BinaryOperator::CreateNeg(i->getOperand(0), *var, &*i);
                        op1 = BinaryOperator::Create(Instruction::Add, op, i->getOperand(1),
                                                     "gen", &*i);
                        break;
                    case 2:
                        op1 = BinaryOperator::Create(Instruction::Sub, i->getOperand(0),
                                                     i->getOperand(1), *var, &*i);
                        op = BinaryOperator::Create(Instruction::Mul, op1, i->getOperand(1),
                                                    "gen", &*i);
                        break;
                    case 3:
                        op = BinaryOperator::Create(Instruction::Shl, i->getOperand(0),
                                                    i->getOperand(1), *var, &*i);
                        break;
                    }
                }
            }
            // Binary float
            if (opcode == Instruction::FAdd || opcode == Instruction::FSub ||
                opcode == Instruction::FMul || opcode == Instruction::FDiv ||
                opcode == Instruction::FRem)
            {
                for (int random = (int)llvm::cryptoutils->get_range(10); random < 10;
                     ++random)
                {
                    switch (llvm::cryptoutils->get_range(3))
                    {       // can be improved
                    case 0: // do nothing
                        break;
                    case 1:
                        op = UnaryOperator::CreateFNeg(i->getOperand(0), *var, &*i);
                        op1 = BinaryOperator::Create(Instruction::FAdd, op,
                                                     i->getOperand(1), "gen", &*i);
                        break;
                    case 2:
                        op = BinaryOperator::Create(Instruction::FSub, i->getOperand(0),
                                                    i->getOperand(1), *var, &*i);
                        op1 = BinaryOperator::Create(Instruction::FMul, op,
                                                     i->getOperand(1), "gen", &*i);
                        break;
                    }
                }
            }
            if (opcode == Instruction::ICmp)
            { // Condition (with int)
                ICmpInst *currentI = (ICmpInst *)(&i);
                switch (llvm::cryptoutils->get_range(3))
                {       // must be improved
                case 0: // do nothing
                    break;
                case 1:
                    currentI->swapOperands();
                    break;
                case 2: // randomly change the predicate
                    switch (llvm::cryptoutils->get_range(10))
                    {
                    case 0:
                        currentI->setPredicate(ICmpInst::ICMP_EQ);
                        break; // equal
                    case 1:
                        currentI->setPredicate(ICmpInst::ICMP_NE);
                        break; // not equal
                    case 2:
                        currentI->setPredicate(ICmpInst::ICMP_UGT);
                        break; // unsigned greater than
                    case 3:
                        currentI->setPredicate(ICmpInst::ICMP_UGE);
                        break; // unsigned greater or equal
                    case 4:
                        currentI->setPredicate(ICmpInst::ICMP_ULT);
                        break; // unsigned less than
                    case 5:
                        currentI->setPredicate(ICmpInst::ICMP_ULE);
                        break; // unsigned less or equal
                    case 6:
                        currentI->setPredicate(ICmpInst::ICMP_SGT);
                        break; // signed greater than
                    case 7:
                        currentI->setPredicate(ICmpInst::ICMP_SGE);
                        break; // signed greater or equal
                    case 8:
                        currentI->setPredicate(ICmpInst::ICMP_SLT);
                        break; // signed less than
                    case 9:
                        currentI->setPredicate(ICmpInst::ICMP_SLE);
                        break; // signed less or equal
                    }
                    break;
                }
            }
            if (opcode == Instruction::FCmp)
            { // Conditions (with float)
                FCmpInst *currentI = (FCmpInst *)(&i);
                switch (llvm::cryptoutils->get_range(3))
                {       // must be improved
                case 0: // do nothing
                    break;
                case 1:
                    currentI->swapOperands();
                    break;
                case 2: // randomly change the predicate
                    switch (llvm::cryptoutils->get_range(10))
                    {
                    case 0:
                        currentI->setPredicate(FCmpInst::FCMP_OEQ);
                        break; // ordered and equal
                    case 1:
                        currentI->setPredicate(FCmpInst::FCMP_ONE);
                        break; // ordered and operands are unequal
                    case 2:
                        currentI->setPredicate(FCmpInst::FCMP_UGT);
                        break; // unordered or greater than
                    case 3:
                        currentI->setPredicate(FCmpInst::FCMP_UGE);
                        break; // unordered, or greater than, or equal
                    case 4:
                        currentI->setPredicate(FCmpInst::FCMP_ULT);
                        break; // unordered or less than
                    case 5:
                        currentI->setPredicate(FCmpInst::FCMP_ULE);
                        break; // unordered, or less than, or equal
                    case 6:
                        currentI->setPredicate(FCmpInst::FCMP_OGT);
                        break; // ordered and greater than
                    case 7:
                        currentI->setPredicate(FCmpInst::FCMP_OGE);
                        break; // ordered and greater than or equal
                    case 8:
                        currentI->setPredicate(FCmpInst::FCMP_OLT);
                        break; // ordered and less than
                    case 9:
                        currentI->setPredicate(FCmpInst::FCMP_OLE);
                        break; // ordered or less than, or equal
                    }
                    break;
                }
            }
        }
    }
    return alteredBB;
}

// 实现 run 方法
// PreservedAnalyses BogusControlFlowPass::run(Function &F, FunctionAnalysisManager &AM)
// {
//     if (ObfTimes <= 0)
//     {
//         return PreservedAnalyses::all();
//     }
//     // Check if the number of applications is correct
//     if (!((ObfProbRate > 0) && (ObfProbRate <= 100)))
//     {
//         return PreservedAnalyses::all();
//     }
//     bogus(F);
//     doF(*F.getParent(), F);
//     return PreservedAnalyses::none();
// }

PreservedAnalyses BogusControlFlowPass::run(Function &F)
{
    if (ObfTimes <= 0)
    {
        return PreservedAnalyses::all();
    }
    // Check if the number of applications is correct
    if (!((ObfProbRate > 0) && (ObfProbRate <= 100)))
    {
        return PreservedAnalyses::all();
    }
    bogus(F);
    doF(*F.getParent(), F);
    return PreservedAnalyses::none();
}

void BogusControlFlowPass::bogus(Function &F)
{
    // 统计和调试信息
    ++NumFunction;
    int NumBasicBlocks = 0;
    bool firstTime = true; // First time we do the loop in this function
    bool hasBeenModified = false;

    if (ObfProbRate < 0 || ObfProbRate > 100)
    {
        ObfProbRate = defaultObfRate;
    }

    if (ObfTimes <= 0)
    {
        ObfTimes = defaultObfTime;
    }
    NumTimesOnFunctions = ObfTimes;
    int NumObfTimes = ObfTimes;

    // Real begining of the pass
    // Loop for the number of time we run the pass on the function
    do
    {
        // Put all the function's block in a list
        std::list<BasicBlock *> basicBlocks;
        for (Function::iterator i = F.begin(); i != F.end(); ++i)
        {
            basicBlocks.push_back(&*i);
        }

        while (!basicBlocks.empty())
        {
            NumBasicBlocks++;
            // Basic Blocks' selection
            if ((int)llvm::cryptoutils->get_range(100) <= ObfProbRate)
            {
                DEBUG_WITH_TYPE("opt", errs() << "bcf: Block " << NumBasicBlocks
                                              << " selected. \n");
                hasBeenModified = true;
                ++NumModifiedBasicBlocks;
                NumAddedBasicBlocks += 3;
                FinalNumBasicBlocks += 3;
                // Add bogus flow to the given Basic Block (see description)
                BasicBlock *basicBlock = basicBlocks.front();
                addBogusFlow(basicBlock, F);
            }

            // remove the block from the list
            basicBlocks.pop_front();

            if (firstTime)
            { // first time we iterate on this function
                ++InitNumBasicBlocks;
                ++FinalNumBasicBlocks;
            }
        } // end of while(!basicBlocks.empty())
        firstTime = false;
    } while (--NumObfTimes > 0);
}

void BogusControlFlowPass::addBogusFlow(BasicBlock *basicBlock, Function &F)
{
    BasicBlock::iterator i1 = basicBlock->begin();
    for (auto &I : *basicBlock)
    {
        if (!isa<PHINode>(&I) && !I.isDebugOrPseudoInst() && !I.isLifetimeStartOrEnd())
        {
            i1 = I.getIterator();
            break;
        }
    }
    bool hasEHPad = false;
    for (auto &I : *basicBlock)
    {
        if (!isa<PHINode>(&I))
        {
            if (I.isEHPad())
            {
                hasEHPad = true;
            }
            break;
        }
    }

    if (hasEHPad)
        return;

    Twine *var = new Twine("originalBB");
    BasicBlock *originalBB = basicBlock->splitBasicBlock(i1, *var);

    Twine *var3 = new Twine("alteredBB");
    BasicBlock *alteredBB = createAlteredBasicBlock(originalBB, *var3, &F);

    alteredBB->getTerminator()->eraseFromParent();
    basicBlock->getTerminator()->eraseFromParent();

    Value *LHS = ConstantFP::get(Type::getFloatTy(F.getContext()), 1.0);
    Value *RHS = ConstantFP::get(Type::getFloatTy(F.getContext()), 1.0);

    // Twine *var4 = new Twine("condition");
    // FCmpInst *condition = new FCmpInst(InsertPosition::InsertPosition(basicBlock), FCmpInst::FCMP_OEQ, LHS, RHS, "condition");
    Value *condition = ConstantInt::getTrue(F.getContext());

    BranchInst::Create(originalBB, alteredBB, (Value *)condition, basicBlock);

    BranchInst::Create(originalBB, alteredBB);

    BasicBlock::iterator i = originalBB->end();

    Twine *var5 = new Twine("originalBBpart2");
    BasicBlock *originalBBpart2 = originalBB->splitBasicBlock(--i, *var5);

    originalBB->getTerminator()->eraseFromParent();

    // Twine *var6 = new Twine("condition2");
    // FCmpInst *condition2 = new FCmpInst(InsertPosition::InsertPosition(originalBB), FCmpInst::FCMP_OEQ, LHS, RHS, *var6);
    Value *condition2 = ConstantInt::getTrue(F.getContext());
    BranchInst::Create(originalBBpart2, alteredBB, (Value *)condition2,
                       originalBB);
}

bool BogusControlFlowPass::doF(Module &M, Function &F)
{
    Value *x1 = ConstantInt::get(Type::getInt32Ty(M.getContext()), 0, false);
    Value *y1 = ConstantInt::get(Type::getInt32Ty(M.getContext()), 0, false);

    GlobalVariable *x = new GlobalVariable(M, Type::getInt32Ty(M.getContext()), false, GlobalValue::CommonLinkage, (Constant *)x1, "x");
    GlobalVariable *y = new GlobalVariable(M, Type::getInt32Ty(M.getContext()), false, GlobalValue::CommonLinkage, (Constant *)y1, "y");

    std::vector<Instruction *> toEdit, toDelete;
    BinaryOperator *op, *op1 = NULL;
    LoadInst *opX, *opY;
    ICmpInst *condition, *condition2;

    for (Function::iterator fi = F.begin(), fe = F.end(); fi != fe; ++fi)
    {
        fi->setName("");
        Instruction *tbb = fi->getTerminator();
        if (tbb->getOpcode() == Instruction::Br)
        {
            BranchInst *br = (BranchInst *)(tbb);
            if (br->isConditional())
            {
                FCmpInst *cond = (FCmpInst *)br->getCondition();
                unsigned opcode = cond->getOpcode();
                if (opcode == Instruction::FCmp)
                {
                    if (cond->getPredicate() == FCmpInst::FCMP_TRUE)
                    {
                        DEBUG_WITH_TYPE("gen", errs()
                                                   << "bcf: an always true predicate !\n");
                        toDelete.push_back(cond); // The condition
                        toEdit.push_back(tbb);    // The branch using the condition
                    }
                }
            }
        }

        for (BasicBlock::iterator bi = fi->begin(), be = fi->end(); bi != be; ++bi)
        {
            bi->setName(""); // 移除有意义的变量名，让逆向工程更困难
        }
    }

    for (std::vector<Instruction *>::iterator i = toEdit.begin();
         i != toEdit.end(); ++i)
    {
        // if y < 10 || x*(x+1) % 2 == 0
        opX = new LoadInst(Type::getInt32Ty(M.getContext()), (Value *)x, "", (*i));
        opY = new LoadInst(Type::getInt32Ty(M.getContext()), (Value *)y, "", (*i));

        op = BinaryOperator::Create(
            Instruction::Sub, (Value *)opX,
            ConstantInt::get(Type::getInt32Ty(M.getContext()), 1, false), "", (*i));
        op1 = BinaryOperator::Create(Instruction::Mul, (Value *)opX, op, "", (*i));
        op = BinaryOperator::Create(
            Instruction::URem, op1,
            ConstantInt::get(Type::getInt32Ty(M.getContext()), 2, false), "", (*i));
        condition = new ICmpInst(
            (*i), ICmpInst::ICMP_EQ, op,
            ConstantInt::get(Type::getInt32Ty(M.getContext()), 0, false));
        condition2 = new ICmpInst(
            (*i), ICmpInst::ICMP_SLT, opY,
            ConstantInt::get(Type::getInt32Ty(M.getContext()), 10, false));
        op1 = BinaryOperator::Create(Instruction::Or, (Value *)condition,
                                     (Value *)condition2, "", (*i));

        BranchInst::Create(((BranchInst *)*i)->getSuccessor(0),
                           ((BranchInst *)*i)->getSuccessor(1), (Value *)op1,
                           ((BranchInst *)*i)->getParent());

        (*i)->eraseFromParent(); // erase the branch
    }

    for (std::vector<Instruction *>::iterator i = toDelete.begin();
         i != toDelete.end(); ++i)
    {
        (*i)->eraseFromParent();
    }
    return true;
}

BogusControlFlowPass *llvm::createBogusControlFlow(bool flag)
{
    return new BogusControlFlowPass(flag);
}