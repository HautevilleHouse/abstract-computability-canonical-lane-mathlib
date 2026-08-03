import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure TuringMachine where
  states : Type
  alphabet : Type
  transition : states → alphabet → states × alphabet × Bool
  startState : states
  haltingStates : Set states

structure ChurchTuringThesisPackage where
  turingMachineModel : TuringMachine
  lambdaCalculusModel : Type
  recursiveFunctionsModel : Type
  equivalenceWitness : Prop

structure ChurchTuringThesisEvidence (C : ChurchTuringThesisPackage) where
  equivalenceWitnessClosed : C.equivalenceWitness

def ChurchTuringThesisClosed (C : ChurchTuringThesisPackage) : Prop :=
  C.equivalenceWitness

theorem church_turing_thesis_closed_from_evidence
    (C : ChurchTuringThesisPackage) (E : ChurchTuringThesisEvidence C) :
    ChurchTuringThesisClosed C :=
  E.equivalenceWitnessClosed

structure ComputabilityAdmittedObject where
  machine : TuringMachine
  language : Set (List (TuringMachine.alphabet))
  haltingOrNot : Prop

structure AdmissibleClass where
  object : ComputabilityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChurchTuringThesisClosed A.object.machine ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse