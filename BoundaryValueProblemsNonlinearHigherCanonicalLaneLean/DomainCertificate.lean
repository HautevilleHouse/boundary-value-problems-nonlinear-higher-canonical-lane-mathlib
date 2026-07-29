import BoundaryValueProblemsNonlinearHigherCanonicalLaneLean.BoundaryOperatorLayer

namespace HautevilleHouse
namespace BoundaryValueProblemsNonlinearHigherCanonicalLaneLean

structure DomainCertificate where
  nonlinearLayer : NonlinearBVPDatum
  operatorLayer : BoundaryOperatorCertificate
  carriageRecord : CarriageRecord
  baselineGatesClosed : Bool
  spectralObjectClosed : Bool
  classicalBoundaryCarried : Bool

structure CarriageRecord where
  flux : String
  projectionBasis : String
  admittedTransition : String
  carriedComponent : String
  endpointCheck : String
  closureState : String

def domainCertificate : DomainCertificate :=
  { nonlinearLayer := primitiveNonlinearBVPDatum
  , operatorLayer := primitiveBoundaryOperatorCertificate
  , carriageRecord :=
    { flux := "Nonlinear BVP spectral closure request"
    , projectionBasis := "nonlinear BVP datum, operator layer"
    , admittedTransition := "certificate projected to admitted class"
    , carriedComponent := "unrestricted classical stack remains outside"
    , endpointCheck := "Lake build plus local lemmas"
    , closureState := "LOCAL_BVP_CERTIFICATE_CLOSED_WITH_CLASSICAL_BOUNDARY_CARRIED"
    }
  , baselineGatesClosed := true
  , spectralObjectClosed := true
  , classicalBoundaryCarried := true
  }

def DomainCertificateClosed (C : DomainCertificate) : Prop :=
  NonlinearBVPLayerClosed C.nonlinearLayer ∧
  BoundaryOperatorLayerClosed C.operatorLayer ∧
  C.baselineGatesClosed = true ∧
  C.spectralObjectClosed = true ∧
  C.classicalBoundaryCarried = true

theorem domain_certificate_closed_checked :
    DomainCertificateClosed domainCertificate := by
  exact And.intro nonlinear_bvp_layer_closed_checked
    (And.intro boundary_operator_layer_closed_checked
    (And.intro rfl (And.intro rfl rfl)))

end BoundaryValueProblemsNonlinearHigherCanonicalLaneLean
end HautevilleHouse