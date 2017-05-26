source("incl/start.R")

message("*** getGlobalsAndPackages() ...")

getGlobalsAndPackages <- future:::getGlobalsAndPackages
FutureGlobals <- future:::FutureGlobals

globals <- structure(list(a = 1), where = list(a = globalenv()))
globals <- FutureGlobals(globals, resolved = TRUE)
gp <- getGlobalsAndPackages(expression(), globals = globals)

message("- getGlobalsAndPackages() - exception ...")

res <- tryCatch({
  gp <- getGlobalsAndPackages(expression(), globals = 42)
}, error = identity)
stopifnot(inherits(res, "error"))

message("*** getGlobalsAndPackages() - ... DONE")

message("*** Globals - manually ...")

message("*** Globals manually specified as named list ...")

globals <- list(
  a = 1,
  b = 2,
  sumtwo = function(x) x[1] + x[2]
)

## Assign 'globals' globally
attachLocally(globals)

## Truth
v0 <- local({
  x <- 1:10
  sumtwo(a + b * x)
})


message("*** Globals - automatic ...")

for (strategy in supportedStrategies()) {
  message(sprintf("- Strategy: %s ...", strategy))
  
  plan(strategy)

  message("- Globals - automatic ...")
  
  attachLocally(globals)
  f <- future({
    x <- 1:10
    sumtwo(a + b * x)
  }, globals = TRUE)
  print(f)
  rm(list = names(globals))
  y <- value(f)
  print(y)
  stopifnot(all.equal(y, v0))

  attachLocally(globals)
  f <- futureAssign("y", {
    x <- 1:10
    sumtwo(a + b * x)
  }, globals = TRUE)
  print(f)
  rm(list = names(globals))
  z <- value(f)
  print(z)
  stopifnot(all.equal(z, y), all.equal(y, v0))
  
  attachLocally(globals)
  y %<-% {
    x <- 1:10
    sumtwo(a + b * x)
  } %globals% TRUE
  rm(list = names(globals))
  print(y)
  stopifnot(all.equal(y, v0))

  attachLocally(globals)
  f <- future({
    x <- 1:10
    sumtwo(a + b * x)
  }, lazy = TRUE, globals = TRUE)
  print(f)
  rm(list = names(globals))
  y <- value(f)
  print(y)
  stopifnot(all.equal(y, v0))

  attachLocally(globals)
  f <- futureAssign("y", {
    x <- 1:10
    sumtwo(a + b * x)
  }, lazy = TRUE, globals = TRUE)
  print(f)
  rm(list = names(globals))
  z <- value(f)
  print(z)
  stopifnot(all.equal(z, y), all.equal(y, v0))

  ## Same with lazy evaluation
  attachLocally(globals)
  y %<-% {
    x <- 1:10
    sumtwo(a + b * x)
  } %lazy% TRUE %globals% TRUE
  rm(list = names(globals))
  print(y)
  stopifnot(all.equal(y, v0))

  ## No need to search for globals
  y %<-% { 1 } %globals% FALSE
  print(y)
  stopifnot(identical(y, 1))

  ## Same with lazy evaluation
  y %<-% { 1 } %lazy% TRUE %globals% FALSE
  print(y)
  stopifnot(identical(y, 1))

  ## Exception - missing global
  attachLocally(globals)
  f <- future({
    x <- 1:10
    sumtwo(a + b * x)
  }, globals = FALSE)
  print(f)
  rm(list = names(globals))
  y <- tryCatch(value(f), error = identity)
  if (!inherits(f, c("SequentialFuture", "UniprocessFuture", "MulticoreFuture"))) {
    stopifnot(inherits(y, "simpleError"))
  }

  
  message("- Globals manually specified as named list ...")
  ## Make sure globals do not exist
  rm(list = names(globals))
  
  f <- future({
    x <- 1:10
    sumtwo(a + b * x)
  }, globals = globals)
  print(f)
  v <- value(f)
  print(v)
  stopifnot(all.equal(v, v0))

  f <- future({
    x <- 1:10
    sumtwo(a + b * x)
  }, lazy = TRUE, globals = globals)
  print(f)
  v <- value(f)
  print(v)
  stopifnot(all.equal(v, v0))

  y %<-% {
    x <- 1:10
    sumtwo(a + b * x)
  } %globals% globals
  print(y)
  stopifnot(all.equal(y, v0))

  y %<-% {
    x <- 1:10
    sumtwo(a + b * x)
  } %lazy% TRUE %globals% globals
  print(y)
  stopifnot(all.equal(y, v0))


  message("- Globals manually specified by their names ...")
  attachLocally(globals)
  f <- future({
    x <- 1:10
    sumtwo(a + b * x)
  }, globals = c("a", "b", "sumtwo"))
  print(f)
  rm(list = names(globals))
  v <- value(f)
  print(v)
  stopifnot(all.equal(v, v0))

  attachLocally(globals)
  f <- future({
    x <- 1:10
    sumtwo(a + b * x)
  }, lazy = TRUE, globals = c("a", "b", "sumtwo"))
  print(f)
  rm(list = names(globals))
  v <- value(f)
  print(v)
  stopifnot(all.equal(v, v0))

  attachLocally(globals)
  y %<-% {
    x <- 1:10
    sumtwo(a + b * x)
  } %globals% c("a", "b", "sumtwo")
  rm(list = names(globals))
  print(y)
  stopifnot(all.equal(y, v0))

  attachLocally(globals)
  y %<-% {
    x <- 1:10
    sumtwo(a + b * x)
  } %lazy% TRUE %globals% c("a", "b", "sumtwo")
  rm(list = names(globals))
  print(y)
  stopifnot(all.equal(y, v0))

  message(sprintf("- Strategy: %s ... DONE", strategy))
}

message("*** Globals - manually ... DONE")

source("incl/end.R")
