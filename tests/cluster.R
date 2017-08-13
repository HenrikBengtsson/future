source("incl/start.R")
library("listenv")
options(future.debug = FALSE)
message("*** cluster() ...")

message("Library paths: ", paste(sQuote(.libPaths()), collapse = ", "))
message("Package path: ", sQuote(system.file(package = "future")))

types <- "PSOCK"
if (supportsMulticore()) types <- c(types, "FORK")

## WORKAROUND: covr::package_coverage() -> merge_coverage() -> ... produces
## "Error in readRDS(x) : error reading from connection" for type = "FORK".
## Is this related to mcparallel() comments in help("package_coverage")?
## /HB 2017-05-20
if (covr_testing) types <- setdiff(types, "FORK")

pid <- Sys.getpid()
message("Main PID (original): ", pid)
cl <- NULL
for (type in types) {
  message(sprintf("Test set #1 with cluster type %s ...", sQuote(type)))

  for (cores in 1:availCores) {
    message(sprintf("Testing with %d cores on type = %s ...",
                    cores, sQuote(type)))
    options(mc.cores = cores)
  
    ## Set up a cluster with <cores> nodes (explicitly)
    cl <- parallel::makeCluster(cores, type = type)
    print(cl)
    
    plan(cluster, workers = cl)
  
    ## No global variables
    f <- try(cluster({
      42L
    }, workers = cl), silent = FALSE)
    print(f)
    stopifnot(inherits(f, "ClusterFuture"))
  
    print(resolved(f))
    y <- value(f)
    print(y)
    stopifnot(y == 42L)


    ## Set up a cluster with <cores> nodes (implicitly)
    plan(cluster, workers = cores)
  
    ## No global variables
    f <- try(cluster({
      42L
    }, workers = cl), silent = FALSE)
    print(f)
    stopifnot(inherits(f, "ClusterFuture"))
  
    print(resolved(f))
    y <- value(f)
    print(y)
    stopifnot(y == 42L)
  
  
    ## A global variable
    a <- 0
    f <- try(future({
      b <- 3
      c <- 2
      a * b * c
    }))
    print(f)
  
  
    ## A cluster future is evaluated in a separate
    ## R session process.  Changing the value of a global
    ## variable should not affect the result of the
    ## future.
    a <- 7  ## Make sure globals are frozen
    v <- value(f)
    print(v)
    stopifnot(v == 0)
  
  
    message("*** cluster() with globals and blocking")
    x <- listenv()
    for (ii in 1:3) {
      message(sprintf(" - Creating cluster future #%d ...", ii))
      x[[ii]] <- future({ ii })
    }
    message(sprintf(" - Resolving %d cluster futures", length(x)))
    v <- sapply(x, FUN = value)
    stopifnot(all(v == 1:3))
  
  
    message("*** cluster() and errors")
    f <- future({
      stop("Whoops!")
      1
    })
    print(f)
    v <- value(f, signal = FALSE)
    print(v)
    stopifnot(inherits(v, "simpleError"))
  
    res <- tryCatch(value(f), error = identity)
    print(res)
    stopifnot(inherits(res, "error"))
  
    ## Error is repeated
    res <- tryCatch(value(f), error = identity)
    print(res)
    stopifnot(inherits(res, "error"))
  
  
    message("*** cluster() - too large globals ...")
    ooptsT <- options(future.globals.maxSize = 1024 * 4L)
  
    limit <- getOption("future.globals.maxSize")
    cat(sprintf("Max total size of globals: %g bytes\n", limit))
  
    ## A large object
    a <- 1:1014
    yTruth <- sum(a)
    size <- object.size(a)
    cat(sprintf("a: %g bytes\n", size))
    f <- future({ sum(a) })
    print(f)
    rm(list = "a")
    v <- value(f)
    print(v)
    stopifnot(v == yTruth)
  
  
    ## A too large object
    a <- 1:1019 ## also on 32-bit platforms
    yTruth <- sum(a)
    size <- object.size(a)
    cat(sprintf("a: %g bytes\n", size))
    res <- tryCatch(f <- future({ sum(a) }), error = identity)
    rm(list = "a")
    stopifnot(inherits(res, "error"))
  
    ## Undo options changed in this test
    options(ooptsT)
  
    message("*** cluster() - too large globals ... DONE")
  
    message("*** cluster() - installed libraries ...")
    f <- try(cluster({
      list(
        libPaths = .libPaths()
      )
    }, workers = cl), silent = FALSE)
    print(f)
    stopifnot(inherits(f, "ClusterFuture"))
    v <- value(f)
    message(paste(capture.output(str(v)), collapse = "\n"))
    message("*** cluster() - installed packages ... DONE")
  
  
    message("*** cluster() - assert covr workaround ...")
    f <- try(cluster({
      future:::hpaste(1:100)
    }, workers = cl), silent = FALSE)
    print(f)
    stopifnot(inherits(f, "ClusterFuture"))
    v <- value(f)
    message(v)
    stopifnot(v == hpaste(1:100))
    message("*** cluster() - assert covr workaround ... DONE")
  
    message(sprintf("Testing with %d cores on type = %s ... DONE",
                    cores, sQuote(type)))
  } ## for (cores ...)

  message("*** cluster() - exceptions ...")
  
  res <- tryCatch(cluster(42L, workers = NA), error = identity)
  print(res)
  stopifnot(inherits(res, "error"))
  
  message("*** cluster() - exceptions ... DONE")

  message("*** cluster() - assert registry behavior ...")
  
  ## Explicitly created clusters are *not* added to the registry
  cl <- parallel::makeCluster(cores, type = type)
  plan(cluster, workers = cl)
  clR <- ClusterRegistry("get")
  stopifnot(is.null(clR))
  
  ## ... and therefore changing plans shouldn't change anything
  plan(sequential)
  clR <- ClusterRegistry("get")
  stopifnot(is.null(clR))
  
  message("*** cluster() - assert registry behavior ... DONE")

  ## Sanity checks
  pid2 <- Sys.getpid()
  message("Main PID (original): ", pid)
  message("Main PID: ", pid2)
  stopifnot(pid2 == pid)

  ## Cleanup
  print(cl)
  str(cl)
  parallel::stopCluster(cl)
  plan(sequential)
  
  message(sprintf("Test set #1 with cluster type %s ... DONE", sQuote(type)))
} ## for (type ...)


library("parallel")
for (type in types) {
  if (on_solaris) next
 
  message(sprintf("Test set #2 with cluster type %s ...", sQuote(type)))

  message("*** cluster() - setDefaultCluster() ...")
  
  cl <- makeCluster(1L, type = type)
  print(cl)
  
  setDefaultCluster(cl)
  ## FIXME: Make plan(cluster, workers = NULL) work such that
  ## setDefaultCluster() is actually tested.
  plan(cluster)
  
  pid <- Sys.getpid()
  message(pid)
  
  a %<-% Sys.getpid()
  message(a)
  
  setDefaultCluster(NULL)
  
  message("*** cluster() - setDefaultCluster() ... DONE")

  ## Sanity checks
  pid2 <- Sys.getpid()
  message("Main PID (original): ", pid)
  message("Main PID: ", pid2)
  stopifnot(pid2 == pid)

  ## Cleanup
  print(cl)
  str(cl)
  parallel::stopCluster(cl)
  plan(sequential)

  message(sprintf("Test set #2 with cluster type %s ... DONE", sQuote(type)))
} ## for (type ...)

  
for (type in types) {
  if (on_solaris) next
 
  message(sprintf("Test set #3 with cluster type %s ...", sQuote(type)))
  
  cl <- parallel::makeCluster(1L, type = type)
  print(cl)

  message("*** cluster() - crashed worker ...")
  
  plan(cluster, workers = cl)
  x %<-% 42L
  stopifnot(x == 42L)
  
  ## Force R worker to quit
  x %<-% quit(save = "no")
  res <- tryCatch(y <- x, error = identity)
  print(res)
  stopifnot(
    inherits(res, "simpleError"),
    inherits(res, "FutureError")
  )

  ## Cleanup
  print(cl)
  ## FIXME: Why doesn't this work here? It causes the below future to stall.
  # parallel::stopCluster(cl)

  ## Verify that the reset worked
  cl <- parallel::makeCluster(1L, type = type)
  print(cl)
  plan(cluster, workers = cl)
  x %<-% 42L
  stopifnot(x == 42L)
  
  message("*** cluster() - crashed worker ... DONE")

  ## Sanity checks
  pid2 <- Sys.getpid()
  message("Main PID (original): ", pid)
  message("Main PID: ", pid2)
  stopifnot(pid2 == pid)
  
  ## Cleanup
  print(cl)
  str(cl)
  parallel::stopCluster(cl)
    
  message(sprintf("Test set #3 with cluster type %s ... DONE", sQuote(type)))
} ## for (type ...)

message("*** cluster() ... DONE")

## Sanity checks
pid2 <- Sys.getpid()
message("Main PID (original): ", pid)
message("Main PID: ", pid2)
stopifnot(pid2 == pid)

source("incl/end.R")
