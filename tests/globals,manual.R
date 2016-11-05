source("incl/start.R")

message("*** Globals - manually ...")

message("*** Globals manually specified as named list ...")

globals <- list(
  a=1,
  b=2,
  sumtwo=function(x) x[1] + x[2]
)

## Assign 'globals' globally
attachLocally(globals)

## Truth
v0 <- local({
  x <- 1:10
  sumtwo(a + b*x)
})


message("*** Globals - automatic ...")

for (strategy in supportedStrategies()) {
  message(sprintf("- Strategy: %s ...", strategy))
  
  plan(strategy)

  attachLocally(globals)
  f <- future({
    x <- 1:10
    sumtwo(a + b*x)
  }, globals=TRUE)
  print(f)
  rm(list=names(globals))
  y <- value(f)
  print(y)
  stopifnot(all.equal(y, v0))

  attachLocally(globals)
  y %<-% {
    x <- 1:10
    sumtwo(a + b*x)
  } %globals% TRUE
  rm(list=names(globals))
  print(y)
  stopifnot(all.equal(y, v0))

  ## No need to search for globals
  y %<-% { 1 } %globals% FALSE
  print(y)
  stopifnot(identical(y, 1))

  ## Exception - missing global
  attachLocally(globals)
  f <- future({
    x <- 1:10
    sumtwo(a + b*x)
  }, globals=FALSE)
  print(f)
  rm(list=names(globals))
  y <- tryCatch(value(f), error = identity)
  if (!inherits(f, c("UniprocessFuture", "MulticoreFuture"))) {
    stopifnot(inherits(y, "simpleError"))
  }

  message(sprintf("- Strategy: %s ... DONE", strategy))
}

message("*** Globals - automatic ... DONE")


message("*** Globals manually specified as named list ...")

for (strategy in supportedStrategies()) {
  message(sprintf("- Strategy: %s ...", strategy))
  
  plan(strategy)

  ## Make sure globals do not exist
  rm(list=names(globals))
  
  f <- future({
    x <- 1:10
    sumtwo(a + b*x)
  }, globals=globals)
  print(f)
  v <- value(f)
  print(v)
  stopifnot(all.equal(v, v0))

  y %<-% {
    x <- 1:10
    sumtwo(a + b*x)
  } %globals% globals
  print(y)
  stopifnot(all.equal(y, v0))

  message(sprintf("- Strategy: %s ... DONE", strategy))
}

message("*** Globals manually specified as named list ... DONE")


message("*** Globals manually specified by their names ...")

for (strategy in supportedStrategies()) {
  message(sprintf("- Strategy: %s ...", strategy))
  
  plan(strategy)

  attachLocally(globals)
  f <- future({
    x <- 1:10
    sumtwo(a + b*x)
  }, globals=c("a", "b", "sumtwo"))
  print(f)
  rm(list=names(globals))
  v <- value(f)
  print(v)
  stopifnot(all.equal(v, v0))

  attachLocally(globals)
  y %<-% {
    x <- 1:10
    sumtwo(a + b*x)
  } %globals% c("a", "b", "sumtwo")
  rm(list=names(globals))
  print(y)
  stopifnot(all.equal(y, v0))

  message(sprintf("- Strategy: %s ... DONE", strategy))
}

message("*** Globals manually specified by their names ... DONE")


message("*** Globals - manually ... DONE")

source("incl/end.R")
