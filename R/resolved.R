#' @export
resolved.list <- function(x, ...) {
  fs <- futures(x)

  ## Allocate results. Assume everything
  ## is resolved unless not.
  res <- rep(TRUE, times=length(fs))
  dim <- dim(fs)
  if (is.null(dim)) {
    names(res) <- names(fs)
  } else {
    dim(res) <- dim
    dimnames(res) <- dimnames(fs)
  }

  for (ii in seq_along(fs)) {
    f <- fs[[ii]]
    if (inherits(f, "Future")) res[[ii]] <- resolved(f)
  }

  res
}

#' @export
resolved.environment <- function(x, ...) {
  fs <- futures(x)
  fs <- as.list(fs)
  resolved(fs)
}

#' @export
resolved.listenv <- function(x, ...) {
  fs <- futures(x)
  fs <- as.list(fs)
  resolved(fs)
}
