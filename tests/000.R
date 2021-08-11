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


## Sanity checks
pid2 <- Sys.getpid()
message("Main PID (original): ", pid)
message("Main PID: ", pid2)
stopifnot(pid2 == pid)

message("*** cluster() - exception when re-creating workers ...")
## https://github.com/HenrikBengtsson/future/issues/261

plan(cluster, workers = "localhost")
f <- future(1)
plan(cluster, workers = "localhost", .skip = FALSE)
res <- tryCatch({
  value(f)
}, FutureError = function(ex) {
  message(conditionMessage(ex))
  ex
})
stopifnot(inherits(res, "FutureError"))

message("*** cluster() - exception when re-creating workers ... DONE")


message("*** cluster() ... DONE")

## Sanity checks
pid2 <- Sys.getpid()
message("Main PID (original): ", pid)
message("Main PID: ", pid2)
stopifnot(pid2 == pid)

source("incl/end.R")
