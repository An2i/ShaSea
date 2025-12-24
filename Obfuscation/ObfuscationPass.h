#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Instruction.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/GlobalValue.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Transforms/IPO.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/NoFolder.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Transforms/Utils/Local.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"

using namespace std;
using namespace llvm;


namespace llvm
{
    class ObfuscationPass: public PassInfoMixin<ObfuscationPass>
    {
    public:
        ObfuscationPass() {}

        PreservedAnalyses run(Module &M, ModuleAnalysisManager &AM)
        {
            BogusControlFlowPass p1;
            SubstitutionPass p2;
            FlatteningPass p3;
            IndirectCallPass p4;
            SplitBasicBlockPass p5;
            VMFlattenPass p6;

            for (Function &F : M)
            {
                p1.run(F);
                p2.run(F);
                p3.run(F);
                p4.run(F);
                p5.run(F);
                p6.run(F);
            }
            return PreservedAnalyses::none();
        }
        static bool isRequired() { return true; }
    };
}