import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure ComputabilityAdmittedObject where
  machine : Type
  input : Type
  accepts : machine → input → Prop
  halts : machine → input → Prop
  conclusion : Prop

structure AdmissibleClass where
  object : ComputabilityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ComputabilityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def ComputabilityWitnessClosed (O : ComputabilityAdmittedObject) : Prop :=
  O.conclusion

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse