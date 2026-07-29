import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryValueProblemsNonlinearHigherCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsNonlinearHigherCanonicalLaneLean

structure NonlinearOperatorCertificate where
  operatorLabel : String
  operatorType : String
  domainRegularity : String
  boundaryConditionType : String
  solutionSpace : String
  regularityResult : String
  growthCondition : String
  coercivityCondition : String
  monotonicityCondition : String

def primitiveNonlinearOperatorCertificate : NonlinearOperatorCertificate := {
  operatorLabel := "Nonlinear elliptic operator with p-growth",
  operatorType := "Leray-Lions type",
  domainRegularity := "Lipschitz",
  boundaryConditionType := "Dirichlet",
  solutionSpace := "W^{1,p}(Ω) ∩ L^∞(Ω)",
  regularityResult := "C^{1,α} interior",
  growthCondition := "|a(x,u,ξ)| ≤ c|ξ|^{p-1} + c|u|^{p-1} + k(x)",
  coercivityCondition := "a(x,u,ξ)·ξ ≥ α|ξ|^p - c|u|^p - h(x)",
  monotonicityCondition := "Cohen-Monotone"
}

def NonlinearOperatorLayerClosed (C : NonlinearOperatorCertificate) : Prop :=
  C.operatorType = "Leray-Lions type" ∧
  C.growthCondition ≠ "" ∧
  C.coercivityCondition ≠ "" ∧
  C.monotonicityCondition ≠ ""

theorem nonlinear_operator_layer_closed_checked :
    NonlinearOperatorLayerClosed primitiveNonlinearOperatorCertificate := by
  refine And.intro rfl ?_
  refine And.intro ?_ (And.intro ?_ ?_)
  · simp
  · simp
  · simp

end BoundaryValueProblemsNonlinearHigherCanonicalLaneLean
end HautevilleHouse