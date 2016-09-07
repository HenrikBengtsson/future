source("incl/start.R")
library("listenv")

message("*** Globals - manually ...")

message("*** Globals manually specified as named list ...")

globals <- list(
  a=1,
  b=2,
  sumtwo=function(x) x[1] + x[2]
)

## Assign 'globals' globally
for (name in names(globals)) {
  assign(name, value=globals[[name]])
}

## Truth
v0 <- local({
  x <- 1:10
  sumtwo(a + b*x)
})


message("*** Globals - automatic ...")

for (strategy in supportedStrategies()) {
  message(sprintf("- Strategy: %s ...", strategy))
  
  plan(strategy)
 
  f <- future({
    x <- 1:10
    sumtwo(a + b*x)
  }, globals=TRUE)
  print(f)
  
  v <- value(f)
  print(v)
  stopifnot(all.equal(v, v0))

  y %<-% {
    x <- 1:10
    sumtwo(a + b*x)
  } %globals% TRUE
  print(y)
  stopifnot(all.equal(y, v0))

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

## Assign 'globals' globally
for (name in names(globals)) {
  assign(name, value=globals[[name]])
}

for (strategy in supportedStrategies()) {
  message(sprintf("- Strategy: %s ...", strategy))
  
  plan(strategy)
  
  f <- future({
    x <- 1:10
    sumtwo(a + b*x)
  }, globals=c("a", "b", "sumtwo"))
  print(f)
  
  v <- value(f)
  print(v)
  stopifnot(all.equal(v, v0))

  y %<-% {
    x <- 1:10
    sumtwo(a + b*x)
  } %globals% c("a", "b", "sumtwo")
  print(y)
  stopifnot(all.equal(y, v0))

  message(sprintf("- Strategy: %s ... DONE", strategy))
}

message("*** Globals manually specified by their names ... DONE")


message("*** Globals - manually ... DONE")

source("incl/end.R")
