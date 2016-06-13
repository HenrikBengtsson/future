library("future")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)


message("*** Future class ...")

f <- Future()
res <- try(value(f), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** Future class ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
