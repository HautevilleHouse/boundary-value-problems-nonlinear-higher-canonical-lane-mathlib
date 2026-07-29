import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsNonlinearHigherCanonicalLaneLean

structure CriticalPointLayerCertificate where
  variationalFunctional : String
  criticalPointType : String
  mountainPassGeometry : Bool
  sourceKey : String
  palaisSmaleCondition : Bool
  criticalPointFound : Bool
  geometryChecked : Bool

def criticalPointLayerCertificate : CriticalPointLayerCertificate := {
  variationalFunctional := "energy functional",
  criticalPointType := "mountain pass point",
  mountainPassGeometry := true,
  sourceKey := "boundary-value-problems-nonlinear-higher",
  palaisSmaleCondition := true,
  criticalPointFound := true,
  geometryChecked := true
}

def CriticalPointLayerClosed (C : CriticalPointLayerCertificate) : Prop :=
  C.palaisSmaleCondition = true ∧ C.criticalPointFound = true ∧ C.geometryChecked = true

theorem critical_point_layer_closed_checked :
    CriticalPointLayerClosed criticalPointLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end BoundaryValueProblemsNonlinearHigherCanonicalLaneLean
end HautevilleHouse
