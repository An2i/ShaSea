#include "LegacyLowerSwitch.h"
#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/Compiler.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include <algorithm>
#include <cassert>
#include <cstdint>
#include <iterator>
#include <limits>
#include <vector>

#define DEBUG_TYPE "lower-switch"

namespace
{

    struct IntRange
    {
        int64_t Low, High;
    };

} // end anonymous namespace

// Return true iff R is covered by Ranges.
static bool IsInRanges(const IntRange &R, const std::vector<IntRange> &Ranges)
{
    // Note: Ranges must be sorted, non-overlapping and non-adjacent.

    // Find the first range whose High field is >= R.High,
    // then check if the Low field is <= R.Low. If so, we
    // have a Range that covers R.
    auto I = std::lower_bound(
        Ranges.begin(), Ranges.end(), R,
        [](const IntRange &A, const IntRange &B)
        { return A.High < B.High; });
    return I != Ranges.end() && I->Low <= R.Low;
}

namespace llvm
{
    /// Replace all SwitchInst instructions with chained branch instructions.
    class LowerSwitch : public FunctionPass
    {
    public:
        // Pass identification, replacement for typeid
        static char ID;

        LowerSwitch() : FunctionPass(ID)
        {
            // initializeLowerSwitchPass(*PassRegistry::getPassRegistry());
        }

        bool runOnFunction(Function &F) override;

        struct CaseRange
        {
            ConstantInt *Low;
            ConstantInt *High;
            BasicBlock *BB;

            CaseRange(ConstantInt *low, ConstantInt *high, BasicBlock *bb)
                : Low(low), High(high), BB(bb) {}
        };

        using CaseVector = std::vector<CaseRange>;
        using CaseItr = std::vector<CaseRange>::iterator;

    private:
        void processSwitchInst(SwitchInst *SI,
                               SmallPtrSetImpl<BasicBlock *> &DeleteList);

        BasicBlock *switchConvert(CaseItr Begin, CaseItr End, ConstantInt *LowerBound,
                                  ConstantInt *UpperBound, Value *Val,
                                  BasicBlock *Predecessor, BasicBlock *OrigBlock,
                                  BasicBlock *Default,
                                  const std::vector<IntRange> &UnreachableRanges);
        BasicBlock *newLeafBlock(CaseRange &Leaf, Value *Val, BasicBlock *OrigBlock,
                                 BasicBlock *Default);
        unsigned Clusterify(CaseVector &Cases, SwitchInst *SI);
    };
    FunctionPass *createLegacyLowerSwitchPass();
    struct CaseCmp
    {
        bool operator()(const LowerSwitch::CaseRange &C1,
                        const LowerSwitch::CaseRange &C2)
        {
            const ConstantInt *CI1 = cast<const ConstantInt>(C1.Low);
            const ConstantInt *CI2 = cast<const ConstantInt>(C2.High);
            return CI1->getValue().slt(CI2->getValue());
        }
    };
}