import BabylonianMathematicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianSqrtMethodPackage (A : AdmissibleClass) where
  initialGuess : ℚ
  iterationCount : ℕ
  errorBound : ℚ
  convergenceProperty : Prop
  initialGuessClosed : initialGuess > 0
  iterationCountClosed : iterationCount ≥ 1
  errorBoundClosed : errorBound > 0
  convergencePropertyClosed : convergenceProperty

structure BabylonianSqrtMethodEvidence {A : AdmissibleClass} (P : BabylonianSqrtMethodPackage A) where
  initialGuessClosed : P.initialGuess > 0
  iterationCountClosed : P.iterationCount ≥ 1
  errorBoundClosed : P.errorBound > 0
  convergencePropertyClosed : P.convergenceProperty

def BabylonianSqrtMethodClosed {A : AdmissibleClass} (P : BabylonianSqrtMethodPackage A) : Prop :=
  P.initialGuess > 0 ∧ P.iterationCount ≥ 1 ∧ P.errorBound > 0 ∧ P.convergenceProperty

theorem babylonian_sqrt_method_closed_from_evidence {A : AdmissibleClass} (P : BabylonianSqrtMethodPackage A) (E : BabylonianSqrtMethodEvidence P) :
    BabylonianSqrtMethodClosed P := by
  exact And.intro E.initialGuessClosed (And.intro E.iterationCountClosed (And.intro E.errorBoundClosed E.convergencePropertyClosed))

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse