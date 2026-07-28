import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsLemmaCanonicalLaneLean

structure MathlibBabylonianBasis where
  arithmeticAvailable : Prop
  algorithmAvailable : Prop
  realNumbersAvailable : Prop
  arithmeticTerm : arithmeticAvailable
  algorithmTerm : algorithmAvailable
  realNumbersTerm : realNumbersAvailable

def mathlibBabylonianBasis : MathlibBabylonianBasis := {
  arithmeticAvailable := True,
  algorithmAvailable := True,
  realNumbersAvailable := True,
  arithmeticTerm := trivial,
  algorithmTerm := trivial,
  realNumbersTerm := trivial
}

theorem mathlib_arithmetic_available : mathlibBabylonianBasis.arithmeticAvailable := by
  exact trivial

end BabylonianMathematicsLemmaCanonicalLaneLean
end HautevilleHouse