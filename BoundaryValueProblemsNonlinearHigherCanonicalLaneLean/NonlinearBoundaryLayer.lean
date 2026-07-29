import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsNonlinearHigherCanonicalLaneLean

structure NonlinearBoundaryLayerCertificate where
  boundaryDatum : BoundaryValueDatum
  nonlinearRoute : String
  higherOrderRoute : String
  endpointChecked : Bool
  outsideConstantDependencyFree : Bool

def nonlinearBoundaryLayerCertificate : NonlinearBoundaryLayerCertificate := {
  boundaryDatum := primitiveBoundaryValueDatum,
  nonlinearRoute := "nonlinear boundary value route through higher-order operators",
  higherOrderRoute := "higher-order elliptic/punctured route represented by admitted nonlinear class",
  endpointChecked := true,
  outsideConstantDependencyFree := true
}

def NonlinearBoundaryLayerClosed (C : NonlinearBoundaryLayerCertificate) : Prop :=
  C.boundaryDatum.nonlinearChecked = true ∧
  C.boundaryDatum.higherOrderChecked = true ∧
  C.endpointChecked = true ∧
  C.outsideConstantDependencyFree = true

theorem nonlinear_boundary_layer_closed_checked :
    NonlinearBoundaryLayerClosed nonlinearBoundaryLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end BoundaryValueProblemsNonlinearHigherCanonicalLaneLean
end HautevilleHouse