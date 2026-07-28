import BabylonianMathematicsLemmaCanonicalLaneLean.BabylonianAlgebra

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianGeometryPackage where
  pythagoreanTriples : Prop
  plimpton322Table : Prop
  geometricProgression : Prop
  fieldMeasurement : Prop

structure BabylonianGeometryEvidence (G : BabylonianGeometryPackage) where
  pythagoreanTriplesClosed : G.pythagoreanTriples
  plimpton322TableClosed : G.plimpton322Table
  geometricProgressionClosed : G.geometricProgression
  fieldMeasurementClosed : G.fieldMeasurement

def BabylonianGeometryClosed (G : BabylonianGeometryPackage) : Prop :=
  G.pythagoreanTriples ∧ G.plimpton322Table ∧ G.geometricProgression ∧ G.fieldMeasurement

theorem babylonian_geometry_closed_from_evidence (G : BabylonianGeometryPackage) (E : BabylonianGeometryEvidence G) :
    BabylonianGeometryClosed G :=
  And.intro E.pythagoreanTriplesClosed (And.intro E.plimpton322TableClosed (And.intro E.geometricProgressionClosed E.fieldMeasurementClosed))

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse