import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractComputabilityCanonicalLaneLean.TuringMachinePackage

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure ComputableFunctionPackage (T : TuringMachinePackage) where
  functionType : Type
  turingMachine : T
  haltsOnInput : (T.states → T.alphabet → Bool) → Prop
  computesFunction : Prop
  universalMachine : Prop

structure ComputableFunctionEvidence (T : TuringMachinePackage) (F : ComputableFunctionPackage T) where
  haltsOnInputClosed : F.haltsOnInput (λ s a => True)  -- placeholder
  computesFunctionClosed : F.computesFunction
  universalMachineClosed : F.universalMachine

def ComputableFunctionClosed (T : TuringMachinePackage) (F : ComputableFunctionPackage T) : Prop :=
  F.computesFunction ∧ F.universalMachine

theorem computable_function_closed_from_evidence (T : TuringMachinePackage) (F : ComputableFunctionPackage T)
    (E : ComputableFunctionEvidence T F) : ComputableFunctionClosed T F :=
  And.intro E.computesFunctionClosed E.universalMachineClosed

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse