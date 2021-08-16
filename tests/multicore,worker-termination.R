source("incl/start.R")
library("listenv")

message("*** multicore() - terminating workers ...")

if (supportsMulticore() && availableCores("multicore") >= 2L) {
  plan(multicore, workers = 2L)

  ## Force R worker to quit
  x %<-% tools::pskill(pid = Sys.getpid())
  res <- tryCatch(y <- x, error = identity)
  print(res)
  stopifnot(inherits(res, "FutureError"))
}

message("*** multicore() - terminating workers ... DONE")

source("incl/end.R")
