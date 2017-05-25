source("incl/start.R")

message("*** lazy() - defunct ...")

res <- tryCatch({f <- lazy({
  42L
})}, warning = identity)
stopifnot(inherits(res, "warning"))

res <- tryCatch({
  plan(lazy)
}, warning = identity)
stopifnot(inherits(res, "warning"))

res <- tryCatch({
  plan(list(lazy))
}, warning = identity)
stopifnot(inherits(res, "warning"))

#res <- tryCatch({
#  f <- LazyFuture()
#}, warning = identity)
#stopifnot(inherits(res, "warning"))

message("*** lazy() - defunct ... DONE")

source("incl/end.R")
