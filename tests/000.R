library(parallel)

pid <- Sys.getpid()
message("Main PID (original): ", pid)

if (exists("mcparallel", mode="function", envir=getNamespace("parallel"))) {
  cl <- makeCluster(1L, type = "FORK", timeout = 60)
  print(cl)

  message("*** cluster() - crashed worker ...")

  x <- clusterEvalQ(cl, 42L)
  stopifnot(x == 42L)
  
  ## Force R worker to quit
  res <- tryCatch(x <- clusterEvalQ(cl, quit(save = "no")), error = identity)
  print(res)
  stopifnot(inherits(res, "error"))

  ## Cleanup
  print(cl)
  ## FIXME: Why doesn't this work here? It causes the below future to stall.
  # stopCluster(cl)

  ## Verify that the reset worked
  cl <- makeCluster(1L, type = "FORK", timeout = 60)
  print(cl)
  x <- clusterEvalQ(cl, 43L)
  stopifnot(x == 43L)
  
  message("*** cluster() - crashed worker ... DONE")

  ## Sanity checks
  pid2 <- Sys.getpid()
  message("Main PID: ", pid2)
  message("Main PID (original): ", pid)
  stopifnot(pid2 == pid)
  
  ## Cleanup
  print(cl)
  str(cl)
  stopCluster(cl)
}

## Sanity checks
pid2 <- Sys.getpid()
message("Main PID: ", pid2)
message("Main PID (original): ", pid)
stopifnot(pid2 == pid)
