import AbstractComputabilityCanonicalLaneLean.TuringMachines

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure TimeHierarchy where
  timeConstructible : ℕ → ℕ
  diagonalization : TuringMachine
  strictContainment : Prop

structure TimeHierarchyEvidence (T : TimeHierarchy) where
  timeConstructibleComputable : Prop
  diagonalizationCorrect : T.strictContainment

def TimeHierarchyClosed (T : TimeHierarchy) : Prop :=
  T.strictContainment

theorem time_hierarchy_closed_from_evidence (T : TimeHierarchy) (E : TimeHierarchyEvidence T) :
    TimeHierarchyClosed T := by
  exact E.diagonalizationCorrect

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse