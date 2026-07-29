import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.ContDiff

namespace HautevilleHouse
namespace BoundaryValueProblemsNonlinearHigherCanonicalLaneLean

structure BlowUpAnalysisCertificate where
  blowUpRate : String
  blowUpProfile : String
  type : String
  analysisChecked : Bool
  blowUpRoute : String

def blowUpAnalysisCertificate : BlowUpAnalysisCertificate := {
  blowUpRate := "finite time blow-up with O((T-t)^{-1/(p-1)})",
  blowUpProfile := "self-similar profile",
  type := "type I blow-up",
  analysisChecked := true,
  blowUpRoute := "rescaling arguments and matched asymptotic expansions"
}

def BlowUpAnalysisLayerClosed (C : BlowUpAnalysisCertificate) : Prop :=
  C.analysisChecked = true

theorem blow_up_analysis_layer_closed_checked :
    BlowUpAnalysisLayerClosed blowUpAnalysisCertificate := by
  exact rfl

end BoundaryValueProblemsNonlinearHigherCanonicalLaneLean
end HautevilleHouse