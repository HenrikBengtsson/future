## Record original state
ovars <- ls()
oenvs <- oenvs0 <- Sys.getenv()
oopts0 <- options()

covr_testing <- ("covr" %in% loadedNamespaces())
on_solaris <- grepl("^solaris", R.version$os)

## Default options
oopts <- options(
  warn = 1L,
  mc.cores = 2L,
  future.debug = TRUE,
  ## Reset the following during testing in case
  ## they are set on the test system
  future.availableCores.system = NULL,
  future.availableCores.fallback = NULL,
  ## To be nicer to test environments (e.g. CRAN, Travis CI, AppVeyor CI, ...),
  ## timeout much earlier than the default 30 days.  This will also give a more
  ## informative error message produced by R itself, rather than whatever the
  ## test environment produces.
  future.makeNodePSOCK.timeout = 2 * 60 ## 2 minutes
)


## Reset the following during testing in case
## they are set on the test system
oenvs2 <- Sys.unsetenv(c(
  "R_FUTURE_AVAILABLECORES_SYSTEM",
  "R_FUTURE_AVAILABLECORES_FALLBACK",
  ## SGE
  "NSLOTS", "PE_HOSTFILE",
  ## Slurm
  "SLURM_CPUS_PER_TASK",
  ## TORQUE / PBS
  "PBS_NUM_PPN", "PBS_NODEFILE", "PBS_NP", "PBS_NUM_NODES"
))

oplan <- future::plan()

## Use eager futures by default
future::plan("sequential")

## Private future functions
.onLoad <- future:::.onLoad
.onAttach <- future:::.onAttach
asIEC <- future:::asIEC
ClusterRegistry <- future:::ClusterRegistry
constant <- future:::constant
detectCores <- future:::detectCores
FutureRegistry <- future:::FutureRegistry
gassign <- future:::gassign
get_future <- future:::get_future
geval <- future:::geval
grmall <- future:::grmall
hpaste <- future:::hpaste
importParallel <- future:::importParallel
mdebug <- future:::mdebug
myExternalIP <- future:::myExternalIP
myInternalIP <- future:::myInternalIP
parseCmdArgs <- future:::parseCmdArgs
requestCore <- future:::requestCore
requestNode <- future:::requestNode
requirePackages <- future:::requirePackages
tweakExpression <- future:::tweakExpression
whichIndex <- future:::whichIndex

## Local functions for test scripts
printf <- function(...) cat(sprintf(...))
mstr <- function(...) message(paste(capture.output(str(...)), collapse = "\n"))
attachLocally <- function(x, envir = parent.frame()) {
  for (name in names(x)) {
    assign(name, value = x[[name]], envir = envir)
  }
}

supportedStrategies <- function(cores = 1L, excl = c("multiprocess", "cluster"), ...) {
  strategies <- future:::supportedStrategies(...)
  strategies <- setdiff(strategies, excl)
  if (cores > 1) {
    strategies <- setdiff(strategies,
                          c("sequential", "uniprocess", "eager", "lazy"))
  }
  strategies
}

availCores <- min(2L, future::availableCores())
