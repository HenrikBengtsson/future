source("incl/start.R")
makeCluster <- parallel::makeCluster
stopCluster <- parallel::stopCluster
test_mpi <- isTRUE(as.logical(Sys.getenv("_R_CHECK_FULL_", "TRUE")))

message("*** MPI ...")

pkg <- "Rmpi"
if (requireNamespace(pkg, quietly = TRUE)) {
  cl <- makeCluster(availableCores(), type = "MPI")
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

  ## https://stackoverflow.com/a/44317647/1072091
  ## https://stat.ethz.ch/pipermail/r-sig-hpc/2012-January/001199.html
  class(cl) <- setdiff(class(cl), "spawnedMPIcluster")
  stopCluster(cl)
  str(cl)
  ## https://stat.ethz.ch/pipermail/r-sig-hpc/2017-September/002065.html
  ns <- getNamespace("Rmpi")
  if (exists("mpi.comm.free", mode = "function", envir = ns, inherits = FALSE)) {
    mpi.comm.free <- get("mpi.comm.free", mode = "function", envir = ns, inherits = FALSE)
    res <- mpi.comm.free(1)
    print(res)
  }
  ## NOTE: Calling any of the below, will stall R:
  ## res <- Rmpi::mpi.finalize()
  ## res <- Rmpi::mpi.exit()
}

message("*** MPI ... DONE")

source("incl/end.R")
