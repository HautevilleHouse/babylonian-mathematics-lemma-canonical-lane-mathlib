import BabylonianMathematicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianFigurePackage where
  figureType : Type u
  areaCalculation : Prop
  diagonalFormula : Prop
  volumeFormula : Prop

structure BabylonianFigureEvidence (P : BabylonianFigurePackage) where
  areaCalculationClosed : P.areaCalculation
  diagonalFormulaClosed : P.diagonalFormula
  volumeFormulaClosed : P.volumeFormula

def BabylonianFigureClosed (P : BabylonianFigurePackage) : Prop :=
  P.areaCalculation ∧ P.diagonalFormula ∧ P.volumeFormula

theorem babylonian_figure_closed_from_evidence (P : BabylonianFigurePackage) (E : BabylonianFigureEvidence P) :
    BabylonianFigureClosed P := by
  exact And.intro E.areaCalculationClosed (And.intro E.diagonalFormulaClosed E.volumeFormulaClosed)

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse