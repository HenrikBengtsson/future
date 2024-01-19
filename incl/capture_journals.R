slow_fcn <- function(x) {
  Sys.sleep(x / 10)
  sqrt(x)
}

plan(multisession, workers = 2)
js <- capture_journals({
  fs <- lapply(3:1, FUN = function(x) future(slow_fcn(x)))
  value(fs)
})

## Summarize all journals
js_all <- Reduce(rbind, js)
print(summary(js_all), digits = 2L)

## Shut down parallel workers
plan(sequential)
