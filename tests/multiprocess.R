library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)
plan(multiprocess)

message("*** multiprocess() ...")

for (cores in 1:min(3L, availableCores())) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  ## No global variables
  f <- multiprocess({
    42L
  })
  print(f)
  stopifnot(inherits(f, "MultiprocessFuture") || inherits(f, "UniprocessFuture"))

  print(resolved(f))
  y <- value(f)
  print(y)
  stopifnot(y == 42L)


  ## A global variable
  a <- 0
  f <- multiprocess({
    b <- 3
    c <- 2
    a * b * c
  })
  print(f)


  ## A multiprocess future is evaluated in a separate
  ## R process.  Changing the value of a global
  ## variable should not affect the result of the
  ## future.
  a <- 7  ## Make sure globals are frozen
  v <- value(f)
  print(v)
  stopifnot(v == 0)


  message("*** multiprocess() with globals and blocking")
  x <- listenv()
  for (ii in 1:4) {
    message(sprintf(" - Creating multiprocess future #%d ...", ii))
    x[[ii]] <- multiprocess({ ii })
  }
  message(sprintf(" - Resolving %d multiprocess futures", length(x)))
  v <- sapply(x, FUN=value)
  stopifnot(all(v == 1:4))


  message("*** multiprocess() and errors")
  f <- multiprocess({
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


  message("*** multiprocess() - too large globals ...")
  ooptsT <- options("future.maxSizeOfGlobals"=1024*4L)

  limit <- getOption("future.maxSizeOfGlobals")
  cat(sprintf("Max total size of globals: %g bytes\n", limit))

  for (maxCores in unique(c(1L, availableCores()))) {
    message("Max number of processs: ", maxCores)

    ## A large object
    a <- 1:1014
    yTruth <- sum(a)
    size <- object.size(a)
    cat(sprintf("a: %g bytes\n", size))
    f <- multiprocess({ sum(a) }, maxCores=maxCores)
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
    res <- try(f <- multiprocess({ sum(a) }, maxCores=maxCores), silent=TRUE)
    rm(list="a")
    stopifnot(inherits(res, "try-error"))
  }

  ## Undo options changed in this test
  options(ooptsT)

  message("*** multiprocess() - too large globals ... DONE")


  message("*** multiprocess(..., maxCores=1L) ...")

  a <- 2
  b <- 3
  yTruth <- a * b

  f <- multiprocess({ a * b }, maxCores=1L)
  rm(list=c("a", "b"))

  v <- value(f)
  print(v)
  stopifnot(v == yTruth)

  message("*** multiprocess(..., maxCores=1L) ... DONE")

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** multiprocess() ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
