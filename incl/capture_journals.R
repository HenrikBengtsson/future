slow_fcn <- function(x) {
  Sys.sleep(x / 10)
  sqrt(x)
}

plan(multisession, workers = 2)
js <- capture_journals({
  fs <- lapply(3:1, FUN = function(x) future(slow_fcn(x)))
  value(fs)
})
print(js)

## Shut down parallel workers
plan(sequential)
