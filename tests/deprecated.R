source("incl/start.R")

message("*** Defunct and deprecated API ...")

message("*** Defunct arguments ...")

res <- tryCatch({
  f <- ClusterFuture(42L, cluster="localhost")
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  f <- cluster(42L, cluster="localhost")
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  f <- multicore(42L, maxCores=2L)
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  f <- multisession(42L, maxCores=2L)
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  f <- multiprocess(42L, maxCores=2L)
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  s <- tweak(multiprocess, maxCores=2L)
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  s <- tweak(cluster, cluster="localhost")
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

message("*** Defunct arguments ... DONE")


message("*** Deprecated argument values ...")

res <- tryCatch({
  n <- availableCores(methods="mc.cores")
}, warning = function(w) w)
stopifnot(inherits(res, "warning"))

message("*** Deprecated argument values ... DONE")


message("*** Defunct and deprecated API ... DONE")


source("incl/end.R")
