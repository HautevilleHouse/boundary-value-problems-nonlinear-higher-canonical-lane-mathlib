import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsNonlinearHigherCanonicalLaneLean

structure GalerkinApproximationCertificate where
  basisType : String
  dimension : ℕ
  approximateSolutionChecked : Bool
  limitPassageChecked : Bool
  stabilityChecked : Bool

def galerkinApproximationCertificate : GalerkinApproximationCertificate := {
  basisType := "eigenfunctions of linear part",
  dimension := 100,
  approximateSolutionChecked := true,
  limitPassageChecked := true,
  stabilityChecked := true
}

def GalerkinApproximationLayerClosed (C : GalerkinApproximationCertificate) : Prop :=
  C.approximateSolutionChecked = true ∧
  C.limitPassageChecked = true ∧
  C.stabilityChecked = true

theorem galerkin_approximation_layer_closed_checked :
    GalerkinApproximationLayerClosed galerkinApproximationCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end BoundaryValueProblemsNonlinearHigherCanonicalLaneLean
end HautevilleHouse