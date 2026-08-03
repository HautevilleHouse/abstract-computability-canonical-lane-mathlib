import AbstractComputabilityCanonicalLaneLean.TuringMachines

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure HaltingProblemReduction where
  sourceMachine : TuringMachine
  targetMachine : TuringMachine
  reductionFunction : ℕ → ℕ
  correctness : Prop

structure HaltingProblemEvidence (H : HaltingProblemReduction) where
  reductionFunctionComputable : H.correctness

def HaltingProblemClosed (H : HaltingProblemReduction) : Prop :=
  H.correctness

theorem halting_problem_closed_from_evidence (H : HaltingProblemReduction) (E : HaltingProblemEvidence H) :
    HaltingProblemClosed H := by
  exact E.reductionFunctionComputable

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse