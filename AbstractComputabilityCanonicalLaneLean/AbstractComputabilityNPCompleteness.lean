import AbstractComputabilityCanonicalLaneLean.AbstractComputabilityAdmissibleClass

/-!
# NP-Completeness Package
-/

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure NPCompletenessPackage (A : AdmissibleClass) where
  satIsNPComplete : Prop
  cookLevinTheorem : Prop
  polynomialReduction : Prop
  evidence : polynomialReduction

structure NPCompletenessEvidence {A : AdmissibleClass} (N : NPCompletenessPackage A) where
  satIsNPCompleteClosed : N.satIsNPComplete
  cookLevinTheoremClosed : N.cookLevinTheorem

def NPCompletenessClosed {A : AdmissibleClass} (N : NPCompletenessPackage A) : Prop :=
  N.satIsNPComplete ∧ N.cookLevinTheorem

theorem np_completeness_closed_from_evidence
    {A : AdmissibleClass} (N : NPCompletenessPackage A) (E : NPCompletenessEvidence N) :
    NPCompletenessClosed N := by
  exact And.intro E.satIsNPCompleteClosed E.cookLevinTheoremClosed

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse