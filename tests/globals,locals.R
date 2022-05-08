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
  
  if (!strategy %in% c("sequential", "multicore") || (packageVersion("globals") >= "0.14.0.9004") && getOption("future.globals.keepWhere", FALSE)) {
    stopifnot(identical(v, truth))
    options(okeep)
  } else {
    stopifnot(identical(v, h() + h()))
  }
} ## for (strategy ...)

message("*** Globals inside local() environments ... DONE")

source("incl/end.R")
