#' @export
values <- function(x, ...) UseMethod("values")

#' @export
values.list <- function(x, ...) {
  y <- futures(x)
  for (ii in seq_along(y)) {
    tmp <- y[[ii]]
    if (inherits(tmp, "Future")) y[[ii]] <- value(tmp)
  }
  y
}

#' @export
values.environment <- function(x, ...) {
  y <- futures(x)
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
  for (ii in seq_along(y)) {
    tmp <- y[[ii]]
    if (inherits(tmp, "Future")) y[[ii]] <- value(tmp)
  }
  y
}
