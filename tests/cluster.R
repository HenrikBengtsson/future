source("incl/start.R")
library("listenv")

message("*** cluster() ...")

message("Cluster type: ", parallel:::getClusterOption("type"))
message("Library paths: ", paste(sQuote(.libPaths()), collapse=", "))
message("Package path: ", sQuote(system.file(package="future")))

for (cores in 1:2) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  ## Set up a cluster with <cores> nodes (explicitly)
  cl <- parallel::makeCluster(cores)
  plan(cluster, workers=cl)

  ## No global variables
  f <- try(cluster({
    42L
  }, workers=cl), silent=FALSE)
  print(f)
  stopifnot(inherits(f, "ClusterFuture"))

  print(resolved(f))
  y <- value(f)
  print(y)
  stopifnot(y == 42L)


  ## Set up a cluster with <cores> nodes (implicitly)
  plan(cluster, workers=cores)

  ## No global variables
  f <- try(cluster({
    42L
  }, workers=cl), silent=FALSE)
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
  for (ii in 1:4) {
    message(sprintf(" - Creating cluster future #%d ...", ii))
    x[[ii]] <- future({ ii })
  }
  message(sprintf(" - Resolving %d cluster futures", length(x)))
  v <- sapply(x, FUN=value)
  stopifnot(all(v == 1:4))


  message("*** cluster() and errors")
  f <- future({
    stop("Whoops!")
    1
  })
  print(f)
  v <- value(f, signal=FALSE)
  print(v)
  stopifnot(inherits(v, "simpleError"))

  res <- try(value(f), silent=TRUE)
  print(res)
  stopifnot(inherits(res, "try-error"))

  ## Error is repeated
  res <- try(value(f), silent=TRUE)
  print(res)
  stopifnot(inherits(res, "try-error"))


  message("*** cluster() - too large globals ...")
  ooptsT <- options(future.globals.maxSize=1024*4L)

  limit <- getOption("future.globals.maxSize")
  cat(sprintf("Max total size of globals: %g bytes\n", limit))

  ## A large object
  a <- 1:1014
  yTruth <- sum(a)
  size <- object.size(a)
  cat(sprintf("a: %g bytes\n", size))
  f <- future({ sum(a) })
  print(f)
  rm(list="a")
  v <- value(f)
  print(v)
  stopifnot(v == yTruth)


  ## A too large object
  a <- 1:1019 ## also on 32-bit platforms
  yTruth <- sum(a)
  size <- object.size(a)
  cat(sprintf("a: %g bytes\n", size))
  res <- try(f <- future({ sum(a) }), silent=TRUE)
  rm(list="a")
  stopifnot(inherits(res, "try-error"))

  ## Undo options changed in this test
  options(ooptsT)

  message("*** cluster() - too large globals ... DONE")

  message("*** cluster() - installed packages ...")
  f <- try(cluster({
    list(
      libPaths = .libPaths(),
      pkgs     = installed.packages()
    )
  }, workers=cl), silent=FALSE)
  print(f)
  stopifnot(inherits(f, "ClusterFuture"))
  v <- value(f)
  message(paste(capture.output(str(v)), collapse="\n"))
  message("*** cluster() - installed packages ... DONE")


  message("*** cluster() - assert covr workaround ...")
  f <- try(cluster({
    future:::hpaste(1:100)
  }, workers=cl), silent=FALSE)
  print(f)
  stopifnot(inherits(f, "ClusterFuture"))
  v <- value(f)
  message(v)
  stopifnot(v == hpaste(1:100))
  message("*** cluster() - assert covr workaround ... DONE")

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)


message("*** cluster() - setDefaultCluster() ...")

library("parallel")
setDefaultCluster(makeCluster(2))
plan(cluster)

pid <- Sys.getpid()
message(pid)

a %<-% Sys.getpid()
b %<-% Sys.getpid()
message(a)
message(b)

setDefaultCluster(NULL)

message("*** cluster() - setDefaultCluster() ... DONE")


message("*** cluster() - exceptions ...")

res <- try(cluster(42L, workers=NA), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

message("*** cluster() - exceptions ... DONE")


message("*** cluster() - crashed worker ...")

cl <- parallel::makeCluster("localhost")
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

## This is needed in order to reset the ClusterRegistry
future:::ClusterRegistry("stop")

## An alternative is to do:
## plan(uniprocess); x %<-% NULL; print(x)

## Verify that the reset worked
cl <- parallel::makeCluster("localhost")
plan(cluster, workers = cl)
x %<-% 42L
stopifnot(x == 42L)

message("*** cluster() - crashed worker ... DONE")


message("*** cluster() ... DONE")

## Cleanup
parallel::stopCluster(cl)
source("incl/end.R")
