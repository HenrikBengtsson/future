source("incl/start.R")
library("listenv")
options(future.debug = FALSE)

message("*** Nested futures - mc.cores ...")

strategies <- c("multisession")
if (supportsMulticore()) strategies <- c(strategies, "multicore")

pid <- Sys.getpid()
cat(sprintf("Main PID: %d\n", pid))

cat("Available cores on this machine:\n")
cores <- availableCores()
print(cores)

for (mc in 1:2) {
  message(sprintf("- mc.cores = %d ...", mc))
  options(mc.cores = mc)
  mc2 <- min(mc, cores)
  
  for (strategy in strategies) {
    message(sprintf("plan(list('sequential', '%s')):", strategy))
    plan(list('sequential', strategy))
    a %<-% {
      b1 %<-% Sys.getpid()
      b2 %<-% Sys.getpid()
      list(pid = Sys.getpid(), cores = availableCores(), pid1 = b1, pid2 = b2)
    }
    print(a)
    stopifnot(a$pid == pid)
    stopifnot((mc2 <= 1 && a$pid1 == pid) || (a$pid1 != pid))
    stopifnot((mc2 <= 1 && a$pid2 == pid) || (a$pid2 != pid))
    stopifnot(((mc2 <= 1 || a$cores <= 2) && a$pid2 == a$pid1) || (a$pid2 != a$pid1))

    message(sprintf("plan(list('sequential', '%s':2)):", strategy))
    plan(list('sequential', tweak(strategy, workers = 2)))
    a %<-% {
      b1 %<-% Sys.getpid()
      b2 %<-% Sys.getpid()
      list(pid = Sys.getpid(), cores = availableCores(), pid1 = b1, pid2 = b2)
    }
    print(a)
    stopifnot(a$pid == pid)
    stopifnot((mc2 <= 1 && a$pid1 == pid) || (a$pid1 != pid))
    stopifnot((mc2 <= 1 && a$pid2 == pid) || (a$pid2 != pid))
    stopifnot((mc2 <= 1 && a$pid2 == a$pid1) || (a$pid2 != a$pid1))

    message(sprintf("plan(list('%s', 'sequential')):", strategy))
    plan(list(strategy, 'sequential'))
    a %<-% {
      b1 %<-% Sys.getpid()
      b2 %<-% Sys.getpid()
      list(pid = Sys.getpid(), cores = availableCores(), pid1 = b1, pid2 = b2)
    }
    print(a)
    stopifnot((mc2 <= 1 && a$pid  == pid) || (a$pid  != pid))
    stopifnot((mc2 <= 1 && a$pid1 == pid) || (a$pid1 != pid))
    stopifnot((mc2 <= 1 && a$pid2 == pid) || (a$pid2 != pid))
    stopifnot(a$pid2 == a$pid1)

    message(sprintf("plan(list('%s', '%s')):", strategy, strategy))
    plan(list(strategy, strategy))
    a %<-% {
      b1 %<-% { Sys.sleep(1); Sys.getpid() }
      b2 %<-% Sys.getpid()
      list(pid = Sys.getpid(), cores = availableCores(), pid1 = b1, pid2 = b2)
    }
    print(a)
    stopifnot((mc2 <= 1 && a$pid  == pid) || (a$pid  != pid))
    stopifnot((mc2 <= 1 && a$pid1 == pid) || (a$pid1 != pid))
    stopifnot((mc2 <= 1 && a$pid2 == pid) || (a$pid2 != pid))
    stopifnot(a$pid2 == a$pid1)

    message(sprintf("plan(list('%s':2, '%s':2)):", strategy, strategy))
    plan(list(tweak(strategy, workers = 2), tweak(strategy, workers = 2)))
    a %<-% {
      b1 %<-% Sys.getpid()  ## This stalls
      b2 %<-% Sys.getpid()
      list(pid = Sys.getpid(), cores = availableCores(), pid1 = b1, pid2 = b2)
    }
    print(a)
    stopifnot(a$pid  != pid)
    stopifnot(a$pid1 != pid)
    stopifnot(a$pid2 != pid)
    stopifnot(a$pid2 != a$pid1)
  } ## for (strategy ...)

  message(sprintf(" - mc.cores = %d ... DONE", mc))
} ## for (mc ...)

message("*** Nested futures - mc.cores ... DONE")

source("incl/end.R")
