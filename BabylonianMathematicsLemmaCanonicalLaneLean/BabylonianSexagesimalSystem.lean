import BabylonianMathematicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianSexagesimalPackage where
  base : Nat
  placeValues : Prop
  multiplicationTable : Prop
  reciprocalTable : Prop
  divisionAlgorithm : Prop

structure BabylonianSexagesimalEvidence (S : BabylonianSexagesimalPackage) where
  placeValuesClosed : S.placeValues
  multiplicationTableClosed : S.multiplicationTable
  reciprocalTableClosed : S.reciprocalTable
  divisionAlgorithmClosed : S.divisionAlgorithm

def BabylonianSexagesimalClosed (S : BabylonianSexagesimalPackage) : Prop :=
  S.placeValues ∧ S.multiplicationTable ∧ S.reciprocalTable ∧ S.divisionAlgorithm

theorem babylonian_sexagesimal_closed_from_evidence (S : BabylonianSexagesimalPackage) (E : BabylonianSexagesimalEvidence S) :
    BabylonianSexagesimalClosed S := by
  exact And.intro E.placeValuesClosed (And.intro E.multiplicationTableClosed (And.intro E.reciprocalTableClosed E.divisionAlgorithmClosed))

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse