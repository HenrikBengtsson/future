#' @export
futureCall <- function(FUN, args=NULL, envir=parent.frame(), evaluator=plan(), ...) {
  stopifnot(is.function(FUN))
  stopifnot(is.list(args))

  envirT <- new.env(parent=envir)
  envirT$FUN <- FUN
  envirT$args <- args

  future(do.call(what=FUN, args=args), substitute=TRUE, envir=envirT, evaluator=evaluator)
} # futureCall()
