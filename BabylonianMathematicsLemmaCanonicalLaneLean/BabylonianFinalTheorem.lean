import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

def ConstrainedBabylonianClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_babylonian_endgame (A : AdmissibleClass) :
    ConstrainedBabylonianClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse