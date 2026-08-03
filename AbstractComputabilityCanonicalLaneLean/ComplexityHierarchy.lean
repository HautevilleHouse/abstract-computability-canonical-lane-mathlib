import AbstractComputabilityCanonicalLaneLean.RecursionTheoryPackage

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure ComplexityHierarchyPackage {F : ComputableFunctionPackage} {R : RecursionTheoryPackage F} where
  timeConstructible : Prop
  spaceConstructible : Prop
  timeHierarchyTheorem : Prop
  spaceHierarchyTheorem : Prop
  separationResults : Prop

structure ComplexityHierarchyEvidence {F : ComputableFunctionPackage} {R : RecursionTheoryPackage F} (H : ComplexityHierarchyPackage F R) where
  timeConstructibleClosed : H.timeConstructible
  spaceConstructibleClosed : H.spaceConstructible
  timeHierarchyTheoremClosed : H.timeHierarchyTheorem
  spaceHierarchyTheoremClosed : H.spaceHierarchyTheorem
  separationResultsClosed : H.separationResults

def ComplexityHierarchyClosed {F : ComputableFunctionPackage} {R : RecursionTheoryPackage F} (H : ComplexityHierarchyPackage F R) : Prop :=
  H.timeConstructible ∧ H.spaceConstructible ∧ H.timeHierarchyTheorem ∧ H.spaceHierarchyTheorem ∧ H.separationResults

theorem complexity_hierarchy_closed_from_evidence {F : ComputableFunctionPackage} {R : RecursionTheoryPackage F} (H : ComplexityHierarchyPackage F R) (E : ComplexityHierarchyEvidence H) : ComplexityHierarchyClosed H := by
  exact And.intro E.timeConstructibleClosed (And.intro E.spaceConstructibleClosed (And.intro E.timeHierarchyTheoremClosed (And.intro E.spaceHierarchyTheoremClosed E.separationResultsClosed)))

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse
