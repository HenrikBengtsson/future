library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L)


message("*** Tricky use cases related to globals ...")

flapply <- function(x, FUN, ...) {
  res <- listenv()
  for (ii in seq_along(x)) {
    res[[ii]] %<=% FUN(x[[ii]], ...)
  }
  names(res) <- names(x)

  ## Make sure 'x', 'FUN' and 'ii' are truly
  ## exported to the future environment
  rm(list=c("x", "FUN", "ii"))

  as.list(res)
}

strategies <- c("eager", "lazy")
if (supportsMulticore()) strategies <- c(strategies, "multicore")


message("- flapply(x, FUN=base::vector, ...) ...")

x <- list(a="integer", b="numeric", c="character", c="list")
str(list(x=x))

y0 <- lapply(x, FUN=base::vector, length=2L)
str(list(y0=y0))

for (strategy in strategies) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)
  y <- flapply(x, FUN=base::vector, length=2L)
  str(list(y=y))
  stopifnot(identical(y, y0))
}


message("- flapply(x, FUN=future:::hpaste, ...) ...")

x <- list(a=c("hello", b=1:100))
str(list(x=x))

y0 <- lapply(x, FUN=future:::hpaste, collapse="; ", maxHead=3L)
str(list(y0=y0))

for (strategy in strategies) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)
  y <- flapply(x, FUN=future:::hpaste, collapse="; ", maxHead=3L)
  str(list(y=y))
  stopifnot(identical(y, y0))
}


message("- flapply(x, FUN=listenv::listenv, ...) ...")

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

for (strategy in strategies) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)
  y <- flapply(x, FUN=listenv::map)
  str(list(y=y))
  stopifnot(identical(y, y0))
}


message("- Local variables with the same name as globals ...")

methods <- c("conservative")
if (packageVersion("globals") > "0.5.0") methods <- c(methods, "ordered")

for (method in methods) {
  options("future::globalsMethod"=method)

  for (strategy in strategies) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)

    a <- 3
    yTruth <- local({
      b <- a
      a <- 2
      a*b
    })

    y %<=% {
      b <- a
      a <- 2
      a*b
    }

    rm(list="a")

    res <- try(y, silent=TRUE)
    if (method == "conservative" && strategy == "lazy") {
      stopifnot(inherits(res, "try-error"))
    } else {
      message(sprintf("y=%g", y))
      stopifnot(identical(y, yTruth))
    }


    res <- listenv()
    a <- 1
    for (ii in 1:3) {
      res[[ii]] %<=% {
        b <- a*ii
        a <- 0
        b
      }
    }
    rm(list="a")

    res <- try(unlist(res), silent=TRUE)
    if (method == "conservative" && strategy == "lazy") {
      stopifnot(inherits(res, "try-error"))
    } else {
      print(res)
      stopifnot(all(res == 1:3))
    }
  } ## for (strategy ...)
}

message("*** Tricky use cases related to globals ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
