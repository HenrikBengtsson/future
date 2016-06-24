source("incl/start.R")

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
strategies <- intersect(strategies, supportedStrategies())
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
n <- nbrOfWorkers(constant)
message(sprintf("nbrOfWorkers: %d", n))
stopifnot(n == 1)


message("Type of future: <future>")
foo <- structure(function(...) NULL, class=c("future"))
n <- nbrOfWorkers(foo)
message(sprintf("nbrOfWorkers: %g", n))
stopifnot(n >= 0, is.infinite(n))


message("*** nbrOfWorkers() ... DONE")

source("incl/end.R")
