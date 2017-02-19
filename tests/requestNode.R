source("incl/start.R")

message("*** requestNode() ...")

message("*** requestNode() - exceptions ...")

workers <- makeClusterPSOCK(2L)
print(workers)

res <- try(requestNode(function() {}, workers=workers, timeout=-1.0), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(requestNode(function() {}, workers=workers, alpha=0), silent=TRUE)
stopifnot(inherits(res, "try-error"))

parallel::stopCluster(workers)

message("*** requestNode() - exceptions ... DONE")

message("*** requestNode() - timeout ...")

plan(multisession, workers=2L)
f <- future({ Sys.sleep(3); 1 })

res <- try(requestNode(function() {}, workers=f$workers, timeout=1L, delta=0.1))
stopifnot(inherits(res, "try-error"))

message("*** requestNode() - timeout ... DONE")

message("*** requestNode() ... DONE")

source("incl/end.R")
