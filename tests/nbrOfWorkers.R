source("incl/start.R")

message("*** nbrOfWorkers() ...")

strategies <- c("sequential", "transparent", "eager", "lazy")
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


strategies <- c("cluster", "multiprocess", "multisession", "multicore")
strategies <- intersect(strategies, supportedStrategies())
cores <- availableCores()
message("Number of available cores: ", cores)
workers <- availableWorkers()
nworkers <- length(workers)
message(sprintf("Available workers: [n=%d] %s", nworkers, hpaste(sQuote(workers))))

for (strategy in strategies) {
  message("Type of future: ", strategy)

  evaluator <- get(strategy, mode="function")
  n <- nbrOfWorkers(evaluator)
  message(sprintf("nbrOfWorkers: %d", n))
  stopifnot(n == nworkers)

  plan(strategy)
  n <- nbrOfWorkers()
  message(sprintf("nbrOfWorkers: %d", n))
  stopifnot(n == nworkers)
} ## for (strategy ...)


message("Type of future: cluster")
workers <- rep("localhost", times = 2L)
plan(cluster, workers = workers)
n <- nbrOfWorkers()
message(sprintf("nbrOfWorkers: %d", n))
stopifnot(n == length(workers))

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
