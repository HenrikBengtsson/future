source("incl/start.R")
library("listenv")
oopts <- c(oopts, options(
  future.globals.resolve = TRUE,
  future.globals.onMissing = "error"
))

message("*** Globals inside local() environments ...")

for (strategy in supportedStrategies()) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)

  message("- Missing global variable")
  g <- function() a
  h <- function() {
    a <- 1
    g()
  }
  res <- tryCatch({
    f <- future(h())
    v <- value(f)
  }, error = identity)
  stopifnot(inherits(res, "error"))

  message("- Missing global variable (v2)")
  g <- function() a
  h <- function(g) {
    a <- 1
    g()
  }
  res <- tryCatch({
    f <- future(h(g))
    v <- value(f)
  }, error = identity)
  stopifnot(inherits(res, "error"))

  message("- Missing global variable (v3)")
  g <- function() a
  res <- tryCatch({
    f <- future(local({
      a <- 1
      g()
    }))
    v <- value(f)
  }, error = identity)
  stopifnot(inherits(res, "error"))

  message("- Non-missing global variable")
  a <- 2
  g <- function() a
  f <- future(local({
    a <- 1
    g()
  }), lazy = TRUE)
  rm(list = "a")
  v <- value(f)
  stopifnot(v == 2)


  message("- Name clashing of globals across local() environments")

  ## Closures with local globals of the same name
  g <- local({ a <- 2; function() a })
  h <- local({ a <- 1; function() a })
  truth <- g() + h()
  print(truth)

  ## Fixed in future (>= 1.25.0-9016) with globals (>= 0.14.0.9004):
  ##
  ##   f <- future(g() + h())
  ##
  ## Previously, 'a' of g() would overwrite 'a' of h(), resulting
  ## in h() == 2, rather than h() == 1. Vice versa, if we did:
  ##
  ##   f <- future(h() + g())
  ##
  ## 'a' of h() would overwride 'a' of g() so that g() == 1
  ## https://github.com/HenrikBengtsson/future/issues/608
  f <- future(g() + h())
  v <- tryCatch(value(f), error = identity)
  print(v)
  if (isTRUE(getOption("future.globals.keepWhere", TRUE)) || ! strategy %in% c("sequential", "multicore")) {
    stopifnot(identical(v, truth))
  } else {
    if (packageVersion("globals") >= "0.14.0.9004") {
      stopifnot(inherits(v, "error"))
    } else {
      stopifnot(identical(v, 4))
    }
  }
} ## for (strategy ...)

message("*** Globals inside local() environments ... DONE")

source("incl/end.R")
