source("incl/start.R")
options(future.debug = FALSE)

types <- if (supportsMulticore() && !on_solaris && !covr_testing) "FORK" else NULL

pid <- Sys.getpid()
message("Main PID (original): ", pid)
cl <- NULL

library("parallel")
for (type in types) {
  message(sprintf("Test set #2 with cluster type %s ...", sQuote(type)))

  message("*** cluster() - setDefaultCluster() ...")
  
  cl <- makeCluster(1L, type = type, timeout = 60)
  print(cl)
  
  setDefaultCluster(cl)
  ## FIXME: Make plan(cluster, workers = NULL) work such that
  ## setDefaultCluster() is actually tested.
  plan(cluster)
  
  pid <- Sys.getpid()
  message(pid)
  
  a %<-% Sys.getpid()
  message(a)
  
  setDefaultCluster(NULL)
  
  message("*** cluster() - setDefaultCluster() ... DONE")

  ## Sanity checks
  pid2 <- Sys.getpid()
  message("Main PID (original): ", pid)
  message("Main PID: ", pid2)
  stopifnot(pid2 == pid)

  ## Cleanup
  print(cl)
  str(cl)
  parallel::stopCluster(cl)
  plan(sequential)

  message(sprintf("Test set #2 with cluster type %s ... DONE", sQuote(type)))
} ## for (type ...)

  
for (type in types) {
  message(sprintf("Test set #3 with cluster type %s ...", sQuote(type)))
  
  cl <- parallel::makeCluster(1L, type = type, timeout = 60)
  print(cl)


  ## Crashing FORK:ed processes seems too harsh on R (< 3.3.0)
  if (type != "FORK" || getRversion() >= "3.3.0") {
  message("*** cluster() - crashed worker ...")
  
  plan(cluster, workers = cl, .skip = FALSE)
  x %<-% 42L
  stopifnot(x == 42L)
  
  ## Force R worker to quit
  x %<-% quit(save = "no")
  res <- tryCatch(y <- x, error = identity)
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
  x %<-% 43L
  stopifnot(x == 43L)
  
  message("*** cluster() - crashed worker ... DONE")
  } ## if (type != "FORK" || getRversion() >= "3.3.0")

  ## Sanity checks
  pid2 <- Sys.getpid()
  message("Main PID (original): ", pid)
  message("Main PID: ", pid2)
  stopifnot(pid2 == pid)
  
  ## Cleanup
  print(cl)
  str(cl)
  parallel::stopCluster(cl)

  ## Sanity checks
  pid2 <- Sys.getpid()
  message("Main PID (original): ", pid)
  message("Main PID: ", pid2)
  stopifnot(pid2 == pid)

  message(sprintf("Test set #3 with cluster type %s ... DONE", sQuote(type)))
} ## for (type ...)

## Sanity checks
pid2 <- Sys.getpid()
message("Main PID (original): ", pid)
message("Main PID: ", pid2)
stopifnot(pid2 == pid)

message("*** cluster() ... DONE")

## Sanity checks
pid2 <- Sys.getpid()
message("Main PID (original): ", pid)
message("Main PID: ", pid2)
stopifnot(pid2 == pid)

source("incl/end.R")
