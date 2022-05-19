source("incl/start.R")

options(future.debug = FALSE)
if (getOption("future.prune.functions", FALSE)) {
  Sys.setenv(R_CHECK_IDEAL = "true")
}

message("*** futureCall() ...")

message("- futureCall() - sequential + lazy ...")

f1 <- future(do.call(rnorm, args = list(n = 100)), seed = NULL, lazy = TRUE)
f2 <- futureCall(rnorm, args = list(n = 100), seed = NULL, lazy = TRUE)

set.seed(42L)
v0 <- rnorm(n = 100)
str(list(v0 = v0))

set.seed(42L)
v1 <- value(f1)
str(list(v1 = v1))

set.seed(42L)
v2 <- value(f2)
str(list(v2 = v2))

## Because we use lazy futures and set the
## random seed just before they are resolved
stopifnot(identical(v1, v0))
stopifnot(identical(v1, v2))

message("- futureCall() - sequential + lazy ... DONE")

message("- futureCall() - mix of strategies, cores, lazy and globals ...")

a <- 3
args <- list(x = 42, y = 12)
v0 <- do.call(function(x, y) a * (x - y), args = args)

for (cores in 1:availCores) {
  ## Speed up CRAN checks: Skip on CRAN Windows 32-bit
  if (!fullTest && isWin32) next
  
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores = cores)
  strategies <- supportedStrategies(cores)

  for (strategy in strategies) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)

    for (lazy in c(FALSE, TRUE)) {
      for (globals in c(FALSE, TRUE)) {
        message("- futureCall() #1")
        a <- 3
        args <- list(x = 42, y = 12)
        f <- futureCall(function(x, y) a * (x - y), args = args,
                        globals = globals, lazy = lazy,
                        label = "futureCall() #1")
        rm(list = c("a", "args"))
        print(f)
        res1 <- tryCatch({
          v1 <- value(f)
        }, error = identity)
        stopifnot(!inherits(res1, "FutureError"))
        if (isTRUE(as.logical(Sys.getenv("R_CHECK_IDEAL")))) {
          utils::str(list(strategy = strategy, globals = globals, lazy = lazy, res1 = res1))
          stopifnot(identical(v1, v0))
        } else {
          if (!inherits(res1, "error")) {
            utils::str(list(strategy = strategy, globals = globals, lazy = lazy, v0 = v0, v1 = v1))
            stopifnot(identical(v1, v0))
          } else {
            stopifnot(!globals)
          }
        }

        message("- futureCall() #2")
        a <- 3
        args <- list(x = 42, y = 12)
        f <- futureCall(function(x, y) a * (x - y), args = args,
                        globals = "a", lazy = lazy,
                        label = "futureCall() #2")
        rm(list = c("a", "args"))
        print(f)
        res2 <- tryCatch({
          v2 <- value(f)
        }, error = identity)
        stopifnot(!inherits(res2, "FutureError"))
        if (isTRUE(as.logical(Sys.getenv("R_CHECK_IDEAL")))) {
          utils::str(list(strategy = strategy, globals = globals, lazy = lazy, v0 = v0, res2 = res2))
          stopifnot(identical(v2, v0))
        } else {
          if (!inherits(res2, "error")) {
            utils::str(list(strategy = strategy, globals = globals, lazy = lazy, v0 = v0, v2 = v2))
            stopifnot(identical(v2, v0))
          } else {
            stopifnot(!globals)
          }
        }
        
        message("- futureCall() #3")
        args <- list(x = 42, y = 12)
        f <- futureCall(function(x, y) a * (x - y), args = args,
                        globals = list(a = 3), lazy = lazy,
                        label = "futureCall() #3")
        rm(list = "args")
        print(f)
        res3 <- tryCatch({
          v3 <- value(f)
        }, error = identity)
        stopifnot(!inherits(res3, "FutureError"))
        if (isTRUE(as.logical(Sys.getenv("R_CHECK_IDEAL")))) {
          utils::str(list(strategy = strategy, globals = globals, lazy = lazy, v0 = v0, res3 = res3))
          stopifnot(identical(v3, v0))
        } else {
          if (!inherits(res3, "error")) {
            utils::str(list(strategy = strategy, globals = globals, lazy = lazy, v0 = v0, v3 = v3, res3 = res3))
            stopifnot(identical(v3, v0))
          } else {
            stopifnot(!globals)
          }
        }

        message("- futureCall() #4")
        ## FIXME: This fails with future 1.25.0-9017,
        ## except for sequential and multicore /HB 2022-05-09
        local({
          a <- 2
          g <- function() a
          f <- futureCall(g,
                          globals = globals, lazy = lazy,
                          label = "futureCall() #4")
          rm(list = "a")
          print(f)
          
          res4 <- tryCatch(v4 <- value(f), error = identity)
          print(res4)
          
          if (isTRUE(as.logical(Sys.getenv("R_CHECK_IDEAL")))) {
            utils::str(list(strategy = strategy, globals = globals, lazy = lazy, res4 = res4))
            stopifnot(identical(v4, 2))
          } else {
            if (packageVersion("future") > "1.25.0-9000") {
              utils::str(list(strategy = strategy, globals = globals, lazy = lazy, v0 = v0, res4 = res4))
              if ((!globals && lazy) || (globals && lazy) || (lazy && ! strategy %in% c("sequential", "multicore")) || (!isTRUE(getOption("future.globals.keepWhere", TRUE)) && strategy %in% c("sequential", "multicore"))) {
                stopifnot(inherits(res4, "error"))
              } else {
                v4 <- value(f)
                stopifnot(v4 == 2)
              }
            } else {
              ## future (<= 1.25.0)
              utils::str(list(strategy = strategy, globals = globals, lazy = lazy, v0 = v0, v4 = v4, res4 = res4))
              if (!globals && !lazy) {
                if (strategy %in% c("sequential", "multicore")) {
                  stopifnot(inherits(res4, "error"))
                } else {
                  stopifnot(res4 == 2)
                }
              } else if (!globals && lazy) {
                if (strategy %in% c("sequential", "multicore", "multisession")) {
                  stopifnot(inherits(res4, "error"))
                } else {
                  stopifnot(res4 == 2)
                }
              } else {
                stopifnot(res4 == 2)
              }
            }
          }
        })

        rm(list = c("v1", "v2", "v3", "v4"))
      }
    }
  }
  message(sprintf("Testing with %d cores ... DONE", cores))
}

message("- futureCall() - mix of strategies, cores, lazy and globals ... DONE")

message("- futureCall() - bug fixes")

plan(sequential)
plan(cluster, workers = 1L)

fcn <- function() a
v <- tryCatch(local({
  abc <- 42
  f <- futureCall(fcn, args = list(), globals = "abc")
  value(f)
}), error = identity)

## Bug #262: the above used to return NULL
stopifnot(!is.null(v))

## Bug: Now, it instead fails, because it cannot find 'abc'
print(v)
stopifnot(inherits(v, "error"))

message("*** futureCall() ... DONE")

source("incl/end.R")
