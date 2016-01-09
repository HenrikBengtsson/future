library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L)

sessions <- future:::sessions

message("*** sessions() ...")

cluster <- sessions()
print(cluster)

cluster <- sessions(action="start", n=1L)
print(cluster)
stopifnot(length(cluster) == 1L)

cluster <- sessions(action="get")
print(cluster)
stopifnot(length(cluster) == 1L)

cluster <- sessions(action="stop")
print(cluster)
stopifnot(length(cluster) == 0L)

message("*** sessions() ... DONE")


## Cleanup
options(oopts)
rm(list=setdiff(ls(), ovars))
