source("incl/start.R")

message("*** eager & lazy - defunct ...")

res <- tryCatch({ f <- eager(42L) }, error = identity)
stopifnot(inherits(res, "error"))

res <- tryCatch({ f <- lazy(42L) }, error = identity)
stopifnot(inherits(res, "error"))

res <- tryCatch({ plan(eager) }, error = identity)
stopifnot(inherits(res, "error"))

res <- tryCatch({ plan(lazy) }, error = identity)
stopifnot(inherits(res, "error"))

res <- tryCatch({ plan(list(eager)) }, error = identity)
stopifnot(inherits(res, "error"))

res <- tryCatch({ plan(list(lazy)) }, error = identity)
stopifnot(inherits(res, "error"))

res <- tryCatch({ plan("eager") }, error = identity)
stopifnot(inherits(res, "error"))

res <- tryCatch({ plan("lazy") }, error = identity)
stopifnot(inherits(res, "error"))

res <- tryCatch({ f <- EagerFuture() }, error = identity)
stopifnot(inherits(res, "error"))

res <- tryCatch({ f <- LazyFuture() }, error = identity)
stopifnot(inherits(res, "error"))

message("*** eager & lazy - defunct ... DONE")

source("incl/end.R")
