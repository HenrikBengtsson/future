source("incl/start.R")

message("*** requestCore() ...")

message("*** requestCore() - exceptions ...")

## There's only one core to choose from
res <- try(requestCore(function() {}, workers=1L), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(requestCore(function() {}, timeout=-1.0), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(requestCore(function() {}, alpha=0.0), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** requestCore() - exceptions ... DONE")


message("*** requestCore() - timeout ...")

plan(multicore, workers=2L)
a %<-% { Sys.sleep(3); 1 }
res <- try(requestCore(function() {}, workers=2L, timeout=1L, delta=0.1))
stopifnot(inherits(res, "try-error"))
stopifnot(a == 1)

message("*** requestCore() - timeout ... DONE")

message("*** requestCore() ... DONE")

source("incl/end.R")
