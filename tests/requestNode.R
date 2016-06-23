source("incl/start.R")

message("*** requestNode() ...")

message("*** requestNode() - exceptions ...")

res <- try(requestNode(function() {}, workers=1L), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(requestNode(function() {}, times=0L), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** requestNode() - exceptions ... DONE")


message("*** requestNode() - timeout ...")

plan(multisession, workers=2L)
f <- future({ Sys.sleep(3); 1 })

res <- try(requestNode(function() {}, workers=f$workers, times=1L, delta=0.1))
stopifnot(inherits(res, "try-error"))

message("*** requestNode() - timeout ... DONE")

message("*** requestNode() ... DONE")

source("incl/end.R")
