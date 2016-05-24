library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)

message("*** Nested futures - mc.cores ...")

strategies <- c("multisession")
if (supportsMulticore()) strategies <- c(strategies, "multicore")

pid <- Sys.getpid()
cat(sprintf("Main PID: %d\n", pid))

for (mc in 0:3) {
  message(sprintf("- mc.cores=%d ...", mc))
  options(mc.cores=mc)

  for (strategy in strategies) {
    message(sprintf("plan(list('eager', '%s')):", strategy))
    plan(list('eager', strategy))
    a %<-% {
      b1 %<-% Sys.getpid()
      b2 %<-% Sys.getpid()
      list(pid=Sys.getpid(), pid1=b1, pid2=b2)
    }
    print(a)
    stopifnot(a$pid == pid)
    stopifnot((mc <= 1 && a$pid1 == pid) || (a$pid1 != pid))
    stopifnot((mc <= 1 && a$pid2 == pid) || (a$pid2 != pid))
    stopifnot((mc <= 1 && a$pid2 == a$pid1) || (a$pid2 != a$pid1))

    message(sprintf("plan(list('%s', 'eager')):", strategy))
    plan(list(strategy, 'eager'))
    a %<-% {
      b1 %<-% Sys.getpid()
      b2 %<-% Sys.getpid()
      list(pid=Sys.getpid(), pid1=b1, pid2=b2)
    }
    print(a)
    stopifnot((mc <= 1 && a$pid  == pid) || (a$pid  != pid))
    stopifnot((mc <= 1 && a$pid1 == pid) || (a$pid1 != pid))
    stopifnot((mc <= 1 && a$pid2 == pid) || (a$pid2 != pid))
    stopifnot(a$pid2 == a$pid1)

    message(sprintf("plan(list('%s', '%s')):", strategy, strategy))
    plan(list(strategy, strategy))
    a %<-% {
      b1 %<-% { Sys.sleep(1); Sys.getpid() }
      b2 %<-% Sys.getpid()
      list(pid=Sys.getpid(), pid1=b1, pid2=b2)
    }
    print(a)
    stopifnot((mc <= 1 && a$pid  == pid) || (a$pid  != pid))
    stopifnot((mc <= 1 && a$pid1 == pid) || (a$pid1 != pid))
    stopifnot((mc <= 1 && a$pid2 == pid) || (a$pid2 != pid))
    stopifnot(a$pid2 == a$pid1)

    next
    message(sprintf("plan(list('%s':3, '%s':3)):", strategy, strategy))
    plan(list(tweak(strategy, workers=3), tweak(strategy, workers=3)))
    a %<-% {
      b1 %<-% Sys.getpid()
      b2 %<-% Sys.getpid()
      list(pid=Sys.getpid(), pid1=b1, pid2=b2)
    }
    print(a)
    stopifnot((mc <= 1 && a$pid  == pid) || (a$pid  != pid))
    stopifnot((mc <= 1 && a$pid1 == pid) || (a$pid1 != pid))
    stopifnot((mc <= 1 && a$pid2 == pid) || (a$pid2 != pid))
    stopifnot((mc <= 1 && a$pid2 == a$pid1) || (a$pid2 != a$pid1))
    stopifnot(a$pid  != pid)
    stopifnot(a$pid1 != pid)
    stopifnot(a$pid2 != pid)
    stopifnot(a$pid2 != a$pid1)
  } ## for (strategy ...)

  message(sprintf(" - mc.cores=%d ... DONE", mc))
} ## for (mc ...)

message("*** Nested futures - mc.cores ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
