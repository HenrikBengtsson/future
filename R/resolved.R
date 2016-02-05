#' Check whether a future is resolved or not
#'
#' @param x A \link{Future}, a list or an environment (which also
#' includes \link[listenv:listenv]{list environment}.
#' @param \dots Not used
#'
#' @return A logical of the same length and dimensions as \code{x}.
#' Each element is TRUE unless the corresponding element is a
#' non-resolved future in case it is FALSE.
#'
#' @details
#' This method needs to be implemented by the class that implement
#' the Future API.  The implementation must never throw an error,
#' but only return either TRUE or FALSE.
#' It should also be possible to use the method for polling the
#' future until it is resolved (without having to wait infinitly long),
#' e.g. \code{while (!resolved(future)) Sys.sleep(5)}.
#'
#' @export
#' @export resolved
#' @aliases resolved.default
#' @aliases resolved.Future
#' @aliases resolved.list
#' @aliases resolved.environment
resolved <- function(x, ...) UseMethod("resolved")

#' @export
resolved.default <- function(x, ...) TRUE

#' @export
resolved.list <- function(x, ...) {
  fs <- futures(x)

  ## Allocate results. Assume everything
  ## is resolved unless not.
  res <- rep(TRUE, times=length(fs))
  for (ii in seq_along(fs)) {
    f <- fs[[ii]]
    if (inherits(f, "Future")) res[[ii]] <- resolved(f)
  }

  dim <- dim(fs)
  if (!is.null(dim)) {
    dim(res) <- dim
    ## Preserve dimnames and names
    dimnames(res) <- dimnames(fs)
  }
  names(res) <- names(fs)

  res
}

#' @export
resolved.environment <- function(x, ...) {
  fs <- futures(x)
  names <- names(fs)
  fs <- as.list(fs)
  names(fs) <- names
  resolved(fs)
}
