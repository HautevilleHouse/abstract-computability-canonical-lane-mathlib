import AbstractComputabilityCanonicalLaneLean.AbstractComputabilityObjects

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure TuringMachine where
  states : ℕ
  alphabet : Type
  transition : (states × alphabet) → (states × alphabet × Unit)
  haltingState : states

structure TuringMachineEvidence (M : TuringMachine) where
  transitionFunctionComputable : Prop
  haltingConditionDecidable : Prop
  stateSpaceFinite : Prop

def TuringMachineClosed (M : TuringMachine) : Prop :=
  M.states > 0 ∧ TuringMachineEvidence M

theorem turing_machine_closed_from_evidence (M : TuringMachine) (E : TuringMachineEvidence M) :
    TuringMachineClosed M := by
  exact And.intro (by decide) E

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse