import AbstractComputabilityCanonicalLaneLean.ComputableFunctionPackage

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure RecursionTheoryPackage {F : ComputableFunctionPackage} where
  primitiveRecursive : Prop
  muOperator : Prop
  partialRecursiveFunctionsClassified : Prop
  churchTuringThesis : Prop

structure RecursionTheoryEvidence {F : ComputableFunctionPackage} (R : RecursionTheoryPackage F) where
  primitiveRecursiveClosed : R.primitiveRecursive
  muOperatorClosed : R.muOperator
  partialRecursiveFunctionsClassifiedClosed : R.partialRecursiveFunctionsClassified
  churchTuringThesisClosed : R.churchTuringThesis

def RecursionTheoryClosed {F : ComputableFunctionPackage} (R : RecursionTheoryPackage F) : Prop :=
  R.primitiveRecursive ∧ R.muOperator ∧ R.partialRecursiveFunctionsClassified ∧ R.churchTuringThesis

theorem recursion_theory_closed_from_evidence {F : ComputableFunctionPackage} (R : RecursionTheoryPackage F) (E : RecursionTheoryEvidence R) : RecursionTheoryClosed R := by
  exact And.intro E.primitiveRecursiveClosed (And.intro E.muOperatorClosed (And.intro E.partialRecursiveFunctionsClassifiedClosed E.churchTuringThesisClosed))

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse
