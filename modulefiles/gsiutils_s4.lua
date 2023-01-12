help([[
]])

local hpc_ver=os.getenv("hpc_ver") or "1.1.0"
local hpc_intel_ver=os.getenv("hpc_intel_ver") or "2021.3.0"
local hpc_impi_ver=os.getenv("hpc_impi_ver") or "2021.3.0"
local intelpython_ver=os.getenv("intelpython_ver") or "2021.3.0"
local prod_util_ver=os.getenv("prod_util_ver") or "1.2.2"

prepend_path("MODULEPATH", "/data/prod/hpc-stack/modulefiles/stack")

load(pathJoin("hpc", hpc_ver))
load(pathJoin("hpc-intel", hpc_intel_ver))
load(pathJoin("hpc-impi", hpc_impi_ver))

load(pathJoin("intelpython", intelpython_ver))

load("gsiutils_common")

load(pathJoin("prod_util", prod_util_ver))

whatis("Description: GSI utilities environment on GCP with Intel Compilers")
