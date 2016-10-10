source("incl/start.R")

message("*** ClusterRegistry() ... ")

for (cores in 1:min(3L, availableCores())) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  message("Available cores: ", availableCores())

  ## In case sessions have been created in previous tests
  message("Stopping any running cluster ...")
  ClusterRegistry("stop")
  cluster <- ClusterRegistry("get")
  stopifnot(length(cluster) == 0)
  message("Stopping any running cluster ... DONE")

  message("Starting cluster ...")
  res <- try({
    cluster <- ClusterRegistry("set", workers=availableCores()-1L)
    str(cluster)
    print(cluster)
  }, silent=TRUE)
  if (cores == 1) stopifnot(inherits(res, "try-error"))
  message("Starting cluster ... DONE")

  message("Starting single-worker cluster ...")
  cluster <- ClusterRegistry(action="start", workers=1L)
  str(cluster)
  print(cluster)
  stopifnot(length(cluster) == 1L)
  message("Starting single-worker cluster ... DONE")

  cluster <- ClusterRegistry(action="get")
  print(cluster)
  stopifnot(length(cluster) == 1L)

  message("Stopping single-worker cluster ...")
  cluster <- ClusterRegistry(action="stop")
  print(cluster)
  stopifnot(length(cluster) == 0L)
  message("Stopping single-worker cluster ... DONE")

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)


message("*** ClusterRegistry() - exceptions ...")

res <- try(ClusterRegistry(action="start", workers=TRUE))
stopifnot(inherits(res, "try-error"))

message("*** ClusterRegistry() - exceptions ... DONE")


message("*** ClusterRegistry() ... DONE")

source("incl/end.R")
