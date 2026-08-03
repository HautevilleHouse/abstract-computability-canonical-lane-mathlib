import AbstractComputabilityCanonicalLaneLean.AbstractComputabilityObjects

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedComputabilityObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComputabilityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse