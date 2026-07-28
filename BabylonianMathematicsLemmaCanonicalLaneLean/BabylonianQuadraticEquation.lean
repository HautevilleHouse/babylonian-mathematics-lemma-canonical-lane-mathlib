import BabylonianMathematicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianQuadraticPackage where
  equationForm : Type u
  solutionMethod : Prop
  existenceOfRoots : Prop
  geometricInterpretation : Prop

structure BabylonianQuadraticEvidence (Q : BabylonianQuadraticPackage) where
  solutionMethodClosed : Q.solutionMethod
  existenceOfRootsClosed : Q.existenceOfRoots
  geometricInterpretationClosed : Q.geometricInterpretation

def BabylonianQuadraticClosed (Q : BabylonianQuadraticPackage) : Prop :=
  Q.solutionMethod ∧ Q.existenceOfRoots ∧ Q.geometricInterpretation

theorem babylonian_quadratic_closed_from_evidence (Q : BabylonianQuadraticPackage) (E : BabylonianQuadraticEvidence Q) :
    BabylonianQuadraticClosed Q := by
  exact And.intro E.solutionMethodClosed (And.intro E.existenceOfRootsClosed E.geometricInterpretationClosed)

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse