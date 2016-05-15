#' Gets the number of workers
#'
#' @param evaluator A future evaluator function.
#' If NULL (default), the current evaluator as returned
#' by \code{\link{plan}()} is used.
#'
#' @return A number in [1,Inf].
#'
#' @export
nbrOfWorkers <- function(evaluator=NULL) {
  UseMethod("nbrOfWorkers")
}


#' @export
nbrOfWorkers.uniprocess <- function(evaluator) 1L

#' @export
nbrOfWorkers.multiprocess <- function(evaluator) {
  expr <- formals(evaluator)$workers
  workers <- eval(expr)
  stopifnot(length(workers) == 1, is.finite(workers), workers >= 1)
  workers
}

#' @export
nbrOfWorkers.future <- function(evaluator) {
  expr <- formals(evaluator)$workers
  workers <- eval(expr)
  if (is.null(workers)) workers <- Inf
  workers
}

#' @export
nbrOfWorkers.NULL <- function(evaluator) {
  nbrOfWorkers(plan())
}
