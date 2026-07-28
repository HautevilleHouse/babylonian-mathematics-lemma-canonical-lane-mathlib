import BabylonianMathematicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianNumberTheoryPackage where
  reciprocalPairs : Prop
  sexagesimalArithmetic : Prop
  divisionAlgorithm : Prop
  squareRootApproximation : Prop

structure BabylonianNumberTheoryEvidence (N : BabylonianNumberTheoryPackage) where
  reciprocalPairsClosed : N.reciprocalPairs
  sexagesimalArithmeticClosed : N.sexagesimalArithmetic
  divisionAlgorithmClosed : N.divisionAlgorithm
  squareRootApproximationClosed : N.squareRootApproximation

def BabylonianNumberTheoryClosed (N : BabylonianNumberTheoryPackage) : Prop :=
  N.reciprocalPairs ∧ N.sexagesimalArithmetic ∧ N.divisionAlgorithm ∧ N.squareRootApproximation

theorem babylonian_number_theory_closed_from_evidence (N : BabylonianNumberTheoryPackage) (E : BabylonianNumberTheoryEvidence N) :
    BabylonianNumberTheoryClosed N :=
  And.intro E.reciprocalPairsClosed (And.intro E.sexagesimalArithmeticClosed (And.intro E.divisionAlgorithmClosed E.squareRootApproximationClosed))

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse