#' Get all values in a container
#'
#' Gets all values in an environment, a list, or a list environment
#' and returns an object of the same class (and dimensions).
#' All future elements are replaced by their corresponding
#' \code{value()} values.  For all other elements, the existing
#' object is kept.
#'
#' @param x An environment, a list, or a list environment.
#'
#' @param stdout If TRUE, captured standard output is relayed, otherwise note.
#' 
#' @param signal If TRUE, captured (\link[base]{conditions}) are relayed,
#' otherwise not.
#' 
#' @param \dots Additional arguments passed to \code{value()} of each future.
#'
#' @return An object of same type as \code{x} and with the same names
#' and/or dimensions, if set.
#' If \code{signal} is TRUE and one of the futures produces an error, then
#' that error is produced.
#'
#' @export
values <- function(x, stdout = TRUE, signal = TRUE, ...) UseMethod("values")

#' @export
values.list <- function(x, stdout = TRUE, signal = TRUE, ...) {
  y <- futures(x)
  y <- resolve(y, result = TRUE, stdout = stdout, signal = signal, force = TRUE)
  for (ii in seq_along(y)) {
    f <- y[[ii]]
    if (!inherits(f, "Future")) next
    v <- value(f, stdout = FALSE, signal = FALSE, ...)
    if (signal && inherits(v, "error")) stop(v)
    if (is.null(v)) {
      y[ii] <- list(NULL)
    } else {
      y[[ii]] <- v
      v <- NULL
    }
  }
  y
}

#' @export
values.environment <- function(x, stdout = TRUE, signal = TRUE, ...) {
  y <- futures(x)
  y <- resolve(y, result = TRUE, stdout = stdout, signal = signal, force = TRUE)
  names <- ls(envir = y, all.names = TRUE)
  for (key in names) {
    f <- y[[key]]
    if (!inherits(f, "Future")) next
    v <- value(f, stdout = FALSE, signal = FALSE, ...)
    if (signal && inherits(v, "error")) stop(v)
    y[[key]] <- v
  }
  y
}

#' @export
values.listenv <- function(x, stdout = TRUE, signal = TRUE, ...) {
  y <- futures(x)
  y <- resolve(y, result = TRUE, stdout = stdout, signal = signal, force = TRUE)
  for (ii in seq_along(y)) {
    f <- y[[ii]]
    if (!inherits(f, "Future")) next
    v <- value(f, stdout = FALSE, signal = FALSE, ...)
    if (signal && inherits(v, "error")) stop(v)
    if (is.null(v)) {
      y[ii] <- list(NULL)
    } else {
      y[[ii]] <- v
      v <- NULL
    }
  }
  y
}

#' @export
values.Future <- function(x, ...) {
  value(x, ...)
}
