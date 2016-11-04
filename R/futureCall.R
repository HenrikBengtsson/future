#' @param FUN A \link[base]{function} object.
#' @param args A \link[base]{list} of arguments passed to function \code{FUN}.
#'
#' @rdname future
#'
#' @export
futureCall <- function(FUN, args=NULL, envir=parent.frame(), globals=TRUE, evaluator=plan("next"), ...) {
  stopifnot(is.function(FUN))
  stopifnot(is.list(args))

  envirT <- new.env(parent=envir)
  envirT$FUN <- FUN
  envirT$args <- args

  future(do.call(what=FUN, args=args), substitute=TRUE, envir=envirT, globals=globals, evaluator=evaluator)
} # futureCall()
