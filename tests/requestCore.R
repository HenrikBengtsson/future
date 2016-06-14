library("future")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)

requestCore <- future:::requestCore

message("*** requestCore() ...")

message("*** requestCore() - exceptions ...")

res <- try(requestCore(function() {}, workers=1L), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** requestCore() - exceptions ... DONE")

message("*** requestCore() ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
