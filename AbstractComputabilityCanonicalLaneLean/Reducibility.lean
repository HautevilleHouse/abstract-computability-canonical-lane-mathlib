import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractComputabilityCanonicalLaneLean.TuringMachine

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure ReducibilityPackage (A B : Type) where
  manyOneReduction : A → B
  turingReduction : (A → B) → Prop
  completeness : Prop

structure ReducibilityEvidence {A B : Type} (R : ReducibilityPackage A B) where
  manyOneTotality : ∀ x : A, R.manyOneReduction x ≠ undefined
  turingReductionTransitive : ∀ (f : A → B) (g : B → A), R.turingReduction f → R.turingReduction g → R.turingReduction (f ∘ g)
  completenessProof : R.completeness

structure ReducibilityClosed {A B : Type} (R : ReducibilityPackage A B) : Prop where
  manyOneTotal : ∀ x : A, R.manyOneReduction x ≠ undefined
  turingReductionTransitive : ∀ (f : A → B) (g : B → A), R.turingReduction f → R.turingReduction g → R.turingReduction (f ∘ g)
  completeness : R.completeness

theorem reducibility_closed_from_evidence {A B : Type} (R : ReducibilityPackage A B) (E : ReducibilityEvidence R) : ReducibilityClosed R :=
  { manyOneTotal := E.manyOneTotality,
    turingReductionTransitive := E.turingReductionTransitive,
    completeness := E.completenessProof }

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse