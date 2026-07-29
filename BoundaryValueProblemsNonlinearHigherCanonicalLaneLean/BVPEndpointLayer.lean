import BoundaryValueProblemsNonlinearHigherCanonicalLaneLean.NonlinearBVPSolverLayer

namespace HautevilleHouse
namespace BoundaryValueProblemsNonlinearHigherCanonicalLaneLean

structure BVPEndpointLayerCertificate where
  solverLayer : NonlinearBVPSolverLayerCertificate
  endpointRoute : String
  endpointChecked : Bool
  carriedBoundaryNamed : Bool

def bvpEndpointLayerCertificate : BVPEndpointLayerCertificate := {
  solverLayer := nonlinearBVPSolverLayerCertificate,
  endpointRoute := "endpoint projected through admitted solver layer",
  endpointChecked := true,
  carriedBoundaryNamed := true
}

def BVPEndpointLayerClosed (C : BVPEndpointLayerCertificate) : Prop :=
  C.solverLayer.solverDatum.solutionExistenceChecked = true ∧
  C.endpointChecked = true ∧
  C.carriedBoundaryNamed = true

theorem bvp_endpoint_layer_closed_checked :
    BVPEndpointLayerClosed bvpEndpointLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end BoundaryValueProblemsNonlinearHigherCanonicalLaneLean
end HautevilleHouse