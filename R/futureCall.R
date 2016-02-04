#' @param FUN A function object.
#' @param args A list of arguments passed to function \code{FUN}.
#'
#' @rdname future
#'
#' @export
futureCall <- function(FUN, args=NULL, envir=parent.frame(), evaluator=plan(), ...) {
  stopifnot(is.function(FUN))
  stopifnot(is.list(args))

  envirT <- new.env(parent=envir)
  envirT$FUN <- FUN
  envirT$args <- args

  future(do.call(what=FUN, args=args), substitute=TRUE, envir=envirT, evaluator=evaluator)
} # futureCall()
