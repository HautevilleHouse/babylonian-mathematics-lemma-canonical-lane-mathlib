import Mathlib.Data.PNat.Basic

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianTabletSpace where
  carrier : Type
  cuneiformScript : Prop
  provenance : String

structure BabylonianAdmittedObject where
  tablet : BabylonianTabletSpace
  hasSexagesimalNotation : Prop
  reciprocalPairsDiscovered : Prop
  lemmaStatement : Prop
  conclusion : lemmaStatement

structure BabylonianEndgameState where
  object : BabylonianAdmittedObject

def BabylonianWitnessClosed (O : BabylonianAdmittedObject) : Prop :=
  O.lemmaStatement

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse