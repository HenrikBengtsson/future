source("incl/start.R")

message("*** nbrOfWorkers() ...")

strategies <- c("sequential", "transparent")
for (strategy in strategies) {
  message("Type of future: ", strategy)

  evaluator <- get(strategy, mode = "function")
  n <- nbrOfWorkers(evaluator)
  message(sprintf("nbrOfWorkers: %d", n))
  stopifnot(n == 1L)

  plan(strategy)
  n <- nbrOfWorkers()
  message(sprintf("nbrOfWorkers: %d", n))
  stopifnot(n == 1L)
} ## for (strategy ...)


strategies <- c("cluster", "multisession", "multicore")
strategies <- intersect(strategies, supportedStrategies())
cores <- availableCores()
message("Number of available cores: ", cores)
workers <- availableWorkers()
nworkers <- length(workers)
message(sprintf("Available workers: [n = %d] %s", nworkers, hpaste(sQuote(workers))))

allButOneCore <- function() max(1L, future::availableCores() - 1L)
allButOneWorker <- function() {
  w <- future::availableWorkers()
  if (length(w) > 1) w[-1] else w
}

for (strategy in strategies) {
  ## Speed up CRAN checks: Skip on CRAN Windows 32-bit
  if (!fullTest && isWin32) next

  message("Type of future: ", strategy)

  evaluator <- get(strategy, mode = "function")
  n <- nbrOfWorkers(evaluator)
  message(sprintf("nbrOfWorkers: %d", n))
  stopifnot(n == nworkers)

  plan(strategy)
  n <- nbrOfWorkers()
  message(sprintf("nbrOfWorkers: %d", n))
  stopifnot(n == nworkers)

  plan(strategy, workers = allButOneCore)
  n <- nbrOfWorkers()
  message(sprintf("nbrOfWorkers: %d", n))
  stopifnot(n == max(1L, nworkers - 1L))
} ## for (strategy ...)


message("Type of future: cluster")
workers <- rep("localhost", times = 2L)
plan(cluster, workers = workers)
n <- nbrOfWorkers()
message(sprintf("nbrOfWorkers: %d", n))
stopifnot(n == length(workers))
plan(cluster, workers = allButOneWorker)
n <- nbrOfWorkers()
message(sprintf("nbrOfWorkers: %d", n))
stopifnot(n == max(1L, nworkers - 1L))

message("Type of future: remote")
workers <- rep("localhost", times = 2L)
plan(remote, workers = workers)
n <- nbrOfWorkers()
message(sprintf("nbrOfWorkers: %d", n))
stopifnot(n == length(workers))
plan(remote, workers = allButOneWorker)
n <- nbrOfWorkers()
message(sprintf("nbrOfWorkers: %d", n))
stopifnot(n == max(1L, nworkers - 1L))

message("Type of future: constant")
n <- nbrOfWorkers(constant)
message(sprintf("nbrOfWorkers: %d", n))
stopifnot(n == 1)

message("Type of future: <future>")
foo <- structure(function(...) NULL, class = c("future"))
n <- nbrOfWorkers(foo)
message(sprintf("nbrOfWorkers: %g", n))
stopifnot(n >= 0, is.infinite(n))


message("Type of future: cluster with workers = <cluster object>")

workers <- makeClusterPSOCK(2L)
print(workers)
plan(cluster, workers = workers)
n <- nbrOfWorkers()
message(sprintf("nbrOfWorkers: %g", n))
stopifnot(n == length(workers))


message("*** nbrOfWorkers() ... DONE")

source("incl/end.R")
