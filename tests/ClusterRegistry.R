library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L)

ClusterRegistry <- future:::ClusterRegistry

message("*** ClusterRegistry() ... ")

for (cores in 1:min(3L, availableCores())) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  message("Available cores: ", availableCores())

  ## In case sessions have been created in previous tests
  ClusterRegistry("stop")

  res <- try({
    cluster <- ClusterRegistry("set", workers=availableCores()-1L)
    print(cluster)
  }, silent=TRUE)
  if (cores == 1) stopifnot(inherits(res, "try-error"))

  cluster <- ClusterRegistry(action="start", workers=1L)
  print(cluster)
  stopifnot(length(cluster) == 1L)

  cluster <- ClusterRegistry(action="get")
  print(cluster)
  stopifnot(length(cluster) == 1L)

  cluster <- ClusterRegistry(action="stop")
  print(cluster)
  stopifnot(length(cluster) == 0L)

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** ClusterRegistry() ... DONE")


## Cleanup
options(oopts)
rm(list=setdiff(ls(), ovars))
