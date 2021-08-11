source("incl/start.R")
options(future.debug = FALSE)

pid <- Sys.getpid()
message("Main PID (original): ", pid)

if (supportsMulticore() && !on_solaris && !covr_testing) {
  cl <- parallel::makeCluster(1L, type = "FORK", timeout = 60)
  print(cl)

  message("*** cluster() - crashed worker ...")
  
  plan(cluster, workers = cl, .skip = FALSE)
  f <- future(42L)
  x <- value(f)
  stopifnot(x == 42L)
  
  ## Force R worker to quit
  f <- future(quit(save = "no"))
  res <- tryCatch(y <- value(f), error = identity)
  print(res)
  stopifnot(
    inherits(res, "error"),
    inherits(res, "FutureError")
  )

  ## Cleanup
  print(cl)
  ## FIXME: Why doesn't this work here? It causes the below future to stall.
  # parallel::stopCluster(cl)

  ## Verify that the reset worked
  cl <- parallel::makeCluster(1L, type = type, timeout = 60)
  print(cl)
  plan(cluster, workers = cl, .skip = FALSE)
  f <- future(43L)
  x <- value(f)
  stopifnot(x == 43L)
  
  message("*** cluster() - crashed worker ... DONE")

  ## Sanity checks
  pid2 <- Sys.getpid()
  message("Main PID (original): ", pid)
  message("Main PID: ", pid2)
  stopifnot(pid2 == pid)
  
  ## Cleanup
  print(cl)
  str(cl)
  parallel::stopCluster(cl)
}

## Sanity checks
pid2 <- Sys.getpid()
message("Main PID (original): ", pid)
message("Main PID: ", pid2)
stopifnot(pid2 == pid)

source("incl/end.R")
