library("future")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)

message("*** nbrOfWorkers() ...")

strategies <- c("eager", "lazy", "transparent")
for (strategy in strategies) {
  message("Type of future: ", strategy)

  evaluator <- get(strategy, mode="function")
  n <- nbrOfWorkers(evaluator)
  message(sprintf("nbrOfWorkers: %d", n))
  stopifnot(n == 1L)

  plan(strategy)
  n <- nbrOfWorkers()
  message(sprintf("nbrOfWorkers: %d", n))
  stopifnot(n == 1L)
} ## for (strategy ...)


strategies <- c("multiprocess", "multisession", "multicore")
strategies <- intersect(strategies, future:::supportedStrategies())
cores <- availableCores()
message("Number of available cores: ", cores)

for (strategy in strategies) {
  message("Type of future: ", strategy)

  evaluator <- get(strategy, mode="function")
  n <- nbrOfWorkers(evaluator)
  message(sprintf("nbrOfWorkers: %d", n))
  stopifnot(n == cores)

  plan(strategy)
  n <- nbrOfWorkers()
  message(sprintf("nbrOfWorkers: %d", n))
  stopifnot(n == cores)
} ## for (strategy ...)


message("Type of future: constant")
constant <- future:::constant
n <- nbrOfWorkers(constant)
message(sprintf("nbrOfWorkers: %d", n))
stopifnot(n == 1)


message("Type of future: <future>")
foo <- structure(function(...) NULL, class=c("future"))
n <- nbrOfWorkers(foo)
message(sprintf("nbrOfWorkers: %g", n))
stopifnot(n >= 0, is.infinite(n))


message("*** nbrOfWorkers() ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
