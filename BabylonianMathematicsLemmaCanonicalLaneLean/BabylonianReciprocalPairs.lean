import BabylMathlibObjects

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure ReciprocalPairsPackage (T : BabylonianTabletSpace) where
  pairs : List (ℕ × ℕ)
  regularNumbers : Prop
  ratioComputed : Prop
  geometricInterpretation : Prop

structure ReciprocalPairsEvidence {T : BabylonianTabletSpace} (P : ReciprocalPairsPackage T) where
  regularNumbersClosed : P.regularNumbers
  ratioComputedClosed : P.ratioComputed
  geometricInterpretationClosed : P.geometricInterpretation

def ReciprocalPairsClosed {T : BabylonianTabletSpace} (P : ReciprocalPairsPackage T) : Prop :=
  P.regularNumbers ∧ P.ratioComputed ∧ P.geometricInterpretation

theorem reciprocal_pairs_closed_from_evidence
    {T : BabylonianTabletSpace} (P : ReciprocalPairsPackage T)
    (E : ReciprocalPairsEvidence P) : ReciprocalPairsClosed P := by
  exact And.intro E.regularNumbersClosed
    (And.intro E.ratioComputedClosed E.geometricInterpretationClosed)

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse