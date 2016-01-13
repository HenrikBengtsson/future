library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L)

sessions <- future:::sessions

for (cores in 1:min(3L, availableCores())) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  message("*** sessions() ...")

  res <- try({
    cluster <- sessions()
    print(cluster)
  }, silent=TRUE)
  if (cores == 1) stopifnot(inherits(res, "try-error"))

  cluster <- sessions(action="start", n=1L)
  print(cluster)
  stopifnot(length(cluster) == 1L)

  cluster <- sessions(action="get")
  print(cluster)
  stopifnot(length(cluster) == 1L)

  cluster <- sessions(action="stop")
  print(cluster)
  stopifnot(length(cluster) == 0L)

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** sessions() ... DONE")


## Cleanup
options(oopts)
rm(list=setdiff(ls(), ovars))
