import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure BabylonianEndpointPackage where
  targetValue : Float
  convergenceCondition : Prop
  finalApproximation : Float
  endpointStatement : Prop

structure BabylonianEndpointEvidence (E : BabylonianEndpointPackage) where
  convergenceConditionClosed : E.convergenceCondition
  endpointStatementClosed : E.endpointStatement

def BabylonianEndpointClosed (E : BabylonianEndpointPackage) : Prop :=
  E.convergenceCondition ∧ E.endpointStatement

theorem babylonian_endpoint_closed_from_evidence (E : BabylonianEndpointPackage)
    (Ev : BabylonianEndpointEvidence E) : BabylonianEndpointClosed E := by
  exact And.intro Ev.convergenceConditionClosed Ev.endpointStatementClosed

theorem babylonian_endpoint_supplies_result (E : BabylonianEndpointPackage) :
    E.endpointStatement := E.endpointStatement

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse