import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianTabletPackage where
  tabletId : String
  content : String
  algorithmSteps : List (String × String)
  expectedResult : Float
  validation : Prop

structure BabylonianTabletEvidence (T : BabylonianTabletPackage) where
  contentClosed : T.content = ""
  algorithmStepsClosed : T.algorithmSteps.length > 0
  expectedResultClosed : T.expectedResult > 0.0
  validationClosed : T.validation

def BabylonianTabletClosed (T : BabylonianTabletPackage) : Prop :=
  T.validation ∧ T.algorithmSteps.length > 0 ∧ T.expectedResult > 0.0

theorem babylonian_tablet_closed_from_evidence (T : BabylonianTabletPackage)
    (E : BabylonianTabletEvidence T) : BabylonianTabletClosed T := by
  exact And.intro E.validationClosed
    (And.intro E.algorithmStepsClosed E.expectedResultClosed)

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse