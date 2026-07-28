import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BabylonianMathematicsLemmaCanonicalLaneLean.BabylonianNumberSystem

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianAlgorithm (N : BabylonianNumberSystem) where
  algorithmSteps : List (N.sexagesimalDigits -> N.sexagesimalDigits)
  terminationCondition : Prop
  correctnessProof : Prop
  convergenceRate : Prop

structure BabylonianAlgorithmEvidence (N : BabylonianNumberSystem) (A : BabylonianAlgorithm N) where
  terminationConditionClosed : A.terminationCondition
  correctnessProofClosed : A.correctnessProof
  convergenceRateClosed : A.convergenceRate

def BabylonianAlgorithmClosed (N : BabylonianNumberSystem) (A : BabylonianAlgorithm N) : Prop :=
  A.terminationCondition ∧ A.correctnessProof ∧ A.convergenceRate

theorem babylonian_algorithm_closed_from_evidence
    (N : BabylonianNumberSystem) (A : BabylonianAlgorithm N)
    (E : BabylonianAlgorithmEvidence N A) : BabylonianAlgorithmClosed N A := by
  exact And.intro E.terminationConditionClosed
    (And.intro E.correctnessProofClosed E.convergenceRateClosed)

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse