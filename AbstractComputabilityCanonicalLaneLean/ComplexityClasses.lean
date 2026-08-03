import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractComputabilityCanonicalLaneLean.TuringMachine

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure ComplexityClass where
  timeComplexity : ℕ → ℕ
  spaceComplexity : ℕ → ℕ
  containsProblem : TM → Prop
  closureProperties : Prop

structure ComplexityClassEvidence (C : ComplexityClass) where
  timeBounds : ∀ n, C.timeComplexity n ≥ n
  spaceBounds : ∀ n, C.spaceComplexity n ≥ 1
  containsPCP : C.containsProblem (λ _ => true)  -- example
  closureUnderReduction : C.closureProperties

structure ComplexityClassClosed (C : ComplexityClass) : Prop where
  timeBounds : ∀ n, C.timeComplexity n ≥ n
  spaceBounds : ∀ n, C.spaceComplexity n ≥ 1
  containsPCP : C.containsProblem (λ _ => true)
  closureUnderReduction : C.closureProperties

theorem complexity_class_closed_from_evidence (C : ComplexityClass) (E : ComplexityClassEvidence C) : ComplexityClassClosed C :=
  { timeBounds := E.timeBounds,
    spaceBounds := E.spaceBounds,
    containsPCP := E.containsPCP,
    closureUnderReduction := E.closureUnderReduction }

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse