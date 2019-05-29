#' Get the number of workers available
#'
#' @param evaluator A future evaluator function.
#' If NULL (default), the current evaluator as returned
#' by \code{\link{plan}()} is used.
#'
#' @return A positive number in \eqn{{1, 2, 3, ...}}.
#' Note, it may also be \code{+Inf} for certain types of backends.
#'
#' @example incl/nbrOfWorkers.R
#'
#' @export
nbrOfWorkers <- function(evaluator = NULL) {
  UseMethod("nbrOfWorkers")
}


#' @export
nbrOfWorkers.cluster <- function(evaluator) {
  expr <- formals(evaluator)$workers
  workers <- eval(expr, enclos = baseenv())
  if (is.function(workers)) workers <- workers()
  if (is.character(workers)) {
    stop_if_not(!anyNA(workers))
    workers <- length(workers)
  } else if (is.numeric(workers)) {
  } else if (inherits(workers, "cluster")) {
    workers <- length(workers)
  } else {
    stop("Unsupported type of 'workers': ", class(workers)[1])
  }
  stop_if_not(length(workers) == 1, is.finite(workers), workers >= 1)
  workers
}

#' @export
nbrOfWorkers.uniprocess <- function(evaluator) 1L

#' @export
nbrOfWorkers.multiprocess <- function(evaluator) {
  expr <- formals(evaluator)$workers
  workers <- eval(expr, enclos = baseenv())
  if (is.function(workers)) workers <- workers()
  stop_if_not(length(workers) == 1, is.finite(workers), workers >= 1)
  workers
}

#' @export
nbrOfWorkers.future <- function(evaluator) {
  expr <- formals(evaluator)$workers
  workers <- eval(expr, enclos = baseenv())
  if (is.function(workers)) workers <- workers()
  if (is.null(workers)) workers <- Inf
  workers
}

#' @export
nbrOfWorkers.NULL <- function(evaluator) {
  nbrOfWorkers(plan("next"))
}
