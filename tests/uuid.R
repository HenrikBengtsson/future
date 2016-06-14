library("future")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)

message("*** uuid() ...")

uuid <- future:::uuid

id0 <- uuid()
print(id0)

## Reset UUID (hack)
environment(uuid)$value <- NULL

id <- uuid()
print(id)
stopifnot(id != id0)

message("*** uuid() ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
