source("incl/start.R")

strategies <- supportedStrategies()

message("*** resolved() - assert non-blocking while launching lazy futures ...")

for (strategy in strategies) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)

  message("Creating lazy futures:")
  xs <- as.list(1:3)
  fs <- lapply(xs, FUN = function(kk) {
    future({
      Sys.sleep(kk)
      kk
    }, lazy = TRUE)
  })
  vs <- vector("list", length = length(fs))
  ss <- vapply(fs, FUN = function(f) f$state, NA_character_)
  print(ss)
  stopifnot(all(ss == "created"))
  rs <- rep(NA, times = length(fs))
  
  for (ff in seq_along(fs)) {
    for (kk in ff:length(fs)) {
      message(sprintf("Checking if future #%d is resolved:", kk))
      rs[[kk]] <- resolved(fs[[kk]])
      ss <- vapply(fs, FUN = function(f) f$state, NA_character_)
      print(ss)
      if (inherits(fs[[kk]], "UniprocessFuture")) {
        stopifnot(rs[[kk]])
        stopifnot(ss[[kk]] == "finished")
      } else if (inherits(fs[[kk]], "MultiprocessFuture")) {
        if (inherits(fs[[kk]], "ClusterFuture")) {
          if (nbrOfWorkers() + ff - 1L >= kk) {
            stopifnot(ss[[kk]] == "running")
          } else {
            stopifnot(ss[[kk]] == "created")
          }
        }	
        stopifnot(!rs[[kk]])
      }
    } ## for (kk ...)
  
    message(sprintf("Waiting for future #%d to finish ... ", ff), appendLF = FALSE)
    vs[[ff]] <- value(fs[[ff]])
    message("done")
  
    rs[[ff]] <- resolved(fs[[ff]])
    stopifnot(rs[ff])
  
    ss <- vapply(fs, FUN = function(f) f$state, NA_character_)
    stopifnot(ss[ff] == "finished")
    nbrOfFinished <- sum(ss == "finished")
    if (inherits(fs[[kk]], "UniprocessFuture")) {
      stopifnot(nbrOfFinished == length(fs))
    } else {
      stopifnot(nbrOfFinished == ff)
    }
  } ## for (ff ...)
  
  ss <- vapply(fs, FUN = function(f) f$state, NA_character_)
  print(ss)
  stopifnot(all(ss == "finished"))
  
  message("Collecting values:")
  vs <- values(fs)
  str(vs)
  stopifnot(identical(vs, xs))

  message(sprintf("- plan('%s') ... DONE", strategy))
} ## for (strategy ...)

message("*** resolved() - assert non-blocking while launching lazy futures ... DONE")

source("incl/end.R")

