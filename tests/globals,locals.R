source("incl/start.R")
library("listenv")
oopts <- c(oopts, options(
  future.globals.resolve = TRUE,
  future.globals.onMissing = "error"
))

okeep <- list()

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
  g <- local({ a <- 1; function() a })
  h <- local({ a <- 2; function() a })
  truth <- h() + g()
  print(truth)

  ## Fixed in future (>= 1.25.0-9013) with globals (>= 0.14.0.9004)
  ## Previously, 'a' of h() would overwrite 'a' of g(), resulting
  ## in g() == 2, rather than g() == 1.
  ## https://github.com/HenrikBengtsson/future/issues/608
  if (is.null(getOption("future.globals.keepWhere")) && packageVersion("globals") >= "0.14.0.9004") {
    okeep <- options(future.globals.keepWhere = TRUE)
  }
  f <- future(h() + g())
  v <- value(f)
  print(v)
  
  stopifnot(identical(v, truth))
  options(okeep)
} ## for (strategy ...)

message("*** Globals inside local() environments ... DONE")

source("incl/end.R")
