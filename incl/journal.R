## Enable journaling of futures
oopts <- options(future.journal = TRUE)

plan(multisession, workers = 2L)

t_start <- Sys.time()
fs <- lapply(1:3, FUN = function(x) future({ Sys.sleep(x); sqrt(x) }))
vs <- value(fs)
js <- lapply(fs, FUN = journal, baseline = t_start)
print(js)

## Stop parallel workers and disable journal logging and signaling
plan(sequential)
options(oopts)
