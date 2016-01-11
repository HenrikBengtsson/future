library("future")

ovars <- ls()
oopts <- options(warn=1)
plan(eager)

FutureRegistry <- future:::FutureRegistry

message("*** FutureRegistry() ...")

for (where in c("multicore", "rscript")) {
  message(sprintf("*** FutureRegistry('%s', 'list') ...", where))
  futures <- FutureRegistry(where, action="list")
  print(futures)
  stopifnot(length(futures) == 0L)


  message(sprintf("*** FutureRegistry('%s', 'add') ...", where))
  f <- future({ 1 })
  print(f)
  FutureRegistry(where, action="add", future=f)


  message(sprintf("*** FutureRegistry('%s', 'list') ...", where))
  futures <- FutureRegistry(where, action="list")
  print(futures)
  stopifnot(length(futures) == 1L)


  message(sprintf("*** FutureRegistry('%s', 'remove') ...", where))
  FutureRegistry(where, action="remove", future=f)


  message(sprintf("*** FutureRegistry('%s', 'list') ...", where))
  futures <- FutureRegistry(where, action="list")
  print(futures)
  stopifnot(length(futures) == 0L)


  message(sprintf("*** FutureRegistry('%s', 'add') ...", where))
  f <- future({ 2 })
  print(f)
  FutureRegistry(where, action="add", future=f)


  message(sprintf("*** FutureRegistry('%s', 'list') ...", where))
  futures <- FutureRegistry(where, action="list")
  print(futures)
  stopifnot(length(futures) == 1L)


  message(sprintf("*** FutureRegistry('%s', 'collect-first') ...", where))
  FutureRegistry(where, action="collect-first")

  futures <- FutureRegistry(where, action="list")
  print(futures)
  stopifnot(length(futures) < 1L)

  message(sprintf("*** FutureRegistry('%s', 'add') ...", where))
  f <- future({ 2 })
  print(f)
  FutureRegistry(where, action="add", future=f)


  message(sprintf("*** FutureRegistry('%s', 'reset') ...", where))
  FutureRegistry(where, action="reset")


  message(sprintf("*** FutureRegistry('%s', 'list') ...", where))
  futures <- FutureRegistry(where, action="list")
  print(futures)
  stopifnot(length(futures) == 0L)
}

message("*** FutureRegistry() ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
