namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

def sourceRepository : String := "babylonian-mathematics-lemma-canonical-lane"
def sourceDescription : String := "Babylonian Mathematics Lemma Canonical Lane"
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository
  , theoremName := sourceRepository
  , theoremObject := sourceDescription
  , classicalBoundary := "classical boundary carried"
  , manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates"
  , certificateLane := baselineCertificateLane
  , carriedRemainder := "classical source boundary carried"
  }

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse