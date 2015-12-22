#' @export
futures <- function(x, ...) UseMethod("futures")

#' @export
futures.list <- function(x, ...) {
  x
}

#' @export
futures.environment <- function(x, ...) {
  fs <- futureOf(envir=x, mustExist=FALSE, drop=FALSE)

  ## Create object of same class as 'x'
  res <- new.env()
  for (key in names(fs)) {
    f <- fs[[key]]
    if (inherits(f, "Future")) {
      res[[key]] <- f
    } else {
      res[[key]] <- x[[key]]
    }
  }

  res
}

#' @export
#' @importFrom listenv listenv
futures.listenv <- function(x, ...) {
  fs <- futureOf(envir=x, mustExist=FALSE, drop=FALSE)

  ## Create object of same class as 'x'
  res <- listenv()
  length(res) <- length(fs)
  for (ii in seq_along(fs)) {
    f <- fs[[ii]]
    if (inherits(f, "Future")) {
      res[[ii]] <- f
    } else {
      res[[ii]] <- x[[ii]]
    }
  }

  dim <- dim(x)
  if (!is.null(dim)) {
    dim(res) <- dim
    dimnames(res) <- dimnames(x)
  }

  res
}
