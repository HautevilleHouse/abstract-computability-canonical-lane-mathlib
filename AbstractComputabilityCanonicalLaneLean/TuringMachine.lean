import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure TuringMachinePackage where
  states : Type
  alphabet : Type
  transition : states → alphabet → states × alphabet × Direction
  initial : states
  accept : states
  reject : states
  haltingCondition : Prop

data Direction = L | R | N

structure TuringMachineEvidence (T : TuringMachinePackage) where
  transitionDefined : ∀ (q : T.states) (s : T.alphabet), (T.transition q s).1 ∈ T.states
  haltingConditionImpliesAcceptOrReject : T.haltingCondition → (∀ q, q = T.accept ∨ q = T.reject)
  initialNotAcceptReject : T.initial ≠ T.accept ∧ T.initial ≠ T.reject

structure TuringMachineClosed (T : TuringMachinePackage) : Prop where
  transitionDefined : ∀ (q : T.states) (s : T.alphabet), (T.transition q s).1 ∈ T.states
  haltingConditionImpliesAcceptOrReject : T.haltingCondition → (∀ q, q = T.accept ∨ q = T.reject)
  initialNotAcceptReject : T.initial ≠ T.accept ∧ T.initial ≠ T.reject

theorem turing_machine_closed_from_evidence (T : TuringMachinePackage) (E : TuringMachineEvidence T) : TuringMachineClosed T :=
  { transitionDefined := E.transitionDefined,
    haltingConditionImpliesAcceptOrReject := E.haltingConditionImpliesAcceptOrReject,
    initialNotAcceptReject := E.initialNotAcceptReject }

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse