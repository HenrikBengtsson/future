## Record original state
ovars <- ls()
oenvs <- oenvs0 <- Sys.getenv()
oopts0 <- options()
oopts <- options(
  warn=1L,
  mc.cores=2L,
  future.debug=TRUE
)
oplan <- future::plan()

## Use eager futures by default
future::plan("eager")

## Private future functions
.onLoad <- future:::.onLoad
.onAttach <- future:::.onAttach
asIEC <- future:::asIEC
ClusterRegistry <- future:::ClusterRegistry
constant <- future:::constant
uniprocess <- future:::uniprocess ## To become public
detectCores <- future:::detectCores
flapply <- future:::flapply
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
supportedStrategies <- future:::supportedStrategies
tweakExpression <- future:::tweakExpression
whichIndex <- future:::whichIndex

## Local functions for test scripts
printf <- function(...) cat(sprintf(...))
mstr <- function(...) message(paste(capture.output(str(...)), collapse="\n"))
attachLocally <- function(x, envir=parent.frame()) {
  for (name in names(x)) {
    assign(name, value=x[[name]], envir=envir)
  }
}
