#' Turns a function into a futuristic function
#'
#' A futuristic function is a function that will return a future
#' function call such that when the value of the future is resolved
#' the value of the function call with be returned.
#'
#' @param FUN A function.
#' @param vectorize If TRUE, the function \code{FUN} is vectorized
#'        using \code{\link[base]{Vectorize}()} before applied.
#'
#' @return A function of class Futuristic
#'
#' @seealso \code{\link{futureCall}()}
#'
#' @export
#'
#' @keywords internal
futurize <- function(FUN, vectorize=FALSE) {
  if (is.character(FUN)) FUN <- get(FUN, mode="function", envir=parent.frame())
  stopifnot(is.function(FUN))
  if (inherits(FUN, "Futuristic")) FUN

  fFUN <- function(..., envir=parent.frame(), evaluator=plan()) {
    futureCall(FUN, args=list(...), envir=envir, evaluator=evaluator)
  }
  if (vectorize) {
    fFUN <- args(FUN)
    formals <- formals(fFUN)
    names <- names(formals)
    args <- lapply(names, FUN=as.symbol)
    names[names == "..."] <- ""
    names(args) <- names
    args <- do.call(alist, args=args)
    body <- substitute({
      futureCall(FUN, args=args)
    }, list(args=args))
    body(fFUN) <- body
    environment(fFUN) <- new.env(parent=environment())
    names <- as.list(formals(args(FUN)))
    names[["..."]] <- NULL
    fFUN <- Vectorize(fFUN)
  }



  class(fFUN) <- c("Futuristic", class(FUN))

  fFUN
}
