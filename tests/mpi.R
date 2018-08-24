source("incl/start.R")
stopCluster <- parallel::stopCluster
test_mpi <- isTRUE(as.logical(Sys.getenv("_R_CHECK_FULL_", "TRUE")))

message("*** MPI ...")

pkg <- "Rmpi"
if (test_mpi && requireNamespace(pkg, quietly = TRUE)) {
  cl <- makeClusterMPI(availableCores())
  str(cl)
  
  plan(cluster, workers = cl)

  fs <- lapply(1:2, FUN = function(x) future({
    printf("Hostname: %s\n", Sys.info()[["nodename"]])
    printf("PID: %d\n", Sys.getpid())
    Sys.sleep(0.5)
    x^2
  }))
  print(fs)
  vs <- values(fs)
  print(vs)
  stopifnot(all(unlist(vs) == c(1, 4)))

  stopCluster(cl)
  str(cl)
}

message("*** MPI ... DONE")

source("incl/end.R")
