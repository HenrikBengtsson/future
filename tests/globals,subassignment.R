source("incl/start.R")
library("listenv")
oopts <- c(oopts, options(
  future.globals.resolve=TRUE,
  future.globals.onMissing="error"
))

supportsWalkAST <- exists("walkAST", mode="function", envir=getNamespace("globals"))

message("*** Globals - subassignments ...")
if (supportsWalkAST) {

message("*** Globals - subassignments w/ x$a <- value ...")

## Truth:
x <- list()
y0 <- local({
  x$a <- 1
  x
})
print(y0)
stopifnot(identical(x, list()))

strategies <- supportedStrategies()
strategies <- setdiff(strategies, "multiprocess")

for (cores in 1:min(3L, availableCores())) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  message("availableCores(): ", availableCores())

  for (strategy in strategies) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)

    ## Explicit future
    f <- future({
      x$a <- 1
      x
    })
    y <- value(f)
    print(y)
    stopifnot(identical(y, y0))

    ## Future assignment
    y %<-% {
      x$a <- 1
      x
    }
    print(y)
    stopifnot(identical(y, y0))
  } ## for (strategy ...)

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** Globals - subassignments w/ x$a <- value ... DONE")

} ## if (supportsWalkAST)
message("*** Globals - subassignments ... DONE")

source("incl/end.R")
