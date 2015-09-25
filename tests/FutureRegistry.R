library("future")

ovars <- ls()
oopts <- options(warn=1)

FutureRegistry <- future:::FutureRegistry

message("*** FutureRegistry() ...")

message("*** FutureRegistry('add') ...")
future <- Future({ 1 }, substitute=TRUE)
print(future)

FutureRegistry("multicore", action="add", future=future)


message("*** FutureRegistry('list') ...")
futures <- FutureRegistry("multicore", action="list")
print(futures)


message("*** FutureRegistry('remove') ...")
FutureRegistry("multicore", action="remove", future=future)


message("*** FutureRegistry('list') ...")
futures <- FutureRegistry("multicore", action="list")
print(futures)


message("*** FutureRegistry('collect') ...")
FutureRegistry("multicore", action="collect")

futures <- FutureRegistry("multicore", action="list")
print(futures)


message("*** FutureRegistry() ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
