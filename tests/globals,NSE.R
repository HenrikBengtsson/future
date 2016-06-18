library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)
strategies <- future:::supportedStrategies()

message("*** Globals w/ non-standard evaluation (NSE) ...")

data <- data.frame(x=1:5, y=1:5)
v0 <- subset(data, x < 3)$y

for (strategy in strategies) {
  message(sprintf("- Strategy: %s ...", strategy))
  
  plan(strategy)

  ## Assert option is passed on to future
  options(future.globals.onMissing="error")
  opt1 %<-% getOption("future.globals.onMissing")
  stopifnot(identical(opt1, "error"))

  options(future.globals.onMissing="ignore")
  opt2 %<-% getOption("future.globals.onMissing")
  stopifnot(identical(opt2, "ignore"))

  options(future.globals.onMissing="error")
  res <- try({ v1 %<-% subset(data, x < 3)$y }, silent=TRUE)
  stopifnot(inherits(res, "try-error"))

  options(future.globals.onMissing="ignore")
  v2 %<-% subset(data, x < 3)$y
  stopifnot(identical(v2, v0))

  ## Nested futures (requires option is passed on to future)
  plan(list(lazy, strategy))
  options(future.globals.onMissing="ignore")
  v3 %<-% {
    a %<-% subset(data, x < 3)$y
    a
  }
  stopifnot(identical(v3, v0))

  message(sprintf("- Strategy: %s ... DONE", strategy))
}


message("*** Globals w/ non-standard evaluation (NSE) ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
