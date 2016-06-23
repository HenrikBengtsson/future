source("incl/start.R")

message("*** Deprecated API ...")

message("*** Deprecated arguments ...")

res <- tryCatch({
  f <- ClusterFuture(42L, cluster="localhost")
}, warning = function(w) w)
stopifnot(inherits(res, "warning"))

res <- tryCatch({
  f <- cluster(42L, cluster="localhost")
}, warning = function(w) w)
stopifnot(inherits(res, "warning"))

res <- tryCatch({
  f <- multicore(42L, maxCores=2L)
}, warning = function(w) w)
stopifnot(inherits(res, "warning"))

res <- tryCatch({
  f <- multisession(42L, maxCores=2L)
}, warning = function(w) w)
stopifnot(inherits(res, "warning"))

res <- tryCatch({
  f <- multiprocess(42L, maxCores=2L)
}, warning = function(w) w)
stopifnot(inherits(res, "warning"))

res <- tryCatch({
  s <- tweak(multiprocess, maxCores=2L)
}, warning = function(w) w)
stopifnot(inherits(res, "warning"))

res <- tryCatch({
  s <- tweak(cluster, cluster="localhost")
}, warning = function(w) w)
stopifnot(inherits(res, "warning"))

message("*** Deprecated arguments ... DONE")


message("*** Deprecated argument values ...")

res <- tryCatch({
  n <- availableCores(methods="mc.cores")
}, warning = function(w) w)
stopifnot(inherits(res, "warning"))

message("*** Deprecated argument values ... DONE")


message("*** Deprecated API ... DONE")


message("*** Defunct API ...")


message("*** Defunct API ... DONE")


source("incl/end.R")
