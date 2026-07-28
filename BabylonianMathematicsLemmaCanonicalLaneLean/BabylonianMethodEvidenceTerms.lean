import BabylonianMathematicsLemmaCanonicalLaneLean.BabylonianSqrtMethodPackage

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianMethodEvidenceTerms {A : AdmissibleClass} {P : BabylonianSqrtMethodPackage A} (C : BabylonianSqrtMethodEvidence P) where
  initialGuessTerm : C.initialGuessClosed
  iterationCountTerm : C.iterationCountClosed
  errorBoundTerm : C.errorBoundClosed
  convergencePropertyTerm : C.convergencePropertyClosed
  methodClosed : BabylonianSqrtMethodClosed P

def BabylonianSqrtMethodEvidence.toEvidenceTerms {A : AdmissibleClass} {P : BabylonianSqrtMethodPackage A} (C : BabylonianSqrtMethodEvidence P) : BabylonianMethodEvidenceTerms C :=
  {
    initialGuessTerm := C.initialGuessClosed
    iterationCountTerm := C.iterationCountClosed
    errorBoundTerm := C.errorBoundClosed
    convergencePropertyTerm := C.convergencePropertyClosed
    methodClosed := babylonian_sqrt_method_closed_from_evidence P C
  }

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse