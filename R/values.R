#' Gets all values in an object
#'
#' Gets all values in an environment, a list, or a list environment
#' and returns an object of the same class (and dimensions).
#' All future elements are replaced by their corresponding
#' \code{value()} values.  For all other elements, the existing
#' object is kept.
#'
#' @param x An environment, a list, or a list environment.
#' @param ... Not used.
#'
#' @return An object of same type as \code{x} and with the same names
#' and/or dimensions, if set.
#'
#' @export
values <- function(x, ...) UseMethod("values")

#' @export
values.list <- function(x, ...) {
  y <- futures(x)
  y <- resolve(y)

  for (ii in seq_along(y)) {
    tmp <- y[[ii]]
    if (inherits(tmp, "Future")) y[[ii]] <- value(tmp)
  }
  y
}

#' @export
values.environment <- function(x, ...) {
  y <- futures(x)
  y <- resolve(y)
  names <- ls(envir=y, all.names=TRUE)
  for (key in names) {
    tmp <- y[[key]]
    if (inherits(tmp, "Future")) y[[key]] <- value(tmp)
  }
  y
}

#' @export
values.listenv <- function(x, ...) {
  y <- futures(x)
  y <- resolve(y)
  for (ii in seq_along(y)) {
    tmp <- y[[ii]]
    if (inherits(tmp, "Future")) y[[ii]] <- value(tmp)
  }
  y
}

#' @export
values.Future <- function(x, ...) {
  value(x, ...)
}
