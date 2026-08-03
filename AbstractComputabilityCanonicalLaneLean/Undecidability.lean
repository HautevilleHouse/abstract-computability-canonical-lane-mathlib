import canonicalLaneMathlib.AdmissibleClass
import AbstractComputabilityCanonicalLaneLean.AbstractComputabilityModels

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure HaltingProblemPackage where
  machine : TuringMachine
  input : List (TuringMachine.alphabet)
  haltingDecision : Prop
  undecidabilityWitness : Prop

structure HaltingProblemEvidence (H : HaltingProblemPackage) where
  undecidabilityWitnessClosed : H.undecidabilityWitness

def HaltingProblemClosed (H : HaltingProblemPackage) : Prop :=
  H.undecidabilityWitness

theorem halting_problem_closed_from_evidence
    (H : HaltingProblemPackage) (E : HaltingProblemEvidence H) :
    HaltingProblemClosed H :=
  E.undecidabilityWitnessClosed

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse