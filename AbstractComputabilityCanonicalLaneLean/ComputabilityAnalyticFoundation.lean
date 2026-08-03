import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractComputabilityCanonicalLaneLean.TuringMachinePackage
import HautevilleHouse.AbstractComputabilityCanonicalLaneLean.ComputableFunctionPackage
import HautevilleHouse.AbstractComputabilityCanonicalLaneLean.HaltingProblem

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure ComputabilityAnalyticFoundation where
  turing : TuringMachinePackage
  turingEvidence : TuringMachineEvidence turing
  computable : ComputableFunctionPackage turing
  computableEvidence : ComputableFunctionEvidence turing computable
  halting : HaltingProblemPackage turing computable
  haltingEvidence : HaltingProblemEvidence turing computable halting

structure ComputabilityAnalyticFoundationClosed (A : ComputabilityAnalyticFoundation) : Prop := 
  turingClosed : TuringMachineClosed A.turing
  computableClosed : ComputableFunctionClosed A.turing A.computable
  haltingClosed : HaltingProblemClosed A.turing A.computable A.halting

theorem computability_analytic_foundation_closed (A : ComputabilityAnalyticFoundation) :
    ComputabilityAnalyticFoundationClosed A :=
  { turingClosed := turing_machine_closed_from_evidence A.turing A.turingEvidence
    computableClosed := computable_function_closed_from_evidence A.turing A.computable A.computableEvidence
    haltingClosed := halting_problem_closed_from_evidence A.turing A.computable A.halting A.haltingEvidence
  }

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse