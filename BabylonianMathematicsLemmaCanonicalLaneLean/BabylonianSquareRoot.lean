import BabylMathlibObjects

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianSquareRootMethod (T : BabylonianTabletSpace) where
  initialGuess : ℚ
  iterativeFormula : ℚ → ℚ
  errorBound : ℚ
  convergenceProof : Prop

structure BabylonianSquareRootEvidence {T : BabylonianTabletSpace} (M : BabylonianSquareRootMethod T) where
  convergenceClosed : M.convergenceProof

def BabylonianSquareRootClosed {T : BabylonianTabletSpace} (M : BabylonianSquareRootMethod T) : Prop :=
  M.convergenceProof

theorem babylonian_square_root_closed_from_evidence
    {T : BabylonianTabletSpace} (M : BabylonianSquareRootMethod T)
    (E : BabylonianSquareRootEvidence M) : BabylonianSquareRootClosed M := by
  exact E.convergenceClosed

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse