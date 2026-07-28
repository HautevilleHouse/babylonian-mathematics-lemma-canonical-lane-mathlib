import BabylonianMathematicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianPythagoreanPackage where
  tripleSet : Type u
  generationMethod : Prop
  applicationMetric : Prop
  proofOfRelation : Prop

structure BabylonianPythagoreanEvidence (P : BabylonianPythagoreanPackage) where
  generationMethodClosed : P.generationMethod
  applicationMetricClosed : P.applicationMetric
  proofOfRelationClosed : P.proofOfRelation

def BabylonianPythagoreanClosed (P : BabylonianPythagoreanPackage) : Prop :=
  P.generationMethod ∧ P.applicationMetric ∧ P.proofOfRelation

theorem babylonian_pythagorean_closed_from_evidence (P : BabylonianPythagoreanPackage) (E : BabylonianPythagoreanEvidence P) :
    BabylonianPythagoreanClosed P := by
  exact And.intro E.generationMethodClosed (And.intro E.applicationMetricClosed E.proofOfRelationClosed)

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse