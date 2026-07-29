import canonicalLaneMathlib.AdmissibleClass
import BoundaryValueProblemsNonlinearHigherCanonicalLaneLean.SourcePackage

namespace HautevilleHouse
namespace BoundaryValueProblemsNonlinearHigherCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
deriving Repr, DecidableEq

structure SourcePathDependency where
  file : String
  name : String
  path : String
  role : String
  line : Nat
deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency := [
  { file := "scripts/solve_bvp.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/solve_bvp.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/solve_bvp.py", kind := "import", module := "numpy", name := "", alias := "np", level := 0 },
  { file := "scripts/solve_bvp.py", kind := "import", module := "scipy.sparse.linalg", name := "", alias := "spla", level := 0 },
  { file := "scripts/solve_bvp.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/mesh_generator.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/mesh_generator.py", kind := "import", module := "numpy", name := "", alias := "np", level := 0 },
  { file := "scripts/mesh_generator.py", kind := "from_import", module := "typing", name := "Tuple", alias := "", level := 0 },
  { file := "scripts/error_estimator.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/error_estimator.py", kind := "import", module := "numpy", name := "", alias := "np", level := 0 },
  { file := "scripts/error_estimator.py", kind := "import", module := "scipy.linalg", name := "", alias := "la", level := 0 }
]

def sourceRuntimeModules : List String := [
  "__future__.annotations",
  "argparse",
  "numpy",
  "scipy.sparse.linalg",
  "typing.Any",
  "typing.Tuple",
  "scipy.linalg"
]

def sourcePathDependencies : List SourcePathDependency := [
  { file := "scripts/solve_bvp.py", name := "DEFAULT_MESH", path := "data/mesh.npy", role := "data", line := 15 },
  { file := "scripts/solve_bvp.py", name := "DEFAULT_PARAMS", path := "config/parameters.json", role := "config", line := 20 },
  { file := "scripts/mesh_generator.py", name := "DEFAULT_OUT", path := "data/mesh.npy", role := "data", line := 18 },
  { file := "scripts/error_estimator.py", name := "DEFAULT_ERROR", path := "output/error.npy", role := "output", line := 22 }
]

end BoundaryValueProblemsNonlinearHigherCanonicalLaneLean
end HautevilleHouse
