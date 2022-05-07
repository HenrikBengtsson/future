source("incl/start.R")
library(methods)

keepWhere <- getOption("future.globals.keepWhere")

message("*** Globals - S4 methods ...")

setGeneric("my_fcn", function(x) standardGeneric("my_fcn"))

setMethod("my_fcn", signature(x = "numeric"), function(x) { x^2 })

truth <- my_fcn(3)

for (strategy in supportedStrategies()) {
  message("Type of future: ", strategy)
  plan(strategy)

  ## Assert that S4 generic function 'my_fcn()' is exported
  f <- future({ my_fcn }, lazy = TRUE)
  rm(list = "my_fcn")
  v <- value(f)
  print(v)
  stopifnot(
    is.function(v),
    inherits(v, "standardGeneric")
  )
  my_fcn <- v
  
  ## FIXME:
  ## Just like S3 methods, S4 methods are not picked up
  ## https://github.com/HenrikBengtsson/future/issues/615
  f <- future({ my_fcn(3) }, lazy = TRUE)
  v <- tryCatch({
    value(f)
  }, error = identity)
  print(v)
  if (!identical(v, truth)) {
    stopifnot(inherits(v, "error"))
  }

  ## Make sure to reset option, if changed
  options(future.globals.keepWhere = keepWhere)
}

message("*** Globals - S4 methods ... DONE")

source("incl/end.R")
