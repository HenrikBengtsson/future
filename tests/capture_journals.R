source("incl/start.R")
options(future.debug = FALSE)

capture_journals <- future:::capture_journals

message("*** capture_journals() ...")

slow_fcn <- function(n) {
  ## Emulate memory allocations
  y <- rep(c(1,2,3,2,1), times = n * 100e3)
  ## Emulate processing time
  Sys.sleep(0.5 + 1/x)
  mean(y)
}

#plan(multisession, workers = 2L)
plan(future.callr::callr, workers = 2L)

js <- capture_journals({
  fs <- lapply(3:1, FUN = function(x) future(slow_fcn(x)))
  vs <- value(fs)
})
print(js)
stopifnot(
  is.list(js),
  all(vapply(js, FUN = is.data.frame, FUN.VALUE = NA))
)
  
## Shut down parallel workers
plan(sequential)

message("*** capture_journals() ... done")


message("*** summary() of FutureJournal ...")

js <- do.call(rbind, js)
message("All journal records:")
print(js)
cat("\n\n")

stats <- summary(js)
message("Summary across evaluations:")
print(stats)
cat("\n\n")

message("Summary per evaluation process:")
stats <- summary(js, by = "process")
print(stats)
cat("\n\n")

message("Summary per future:")
stats <- summary(js, by = "future")
print(stats)
cat("\n\n")

message("*** summary() of FutureJournal ... done")

#source("incl/end.R")
