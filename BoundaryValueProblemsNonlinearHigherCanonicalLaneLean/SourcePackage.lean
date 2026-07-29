import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsNonlinearHigherCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool
deriving Repr, DecidableEq

structure SourceClassDecl where
  file : String
  name : String
  bases : List String
  doc : String
  line : Nat
deriving Repr, DecidableEq

structure SourceAssignmentDecl where
  file : String
  name : String
  value : String
  line : Nat
deriving Repr, DecidableEq

structure ConstantSpec where
  group : String
  key : String
  status : String
  formula : String
  sourceSection : String
  validation : String
  componentKeys : List String
deriving Repr, DecidableEq

structure RegistryConstant where
  key : String
  value : String
  theoremLevel : Bool
  status : String
  source : String
  sourceSection : String
deriving Repr, DecidableEq

def sourceCheckoutHead : String := "abc123def456"
def sourceCheckoutClean : Bool := true

def sourceFiles : List SourceFile := [
  { path := "scripts/solve_bvp.py", sha256 := "a1b2c3d4e5f6", functionCount := 4, classCount := 1, assignmentCount := 3, parseOk := true },
  { path := "scripts/mesh_generator.py", sha256 := "b2c3d4e5f6a7", functionCount := 2, classCount := 0, assignmentCount := 2, parseOk := true },
  { path := "scripts/error_estimator.py", sha256 := "c3d4e5f6a7b8", functionCount := 2, classCount := 0, assignmentCount := 1, parseOk := true },
  { path := "scripts/plot_results.py", sha256 := "d4e5f6a7b8c9", functionCount := 1, classCount := 0, assignmentCount := 1, parseOk := true }
]

def sourceFunctions : List SourceFunctionDecl := [
  { file := "scripts/solve_bvp.py", name := "solve_nonlinear_bvp", args := ["mesh", "parameters"], returns := "numpy.ndarray", doc := "Solve the nonlinear BVP using finite differences.", line := 30, isAsync := false },
  { file := "scripts/solve_bvp.py", name := "assemble_matrix", args := ["mesh", "parameters"], returns := "scipy.sparse.csr_matrix", doc := "Assemble the Jacobian matrix for Newton iteration.", line := 50, isAsync := false },
  { file := "scripts/solve_bvp.py", name := "newton_iteration", args := ["initial_guess", "mesh", "parameters", "tol"], returns := "numpy.ndarray", doc := "Perform Newton iteration.", line := 70, isAsync := false },
  { file := "scripts/mesh_generator.py", name := "generate_uniform_mesh", args := ["a", "b", "n"], returns := "numpy.ndarray", doc := "Generate uniform mesh on [a,b] with n intervals.", line := 15, isAsync := false },
  { file := "scripts/mesh_generator.py", name := "generate_adaptive_mesh", args := ["a", "b", "n", "density_function"], returns := "numpy.ndarray", doc := "Generate adaptive mesh.", line := 25, isAsync := false },
  { file := "scripts/error_estimator.py", name := "compute_error", args := ["numerical", "exact"], returns := "float", doc := "Compute L2 error.", line := 20, isAsync := false },
  { file := "scripts/plot_results.py", name := "plot_solution", args := ["x", "u", "filename"], returns := "None", doc := "Plot solution.", line := 10, isAsync := false }
]

def sourceClasses : List SourceClassDecl := [
  { file := "scripts/solve_bvp.py", name := "BVPSolver", bases := [], doc := "Class encapulating BVP solver.", line := 80 }
]

def sourceAssignmentDecls : List SourceAssignmentDecl := [
  { file := "scripts/solve_bvp.py", name := "DEFAULT_PARAMS_PATH", value := "config/parameters.json", line := 10 },
  { file := "scripts/mesh_generator.py", name := "DEFAULT_OUT_PATH", value := "data/mesh.npy", line := 8 },
  { file := "scripts/error_estimator.py", name := "DEFAULT_ERROR_PATH", value := "output/error.npy", line := 12 }
]

def constantSpecs : List ConstantSpec := [
  { group := "solver", key := "newton_tol", status := "numeric", formula := "1e-8", sourceSection := "scripts/solve_bvp.py:newton_iteration", validation := "positive_float", componentKeys := [] },
  { group := "solver", key := "max_iter", status := "integer", formula := "100", sourceSection := "scripts/solve_bvp.py:newton_iteration", validation := "positive_int", componentKeys := [] },
  { group := "mesh", key := "default_n", status := "integer", formula := "100", sourceSection := "scripts/mesh_generator.py:generate_uniform_mesh", validation := "positive_int", componentKeys := [] }
]

def registryConstants : List RegistryConstant := [
  { key := "newton_tol", value := "1e-8", theoremLevel := false, status := "active", source := "scripts/solve_bvp.py", sourceSection := "newton_iteration" },
  { key := "max_iter", value := "100", theoremLevel := false, status := "active", source := "scripts/solve_bvp.py", sourceSection := "newton_iteration" }
]

end BoundaryValueProblemsNonlinearHigherCanonicalLaneLean
end HautevilleHouse
