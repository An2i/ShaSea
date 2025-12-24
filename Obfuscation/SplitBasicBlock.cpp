#include "Utils.h"
#include "CryptoUtils.h"
#include "SplitBasicBlock.h"
// namespace
using namespace llvm;
using std::vector;

#define DEBUG_TYPE "split" // 调试标识
// Stats
STATISTIC(Split, "Basicblock splitted"); // 宏定义

// 可选的参数，指定一个基本块会被分裂成几个基本块，默认值为 3
static cl::opt<int> SplitNum("split_num", cl::init(2), cl::desc("Split <split_num> time(s) each BB"));


PreservedAnalyses SplitBasicBlockPass::run(Function &F)
{
    Function *tmp = &F; // 传入的Function

    split(tmp); // 分割流程
    ++Split;    // 计次
    return PreservedAnalyses::none();
}

/**
 * @brief 对传入的基本块做分割
 *
 * @param BB
 */
void SplitBasicBlockPass::split(Function *f)
{
    std::vector<BasicBlock *> origBB;
    // 保存所有基本块 防止分割的同时迭代新的基本块
    for (Function::iterator I = f->begin(), IE = f->end(); I != IE; ++I)
    {
        origBB.push_back(&*I);
    }
    // 遍历函数的全部基本块
    for (std::vector<BasicBlock *>::iterator I = origBB.begin(), IE = origBB.end(); I != IE; ++I)
    {
        BasicBlock *curr = *I;

        int splitN = SplitNum;
        // 无需分割只有一条指令的基本块
        // 不可分割含有PHI指令基本块
        if (curr->size() < 2 || containsPHI(curr))
        {
            continue;
        }
        // 检查splitN和基本块大小 如果传入的分割块数甚至大于等于基本块自身大小 则修改分割数为基本块大小减一
        if ((size_t)splitN >= curr->size())
        {
            splitN = curr->size() - 1;
        }
        // Generate splits point
        std::vector<int> test;
        for (unsigned i = 1; i < curr->size(); ++i)
        {
            test.push_back(i);
        }
        // 随机打乱指令序列
        if (test.size() != 1)
        {
            shuffle(test);
            std::sort(test.begin(), test.begin() + splitN);
        }
        // 随机打乱后选择前splitN个和剩余部分，在两者之间插入无条件跳转指令，达到分割基本块的作用
        BasicBlock::iterator it = curr->begin();
        BasicBlock *toSplit = curr;
        int last = 0;
        for (int i = 0; i < splitN; ++i)
        {
            if (toSplit->size() < 2)//无需分割只有一条指令的基本块
            {
                continue;
            }
            for (int j = 0; j < test[i] - last; ++j)
            {
                ++it;
            }
            last = test[i];
            toSplit = toSplit->splitBasicBlock(it, toSplit->getName() + ".split");
        }
        ++Split;
    }
}

/**
 * @brief 判断基本块是否包含PHI指令
 *
 * @param BB
 * @return true
 * @return false
 */
bool SplitBasicBlockPass::containsPHI(BasicBlock *BB)
{
    for (Instruction &I : *BB)
    {
        if (isa<PHINode>(&I))
        {
            return true;
        }
    }
    return false;
}

/**
 * @brief 随机打乱指令序列
 *
 * @param vec
 */
void SplitBasicBlockPass::shuffle(std::vector<int> &vec)
{
    int n = vec.size();
    for (int i = n - 1; i > 0; --i)
    {
        std::swap(vec[i], vec[cryptoutils->get_uint32_t() % (i + 1)]);
    }
}

/**
 * @brief 便于调用基本块分割
 *
 * @param flag
 * @return FunctionPass*
 */
SplitBasicBlockPass *llvm::createSplitBasicBlock(bool flag)
{
    return new SplitBasicBlockPass(flag);
}