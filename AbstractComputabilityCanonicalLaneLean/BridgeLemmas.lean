import AbstractComputabilityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ComputabilityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse