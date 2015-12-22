library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1)

## Backward compatibility
if (getRversion() < "3.2.0") {
  names <- function(x) {
    if (class(x)[1] == "environment") {
      ls(envir=x, all.names=TRUE)
    } else {
      base::names(x)
    }
  }
}

## Supported types of futures
strategies <- c("eager", "lazy")
if (supportsMulticore()) strategies <- c(strategies, "multicore")

dims <- list(
  NULL,
  c(1,6),
  c(2,3),
  c(2,3,1),
  c(2,1,3,1)
)

message("*** futures() ...")

for (type in c("list", "environment", "listenv")) {
  message(sprintf("*** futures() - %s ...", type))

  for (strategy in strategies) {
    message("- Plan: ", strategy)
    plan(strategy)

    if (type == "list") {
      x <- list()
    } else if (type == "listenv") {
      x <- listenv()
    } else if (type == "environment") {
      x <- new.env()
    }

    x$a <- 1
    x$b <- future(2)
    x$c <- 3
    if (type != "list") x$d %<=% { 4 }
    if (type != "environment") x[[6]] <- 6
    str(x)

    for (dim in dims) {
      if (!is.null(dim)) {
        if (type == "environment") {
          names(x) <- NULL
        } else {
          dim(x) <- dim
          dimnames(x) <- lapply(dim, FUN=function(n) letters[1:n])
        }
      }

      f <- futures(x)
      str(f)
      if (type != "environment") {
        stopifnot(length(f) == length(x))
        stopifnot(identical(names(f), names(x)))
      }
      stopifnot(identical(dim(f), dim(x)))
      stopifnot(identical(dimnames(f), dimnames(x)))

      r <- resolved(x)
      str(r)
      if (type != "environment") {
        stopifnot(length(r) == length(x))
        stopifnot(identical(names(r), names(x)))
      }
      stopifnot(identical(dim(r), dim(x)))
      stopifnot(identical(dimnames(r), dimnames(r)))
    }
  } # for (strategy ...)

  message(sprintf("*** futures() - %s ... DONE", type))
} # for (type ...)

message("*** futures() ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
