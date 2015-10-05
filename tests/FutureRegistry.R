library("future")

ovars <- ls()
oopts <- options(warn=1)
plan(eager)

FutureRegistry <- future:::FutureRegistry

message("*** FutureRegistry() ...")

for (where in c("multicore", "rscript")) {
  message(sprintf("*** FutureRegistry('%s', 'add') ...", where))
  f <- future({ 1 }, substitute=TRUE)
  print(f)
  FutureRegistry(where, action="add", future=f)


  message(sprintf("*** FutureRegistry('%s', 'list') ...", where))
  futures <- FutureRegistry(where, action="list")
  print(futures)


  message(sprintf("*** FutureRegistry('%s', 'remove') ...", where))
  FutureRegistry(where, action="remove", future=f)


  message(sprintf("*** FutureRegistry('%s', 'list') ...", where))
  futures <- FutureRegistry(where, action="list")
  print(futures)


  message(sprintf("*** FutureRegistry('%s', 'add') ...", where))
  f <- eager({ 2 })
  print(f)
  FutureRegistry(where, action="add", future=f)


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
