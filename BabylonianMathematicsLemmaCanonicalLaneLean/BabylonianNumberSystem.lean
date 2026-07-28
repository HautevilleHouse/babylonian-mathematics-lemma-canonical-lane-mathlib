import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianNumberSystem where
  base : Nat := 60
  sexagesimalDigits : List Nat
  positionalInterpretation : Prop
  placeValueConsistency : Prop

structure BabylonianNumberSystemEvidence (N : BabylonianNumberSystem) where
  positionalInterpretationClosed : N.positionalInterpretation
  placeValueConsistencyClosed : N.placeValueConsistency

def BabylonianNumberSystemClosed (N : BabylonianNumberSystem) : Prop :=
  N.positionalInterpretation ∧ N.placeValueConsistency

theorem babylonian_number_system_closed_from_evidence
    (N : BabylonianNumberSystem) (E : BabylonianNumberSystemEvidence N) :
    BabylonianNumberSystemClosed N := by
  exact And.intro E.positionalInterpretationClosed E.placeValueConsistencyClosed

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse