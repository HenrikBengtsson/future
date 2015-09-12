library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L)

message("*** Global argument '...' in lazy futures ...")

sum_fcns <- list()

sum_fcns$A <- function(x, ...) {
  message("Arguments '...' exists: ", exists("...", inherits=TRUE))
  y %<=% { sum(x, ...) }
  y
}


sum_fcns$B <- function(x, ...) {
  sumt <- function(x) {
    message("Arguments '...' exists: ", exists("...", inherits=TRUE))
    y %<=% { sum(x, ...) }
    y
  }
  sumt(x)
}

sum_fcns$C <- function(x, y) {
  message("Arguments '...' exists: ", exists("...", inherits=TRUE))
  y %<=% { sum(x, y) }
  y
}

sum_fcns$D <- function(x, y) {
  message("Arguments '...' exists: ", exists("...", inherits=TRUE))
  y %<=% { sum(x, y, ...) }
  y
}


for (strategy in c("eager", "lazy", "multicore")) {
  plan(strategy, substitute=FALSE)

  for (name in names(sum_fcns)) {
    message(sprintf("** Sum function '%s' with plan('%s') ...", name, strategy))
    sum_fcn <- sum_fcns[[name]]
    print(sum_fcn)
    y <- try(sum_fcn(1:2,3))
    print(y)
    if (name %in% c("D")) {
      stopifnot(inherits(y, "try-error"))
    } else {
      stopifnot(y == 6)
    }
  }
}

message("*** Global argument '...' in lazy futures ... DONE")

plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
