import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure ComputationSpace where
  carrier : Type
  encoding : carrier → ℕ

structure ComputableFunction (A B : ComputationSpace) where
  map : A.carrier → B.carrier
  computable : Prop

structure AdmittedComputabilityObject where
  space : ComputationSpace
  haltingProblem : Prop
  churchTuringThesis : Prop
  npComplete : Prop
  conclusion : churchTuringThesis ∧ haltingProblem ∧ npComplete

structure ComputabilityEndgameState where
  object : AdmittedComputabilityObject

def ComputabilityWitnessClosed (O : AdmittedComputabilityObject) : Prop :=
  O.conclusion

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse