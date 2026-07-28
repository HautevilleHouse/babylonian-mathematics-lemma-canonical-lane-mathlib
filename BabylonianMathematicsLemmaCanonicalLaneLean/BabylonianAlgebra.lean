import BabylonianMathematicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianAlgebraPackage where
  quadraticEquation : Prop
  solutionMethod : Prop
  areaComputation : Prop
  proportionLaw : Prop

structure BabylonianAlgebraEvidence (A : BabylonianAlgebraPackage) where
  quadraticEquationClosed : A.quadraticEquation
  solutionMethodClosed : A.solutionMethod
  areaComputationClosed : A.areaComputation
  proportionLawClosed : A.proportionLaw

def BabylonianAlgebraClosed (A : BabylonianAlgebraPackage) : Prop :=
  A.quadraticEquation ∧ A.solutionMethod ∧ A.areaComputation ∧ A.proportionLaw

theorem babylonian_algebra_closed_from_evidence (A : BabylonianAlgebraPackage) (E : BabylonianAlgebraEvidence A) :
    BabylonianAlgebraClosed A :=
  And.intro E.quadraticEquationClosed (And.intro E.solutionMethodClosed (And.intro E.areaComputationClosed E.proportionLawClosed))

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse