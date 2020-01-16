source("incl/start.R")
library("listenv")
plan(multicore)

message("*** multicore() and multi-threading ...")

message("supportsMulticore(): ", sQuote(supportsMulticore()))
message("availableCores('multicore'): ", sQuote(availableCores("multicore")))
message("supports_omp_threads(): ", sQuote(supports_omp_threads()))

if (supportsMulticore() && availableCores("multicore") >=2 && supports_omp_threads()) {
  for (enable in c(TRUE, FALSE)) {
    options(future.fork.multithreading.enable = enable)

    message(sprintf("'future.fork.multithreading.enable' = %s ...", enable))

    f <- future(RhpcBLASctl::omp_get_max_threads())
    nthreads <- value(f)
    cat(sprintf("Number of OpenMP threads in %s future: %d\n", sQuote(class(f)[1]), nthreads))

    ## Assert that single-threading was set?
    if (enable) {
      stopifnot(enable && nthreads > 1L)
    } else {
      stopifnot(!enable && nthreads == 1L)
    }
      
    message(sprintf("'future.fork.multithreading.enable' = %s ... DONE", enable))
  } ## for (enable ...)
} ## if (requireNamespace("RhpcBLASctl", ...)) {

message("*** multicore() and multi-threading ... DONE")

source("incl/end.R")
