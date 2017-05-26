source("incl/start.R")

message("*** Defunct and deprecated API ...")

message("*** Defunct arguments ...")

res <- tryCatch({
  f <- ClusterFuture(42L, cluster = "localhost")
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  f <- cluster(42L, cluster = "localhost")
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  f <- multicore(42L, maxCores = 2L)
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  f <- multisession(42L, maxCores = 2L)
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  f <- multiprocess(42L, maxCores = 2L)
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  s <- tweak(multiprocess, maxCores = 2L)
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  s <- tweak(cluster, cluster = "localhost")
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

message("*** Defunct arguments ... DONE")


message("*** Defunct argument values ...")

#res <- tryCatch({
#  n <- availableCores(methods = "mc.cores")
#}, error = function(e) e)
#stopifnot(inherits(res, "error"))

message("*** Defunct argument values ... DONE")

message("*** Defunct functions ...")

res <- tryCatch({
  x %<=% 1
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  1 %=>% x
}, error = function(ex) ex)
stopifnot(inherits(res, "error"))

message("*** Defunct functions ... DONE")


message("*** Defunct and deprecated API ... DONE")


source("incl/end.R")
