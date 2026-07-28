import BabylonianMathematicsLemmaCanonicalLaneLean.BabylonianMethodEvidenceTerms

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianSqrtMethodCertificate {A : AdmissibleClass} (P : BabylonianSqrtMethodPackage A) where
  initialGuessPos : Prop
  iterationCountPos : Prop
  errorBoundPos : Prop
  convergenceProof : Prop
  initialGuessPosClosed : initialGuessPos
  iterationCountPosClosed : iterationCountPos
  errorBoundPosClosed : errorBoundPos
  convergenceProofClosed : convergenceProof
  evidence : BabylonianSqrtMethodEvidence P

def BabylonianSqrtMethodCertificateClosed {A : AdmissibleClass} {P : BabylonianSqrtMethodPackage A} (C : BabylonianSqrtMethodCertificate P) : Prop :=
  C.initialGuessPos ∧ C.iterationCountPos ∧ C.errorBoundPos ∧ C.convergenceProof ∧ BabylonianSqrtMethodClosed P

theorem babylonian_sqrt_method_certificate_closed {A : AdmissibleClass} {P : BabylonianSqrtMethodPackage A} (C : BabylonianSqrtMethodCertificate P) :
    BabylonianSqrtMethodCertificateClosed C := by
  exact And.intro C.initialGuessPosClosed (And.intro C.iterationCountPosClosed (And.intro C.errorBoundPosClosed (And.intro C.convergenceProofClosed (babylonian_sqrt_method_closed_from_evidence P C.evidence))))

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse