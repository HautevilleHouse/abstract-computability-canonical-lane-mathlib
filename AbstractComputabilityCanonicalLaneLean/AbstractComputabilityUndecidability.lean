import AbstractComputabilityCanonicalLaneLean.AbstractComputabilityAdmissibleClass

/-!
# Undecidability Package
-/

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure UndecidabilityPackage (A : AdmissibleClass) where
  haltingProblemUndecidable : Prop
  reductionExists : Prop
  undecidabilityWitness : Prop
  evidence : undecidabilityWitness

structure UndecidabilityEvidence {A : AdmissibleClass} (U : UndecidabilityPackage A) where
  haltingProblemUndecidableClosed : U.haltingProblemUndecidable
  reductionExistsClosed : U.reductionExists

def UndecidabilityClosed {A : AdmissibleClass} (U : UndecidabilityPackage A) : Prop :=
  U.haltingProblemUndecidable ∧ U.reductionExists

theorem undecidability_closed_from_evidence
    {A : AdmissibleClass} (U : UndecidabilityPackage A) (E : UndecidabilityEvidence U) :
    UndecidabilityClosed U := by
  exact And.intro E.haltingProblemUndecidableClosed E.reductionExistsClosed

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse