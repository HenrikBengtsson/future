source("incl/start,load-only.R")
library(parallel)
options(future.debug=FALSE)

pid <- Sys.getpid()
message("Main PID (original): ", pid)

if (exists("mcparallel", mode="function", envir=getNamespace("parallel"))) {
  cl <- makeCluster(1L, type = "FORK", timeout = 60)
  print(cl)

  x <- clusterEvalQ(cl, 42L)
  stopifnot(x == 42L)
  pid2 <- Sys.getpid()
  message("Main PID: ", pid2)
  message("Main PID (original): ", pid)
  stopifnot(pid2 == pid)
  
  ## Force R worker to quit
  res <- tryCatch(x <- clusterEvalQ(cl, quit(save = "no")), error = identity)
  print(res)
  stopifnot(inherits(res, "error"))
  pid2 <- Sys.getpid()
  message("Main PID: ", pid2)
  message("Main PID (original): ", pid)
  stopifnot(pid2 == pid)

  ## Cleanup
  print(cl)
  ## FIXME: Why doesn't this work here? It causes the below future to stall.
  # stopCluster(cl)
  pid2 <- Sys.getpid()
  message("Main PID: ", pid2)
  message("Main PID (original): ", pid)
  stopifnot(pid2 == pid)

  ## Verify that the reset worked
  cl <- makeCluster(1L, type = "FORK", timeout = 60)
  print(cl)
  x <- clusterEvalQ(cl, 43L)
  stopifnot(x == 43L)
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

source("incl/end.R")
