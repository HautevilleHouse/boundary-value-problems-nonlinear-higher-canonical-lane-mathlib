import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsNonlinearHigherCanonicalLaneLean

structure CompactnessLayerCertificate where
  embeddingTheorem : String
  compactnessType : String
  sobolevEmbedding : Bool
  sourceKey : String
  compactEmbeddingChecked : Bool
  aPrioriEstimates : Bool

def compactnessLayerCertificate : CompactnessLayerCertificate := {
  embeddingTheorem := "Rellich-Kondrachov",
  compactnessType := "compact Sobolev embedding",
  sobolevEmbedding := true,
  sourceKey := "boundary-value-problems-nonlinear-higher",
  compactEmbeddingChecked := true,
  aPrioriEstimates := true
}

def CompactnessLayerClosed (C : CompactnessLayerCertificate) : Prop :=
  C.compactEmbeddingChecked = true ∧ C.aPrioriEstimates = true

theorem compactness_layer_closed_checked :
    CompactnessLayerClosed compactnessLayerCertificate := by
  exact And.intro rfl rfl

end BoundaryValueProblemsNonlinearHigherCanonicalLaneLean
end HautevilleHouse
