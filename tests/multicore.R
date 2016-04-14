library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L)
plan(multicore)

message("*** multicore() ...")

for (cores in 1:min(3L, availableCores("multicore"))) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  if (!supportsMulticore()) {
    message(sprintf("Multicore futures are not supporting on '%s'. Falling back to use synchroneous eager futures", .Platform$OS))
  }

  for (globals in c(FALSE, TRUE)) {

  message(sprintf("*** multicore(..., globals=%s) without globals", globals))

  f <- multicore({
    42L
  }, globals=globals)
  stopifnot(inherits(f, "MulticoreFuture") || ((cores ==1 || !supportsMulticore()) && inherits(f, "EagerFuture")))

  print(resolved(f))
  y <- value(f)
  print(y)
  stopifnot(y == 42L)


  message(sprintf("*** multicore(..., globals=%s) with globals", globals))
  ## A global variable
  a <- 0
  f <- multicore({
    b <- 3
    c <- 2
    a * b * c
  }, globals=globals)
  print(f)


  ## A multicore future is evaluated in a separated
  ## forked process.  Changing the value of a global
  ## variable should not affect the result of the
  ## future.
  a <- 7  ## Make sure globals are frozen
##  if ("covr" %in% loadedNamespaces()) v <- 0 else ## WORKAROUND
  v <- value(f)
  print(v)
  stopifnot(v == 0)


  message(sprintf("*** multicore(..., globals=%s) with globals and blocking", globals))
  x <- listenv()
  for (ii in 1:4) {
    message(sprintf(" - Creating multicore future #%d ...", ii))
    x[[ii]] <- multicore({ ii }, globals=globals)
  }
  message(sprintf(" - Resolving %d multicore futures", length(x)))
##  if ("covr" %in% loadedNamespaces()) v <- 1:4 else ## WORKAROUND
  v <- sapply(x, FUN=value)
  stopifnot(all(v == 1:4))


  message(sprintf("*** multicore(..., globals=%s) and errors", globals))
  f <- multicore({
    stop("Whoops!")
    1
  }, globals=globals)
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

  } # for (globals ...)


  message("*** multicore(..., maxCores=1L) ...")

  a <- 2
  b <- 3
  yTruth <- a * b

  f <- multicore({ a * b }, maxCores=1L)
  rm(list=c("a", "b"))

  v <- value(f)
  print(v)
  stopifnot(v == yTruth)

  message("*** multicore(..., maxCores=1L) ... DONE")

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** multicore() ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
