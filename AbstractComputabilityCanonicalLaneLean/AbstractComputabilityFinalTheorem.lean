import AbstractComputabilityCanonicalLaneLean.AbstractComputabilityGateLemmas

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

def ConstrainedComputabilityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_computability_endgame (A : AdmissibleClass) :
    ConstrainedComputabilityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse