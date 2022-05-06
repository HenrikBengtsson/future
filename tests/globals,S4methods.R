source("incl/start.R")
library(methods)

keepWhere <- getOption("future.globals.keepWhere")

message("*** Globals - S4 methods ...")

setGeneric("my_fcn", function(x) {
    standardGeneric("my_fcn")
})

setMethod("my_fcn", methods::signature(x = "numeric"), function(x) {
  x^2
})

truth <- my_fcn(3)

for (strategy in supportedStrategies()) {
  message("Type of future: ", strategy)
  plan(strategy)

  ## FIXME: https://github.com/HenrikBengtsson/future/issues/615
  if (strategy %in% c("sequential", "multicore")) {
    options(future.globals.keepWhere = TRUE)
  }
  
  f <- future({ my_fcn(3) })
  v <- value(f)
  print(v)
  stopifnot(v == truth)

  ## Make sure to reset option, if changed
  options(future.globals.keepWhere = keepWhere)
}

message("*** Globals - S4 methods ... DONE")

source("incl/end.R")
