source("incl/start.R")

message("*** Future class ...")

message("*** Future class - exception ...")

f <- Future()
print(f)
res <- try(value(f), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

## values() is an alias for value() for Future
res <- try(values(f), silent=TRUE)
stopifnot(inherits(res, "try-error"))

## When no packages are exported
foo <- structure(function(...) { Future(1) }, class="future")
plan(foo)
f <- Future()
expr <- getExpression(f)
print(expr)
stopifnot(is.call(expr))

clazzes <- list(
  uniprocess = UniprocessFuture,
  multisession = function(...) MultisessionFuture(..., workers=2L),
  eager = EagerFuture,
  lazy = LazyFuture
)
if (supportsMulticore()) clazzes$multicore = function(...) MulticoreFuture(..., workers=2L)

for (clazz in clazzes) {
  ## Calling run() more than once
  f <- clazz({ 42L })
  print(f)
  run(f)
  res <- tryCatch(run(f), error=identity)
  stopifnot(inherits(res, "error"))
  v <- value(f)
  print(v)
  stopifnot(v == 42L)

  ## Call value() without run()
  f <- clazz({ 42L })
  v <- value(f)
  print(v)
  stopifnot(v == 42L)
}

message("*** Future class - exception ... DONE")

message("*** Future class ... DONE")

source("incl/end.R")
