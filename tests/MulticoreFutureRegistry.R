library("future")

ovars <- ls()
oopts <- options(warn=1)
plan(multicore)

MulticoreFutureRegistry <- future:::MulticoreFutureRegistry

message("*** MulticoreFutureRegistry() ...")

message("*** MulticoreFutureRegistry('add') ...")
future <- MulticoreFuture({ 1 }, substitute=TRUE)
print(future)

MulticoreFutureRegistry("add", future=future)


message("*** MulticoreFutureRegistry('list') ...")
futures <- MulticoreFutureRegistry("list")
print(futures)


message("*** MulticoreFutureRegistry('remove') ...")
MulticoreFutureRegistry("remove", future=future)


message("*** MulticoreFutureRegistry('list') ...")
futures <- MulticoreFutureRegistry("list")
print(futures)


message("*** MulticoreFutureRegistry('collect') ...")
MulticoreFutureRegistry("collect")

futures <- MulticoreFutureRegistry("list")
print(futures)


message("*** MulticoreFutureRegistry() ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
