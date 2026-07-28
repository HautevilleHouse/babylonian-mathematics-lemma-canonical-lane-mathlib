import BabylonianMathematicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BabylonianWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.evidenceLemma A.object.evidenceProvided

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse