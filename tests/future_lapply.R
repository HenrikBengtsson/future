source("incl/start.R")
library("listenv")

message("*** future_lapply() ...")

for (cores in 1:min(3L, availableCores())) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  message("- future_lapply(x, FUN=vector, ...) ...")

  x <- list(a="integer", b="numeric", c="character", c="list")
  str(list(x=x))

  y0 <- lapply(x, FUN=vector, length=2L)
  str(list(y0=y0))

  for (strategy in supportedStrategies()) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)
    y <- future_lapply(x, FUN=vector, length=2L)
    str(list(y=y))
    stopifnot(identical(y, y0))
  }


  message("- future_lapply(x, FUN=base::vector, ...) ...")

  x <- list(a="integer", b="numeric", c="character", c="list")
  str(list(x=x))

  y0 <- lapply(x, FUN=base::vector, length=2L)
  str(list(y0=y0))

  for (strategy in supportedStrategies()) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)
    y <- future_lapply(x, FUN=base::vector, length=2L)
    str(list(y=y))
    stopifnot(identical(y, y0))
  }


  message("- future_lapply(x, FUN=future:::hpaste, ...) ...")

  x <- list(a=c("hello", b=1:100))
  str(list(x=x))

  y0 <- lapply(x, FUN=future:::hpaste, collapse="; ", maxHead=3L)
  str(list(y0=y0))

  for (strategy in supportedStrategies()) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)
    y <- future_lapply(x, FUN=future:::hpaste, collapse="; ", maxHead=3L)
    str(list(y=y))
    stopifnot(identical(y, y0))
  }


  message("- future_lapply(x, FUN=listenv::listenv, ...) ...")

  x <- list()

  y <- listenv()
  y$A <- 3L
  x$a <- y

  y <- listenv()
  y$A <- 3L
  y$B <- c("hello", b=1:100)
  x$b <- y

  print(x)

  y0 <- lapply(x, FUN=listenv::map)
  str(list(y0=y0))

  for (strategy in supportedStrategies()) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)
    y <- future_lapply(x, FUN=listenv::map)
    str(list(y=y))
    stopifnot(identical(y, y0))
  }


  message("- future_lapply(x, FUN=rnorm, ...) - random seed ...")

  y0 <- NULL
  for (strategy in supportedStrategies()) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)
    y <- future_lapply(1:10, FUN = function(i) {
      rnorm(1L)
    }, future.args = list(seed = 42L))
    y <- unlist(y)
    if (is.null(y0)) y0 <- y
    str(list(y=y))
    stopifnot(identical(y, y0))
  }

  message("- future_lapply(x, FUN=rnorm, ...) - random seed ... DONE")

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** future_lapply() ... DONE")

source("incl/end.R")

