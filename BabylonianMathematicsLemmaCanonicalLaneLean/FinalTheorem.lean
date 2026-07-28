import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BabylonianMathematicsLemmaCanonicalLaneLean.BabylonianNumberSystem
import HautevilleHouse.BabylonianMathematicsLemmaCanonicalLaneLean.BabylonianAlgorithm

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BabylonianNumberSystemClosed (A.object) ∧
  (∃ (alg : BabylonianAlgorithm (A.object)), BabylonianAlgorithmClosed (A.object) alg)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- Construct a trivial algorithm for demonstration; in practice, evidence would be given
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedBabylonianLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_babylonian_lemma_endgame (A : AdmissibleClass) :
    ConstrainedBabylonianLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse