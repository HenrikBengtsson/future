library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L)


sum_fcns <- list()

sum_fcns[[1]] <- function(x, ...) {
  message("Arguments '...' exists: ", exists("...", inherits=TRUE))
  y %<=% { sum(x, ...) }
  y
}


sum_fcns[[2]] <- function(x, y) {
  message("Arguments '...' exists: ", exists("...", inherits=TRUE))
  y %<=% { sum(x, y) }
  y
}

sum_fcns[[3]] <- function(x, ...) {
  sumt <- function(x) {
    message("Arguments '...' exists: ", exists("...", inherits=TRUE))
    y %<=% { sum(x, ...) }
    y
  }
  sumt(x)
}

sum_fcns[[4]] <- function(x, ...) {
  sumt <- function(...) {
    message("Arguments '...' exists: ", exists("...", inherits=TRUE))
    y %<=% { sum(...) }
    y
  }
  sumt(x, ...)
}


for (strategy in c("eager", "lazy", "multicore")) {
  plan(strategy, substitute=FALSE)

  for (ii in seq_along(sum_fcns)) {
    message(sprintf("** Sum function #%d with plan('%s') ...", ii, strategy))
    sum_fcn <- sum_fcns[[ii]]
    print(sum_fcn)
    y <- sum_fcn(1:2,3)
    print(y)
    stopifnot(y == 6)
  }
}


plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
