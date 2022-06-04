library(future.apply)

slow_fcn <- function(x) {
  Sys.sleep(x / 10)
  sqrt(x)
}

plan(multisession, workers = 2)
js <- gather_journals({
  vs <- future_lapply(3:1, FUN = slow_fcn)
})
print(js)

## Shut down parallel workers
plan(sequential)
