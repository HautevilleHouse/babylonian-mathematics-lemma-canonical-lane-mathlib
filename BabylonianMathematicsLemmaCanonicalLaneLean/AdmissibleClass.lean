import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianAdmittedObject where
  lemmaStatement : Prop
  evidenceProvided : Prop
  evidenceLemma : evidenceProvided → lemmaStatement

structure AdmissibleClass where
  object : BabylonianAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BabylonianWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def BabylonianWitnessClosed (O : BabylonianAdmittedObject) : Prop :=
  O.lemmaStatement

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse