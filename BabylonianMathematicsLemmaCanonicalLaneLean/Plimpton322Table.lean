import BabylBabylonianReciprocalPairs

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure Plimpton322Package (T : BabylonianTabletSpace) where
  rowCount : ℕ
  columns : List String
  interpretations : List (String → Prop)
  consistencyProof : Prop

structure Plimpton322Evidence {T : BabylonianTabletSpace} (P : Plimpton322Package T) where
  consistencyClosed : P.consistencyProof

def Plimpton322Closed {T : BabylonianTabletSpace} (P : Plimpton322Package T) : Prop :=
  P.consistencyProof

theorem plimpton322_closed_from_evidence
    {T : BabylonianTabletSpace} (P : Plimpton322Package T)
    (E : Plimpton322Evidence P) : Plimpton322Closed P := by
  exact E.consistencyClosed

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse