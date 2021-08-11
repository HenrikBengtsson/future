library(parallel)

pid <- Sys.getpid()
message("Main PID: ", pid)

if (exists("mcparallel", mode="function", envir=getNamespace("parallel"))) {
  cl <- makeCluster(1L, type = "FORK")

  ## Emulate R worker crash
  res <- tryCatch(clusterEvalQ(cl, quit(save = "no")), error = identity)
  stopifnot(inherits(res, "error"))
}

message("Main PID: ", pid)

## Cleanup
rm(pid)

