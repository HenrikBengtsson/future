source("incl/start.R")

message("*** lazy() - defunct ...")

res <- tryCatch({f <- lazy({
  42L
})}, error = identity)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  plan(lazy)
}, error = identity)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  plan(list(lazy))
}, error = identity)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  f <- LazyFuture()
}, error = identity)
stopifnot(inherits(res, "error"))

message("*** lazy() - defunct ... DONE")

source("incl/end.R")
