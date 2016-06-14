library("future")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)


message("*** Future class ...")

message("*** Future class - exception ...")

f <- Future()
print(f)
res <- try(value(f), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

## values() is an alias for value() for Future
res <- try(values(f), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** Future class - exception ... DONE")

message("*** Future class ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
