library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)
plan(multisession)

message("*** multisession() ...")

for (cores in 1:min(3L, availableCores())) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  ## No global variables
  f <- multisession({
    42L
  })
  print(f)
  stopifnot(inherits(f, "ClusterFuture") || inherits(f, "LazyFuture"))

  print(resolved(f))
  y <- value(f)
  print(y)
  stopifnot(y == 42L)


  ## A global variable
  a <- 0
  f <- multisession({
    b <- 3
    c <- 2
    a * b * c
  })
  print(f)


  ## A multisession future is evaluated in a separate
  ## R session process.  Changing the value of a global
  ## variable should not affect the result of the
  ## future.
  a <- 7  ## Make sure globals are frozen
  v <- value(f)
  print(v)
  stopifnot(v == 0)


  message("*** multisession() with globals and blocking")
  x <- listenv()
  for (ii in 1:4) {
    message(sprintf(" - Creating multisession future #%d ...", ii))
    x[[ii]] <- multisession({ ii })
  }
  message(sprintf(" - Resolving %d multisession futures", length(x)))
  v <- sapply(x, FUN=value)
  stopifnot(all(v == 1:4))


  message("*** multisession() and errors")
  f <- multisession({
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


  message("*** multisession() - too large globals ...")
  ooptsT <- options("future.maxSizeOfGlobals"=1024*4L)

  limit <- getOption("future.maxSizeOfGlobals")
  cat(sprintf("Max total size of globals: %g bytes\n", limit))

  for (maxCores in unique(c(1L, availableCores()))) {
    message("Max number of sessions: ", maxCores)

    ## A large object
    a <- 1:1014
    yTruth <- sum(a)
    size <- object.size(a)
    cat(sprintf("a: %g bytes\n", size))
    f <- multisession({ sum(a) }, maxCores=maxCores)
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
    res <- try(f <- multisession({ sum(a) }, maxCores=maxCores), silent=TRUE)
    rm(list="a")
    stopifnot(inherits(res, "try-error"))
  }

  ## Undo options changed in this test
  options(ooptsT)

  message("*** multisession() - too large globals ... DONE")


  message("*** multisession(..., maxCores=1L) ...")

  a <- 2
  b <- 3
  yTruth <- a * b

  f <- multisession({ a * b }, maxCores=1L)
  rm(list=c("a", "b"))

  v <- value(f)
  print(v)
  stopifnot(v == yTruth)

  message("*** multisession(..., maxCores=1L) ... DONE")

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** multisession() ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
