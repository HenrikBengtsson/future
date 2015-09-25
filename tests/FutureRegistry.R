library("future")

ovars <- ls()
oopts <- options(warn=1)

FutureRegistry <- future:::FutureRegistry

message("*** FutureRegistry() ...")

for (where in c("multicore", "rscript")) {
  message(sprintf("*** FutureRegistry('%s', 'add') ...", where))
  future <- Future({ 1 }, substitute=TRUE)
  print(future)

  FutureRegistry(where, action="add", future=future)


  message(sprintf("*** FutureRegistry('%s', 'list') ...", where))
  futures <- FutureRegistry(where, action="list")
  print(futures)


  message(sprintf("*** FutureRegistry('%s', 'remove') ...", where))
  FutureRegistry(where, action="remove", future=future)


  message(sprintf("*** FutureRegistry('%s', 'list') ...", where))
  futures <- FutureRegistry(where, action="list")
  print(futures)


  message(sprintf("*** FutureRegistry('%s', 'collect') ...", where))
  FutureRegistry(where, action="collect")

  futures <- FutureRegistry(where, action="list")
  print(futures)
}

message("*** FutureRegistry() ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
