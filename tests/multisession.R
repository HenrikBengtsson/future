source("incl/start.R")
library("listenv")

message("*** multisession() ...")

for (cores in 1:availCores) {
  ## Speed up CRAN checks: Skip on CRAN Windows 32-bit
  if (!fullTest && isWin32) next
  
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores = cores)

  ## No global variables
  f <- multisession({
    42L
  })
  print(f)
  stopifnot(inherits(f, "ClusterFuture") || (inherits(f, "SequentialFuture") && f$lazy))

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
  for (ii in 2:1) {
    message(sprintf(" - Creating multisession future #%d ...", ii))
    x[[ii]] <- multisession({ ii })
  }
  message(sprintf(" - Resolving %d multisession futures", length(x)))
  v <- sapply(x, FUN = value)
  stopifnot(all(v == 1:2))


  message("*** multisession() and errors")
  f <- multisession({
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
  f <- multisession({
    stop(structure(list(message = "boom"),
                   class = c("MyError", "error", "condition")))
  })
  print(f)
  v <- value(f, signal = FALSE)
  print(v)
  stopifnot(inherits(v, "error"))
  ## FIXME: Related to Issue #200
  ## https://github.com/HenrikBengtsson/Wishlist-for-R/issues/57
  ## stopifnot(inherits(v, "MyError"))

  ## Make sure error is signaled
  res <- tryCatch(value(f), error = identity)
  stopifnot(inherits(res, "error"))

  ## Issue #200: Custom condition class attributes are lost
  ## https://github.com/HenrikBengtsson/Wishlist-for-R/issues/57
  ## stopifnot(inherits(res, "MyError"))    

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)


message("*** multisession() - too large globals ...")
ooptsT <- options(future.globals.maxSize = object.size(1:1014))

limit <- getOption("future.globals.maxSize")
cat(sprintf("Max total size of globals: %g bytes\n", limit))

for (workers in unique(c(1L, availableCores()))) {
  ## Speed up CRAN checks: Skip on CRAN Windows 32-bit
  if (!fullTest && isWin32) next
  
  message("Max number of sessions: ", workers)

  ## A large object
  a <- 1:1014
  yTruth <- sum(a)
  size <- object.size(a)
  cat(sprintf("a: %g bytes\n", size))
  f <- multisession({ sum(a) }, workers = workers)
  print(f)
  rm(list = "a")
  v <- value(f)
  print(v)
  stopifnot(v == yTruth)


  ## A too large object
  a <- 1:1015
  yTruth <- sum(a)
  size <- object.size(a)
  cat(sprintf("a: %g bytes\n", size))
  res <- try(f <- multisession({ sum(a) }, workers = workers), silent = TRUE)
  rm(list = "a")
  stopifnot(inherits(res, "try-error"))
} ## for (workers in ...)

## Undo options changed in this test
options(ooptsT)

message("*** multisession() - too large globals ... DONE")

message("*** multisession(..., workers = 1L) ...")

a <- 2
b <- 3
yTruth <- a * b

f <- multisession({ a * b }, workers = 1L)
rm(list = c("a", "b"))

v <- value(f)
print(v)
stopifnot(v == yTruth)

message("*** multisession(..., workers = 1L) ... DONE")

message("*** multisession(..., gc = TRUE) ...")
plan(multisession, workers = 2L)

f <- future({ gc() })
v <- value(f)
print(v)

f <- future({ integer(10e6) })
v <- value(f)
str(v)

f <- future({ gc() })
v <- value(f)
print(v)

f <- future({ integer(10e6) }, gc = TRUE)
v <- value(f)
str(v)

f <- future({ gc() })
v <- value(f)
print(v)

message("*** multisession(..., gc = TRUE) ... TRUE")


message("*** multisession(...) - stopping with plan() change ...")
  
plan(multisession, workers = 2L)
f <- future(1L)
cl <- ClusterRegistry("get")
stopifnot(inherits(cl, "cluster"), length(cl) >= 1L)

plan(sequential)
cl <- ClusterRegistry("get")
stopifnot(is.null(cl), length(cl) == 0L)
  
message("*** multisession(...) - stopping with plan() change ... DONE")

message("*** multisession() ... DONE")

source("incl/end.R")
