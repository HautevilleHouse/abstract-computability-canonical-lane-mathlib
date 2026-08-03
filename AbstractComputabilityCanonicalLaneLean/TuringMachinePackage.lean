import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComputabilityCanonicalLaneLean

structure TuringMachinePackage where
  states : Type
  alphabet : Type
  blankSymbol : alphabet
  transitions : states → alphabet → states × alphabet × Bool
  startState : states
  haltingStates : Set states
  deterministic : Prop
  finiteStates : Fintype states
  finiteAlphabet : Fintype alphabet

structure TuringMachineEvidence (T : TuringMachinePackage) where
  deterministicClosed : T.deterministic
  finiteStatesClosed : Fintype T.states
  finiteAlphabetClosed : Fintype T.alphabet

def TuringMachineClosed (T : TuringMachinePackage) : Prop :=
  T.deterministic

theorem turing_machine_closed_from_evidence (T : TuringMachinePackage) (E : TuringMachineEvidence T) :
    TuringMachineClosed T :=
  E.deterministicClosed

end AbstractComputabilityCanonicalLaneLean
end HautevilleHouse