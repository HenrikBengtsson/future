#' @param FUN A \link[base]{function} to be evaluated.
#'
#' @param args A \link[base]{list} of arguments passed to function \code{FUN}.
#'
#' @return
#' \code{f <- futureCall(FUN, args)} creates a \link{Future} \code{f} that calls function \code{FUN} with arguments \code{args}, where the value of the future is retrieved using \code{x <- value(f)}.
#'
#' @rdname future
#' @export
futureCall <- function(FUN, args=NULL, envir=parent.frame(), lazy=NA, seed=NULL, globals=TRUE, evaluator=plan("next"), ...) {
  stopifnot(is.function(FUN))
  stopifnot(is.list(args))

  envirT <- new.env(parent=envir)
  envirT$FUN <- FUN
  envirT$args <- args

  future(do.call(what=FUN, args=args), substitute=TRUE, envir=envirT, lazy=lazy, seed=seed, globals=globals, evaluator=evaluator)
}
