source("incl/start.R")
library("listenv")
plan(multiprocess)

message("*** multiprocess() ...")

for (cores in 1:availCores) {
  ## Speed up CRAN checks: Skip on CRAN Windows 32-bit
  if (!fullTest && isWin32) next
  
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores = cores)

  ## No global variables
  f <- multiprocess({
    42L
  })
  print(f)
  stopifnot(inherits(f, "MultiprocessFuture") || inherits(f, "SequentialFuture"))

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
  v <- sapply(x, FUN = value)
  stopifnot(all(v == 1:4))


  message("*** multiprocess() and errors")
  f <- multiprocess({
    stop("Whoops!")
    1
  })
  print(f)
  v <- value(f, signal = FALSE)
  print(v)
  stopifnot(inherits(v, "simpleError"))

  res <- try(value(f), silent = TRUE)
  print(res)
  stopifnot(inherits(res, "try-error"))

  ## Error is repeated
  res <- try(value(f), silent = TRUE)
  print(res)
  stopifnot(inherits(res, "try-error"))

  ## Custom error class
  f <- multiprocess({
    stop(structure(list(message = "boom"),
                   class = c("MyError", "error", "condition")))
  })
  print(f)
  v <- value(f, signal = FALSE)
  print(v)
  stopifnot(inherits(v, "error"))
  ## FIXME: Related to Issue #200
  ## stopifnot(inherits(v, "MyError"))

  ## Make sure error is signaled
  res <- tryCatch(value(f), error = identity)
  stopifnot(inherits(res, "error"))

  ## Issue #200: Custom condition class attributes are lost 
  ## FIXME:
  ## stopifnot(inherits(res, "MyError"))    

  message("*** multiprocess() - too large globals ...")
  ooptsT <- options(future.globals.maxSize = object.size(1:1014))

  limit <- getOption("future.globals.maxSize")
  cat(sprintf("Max total size of globals: %g bytes\n", limit))

  for (workers in unique(c(1L, availableCores()))) {
    message("Max number of processes: ", workers)

    ## A large object
    a <- 1:1014
    yTruth <- sum(a)
    size <- object.size(a)
    cat(sprintf("a: %g bytes\n", size))
    f <- multiprocess({ sum(a) }, workers = workers)
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
    res <- try(f <- multiprocess({ sum(a) }, workers = workers), silent = TRUE)
    rm(list = "a")
    stopifnot(inherits(res, "try-error"))
  }

  ## Undo options changed in this test
  options(ooptsT)

  message("*** multiprocess() - too large globals ... DONE")


  message("*** multiprocess(..., workers = 1L) ...")

  a <- 2
  b <- 3
  yTruth <- a * b

  f <- multiprocess({ a * b }, workers = 1L)
  rm(list = c("a", "b"))

  v <- value(f)
  print(v)
  stopifnot(v == yTruth)

  message("*** multiprocess(..., workers = 1L) ... DONE")

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** multiprocess() ... DONE")

source("incl/end.R")
