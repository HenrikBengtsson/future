#' The plan used to resolve the future
#'
#' This function allows you to plan the future, more specifically,
#' it specifies how \code{\link{future}()}:s are resolved,
#' e.g. by eager or by lazy evaluation.
#'
#' @param strategy The evaluation function to use for resolving a future.
#' If NULL, then the current strategy is returned.
#' @param ... Additional arguments overriding the default arguments
#' of the evaluation function.
#'
#' @return If a new strategy is choosen, then the previous one is returned
#' (invisible), otherwise the current one is returned (visibly).
#'
#' @example incl/plan.R
#'
#' @seealso
#' Evaluation functions provided by this package are
#' \code{\link{eager}()} and \code{\link{lazy}()}.
#'
#' @export
plan <- function(strategy=NULL, ...) {
  ostrategy <- getOption("future", lazy)
  if (is.null(strategy)) return(ostrategy)
  if (is.character(strategy)) {
    if (!exists(strategy, mode="function", envir=parent.frame(), inherits=TRUE)) {
      stop("No such strategy for futures: ", sQuote(strategy))
    }
    strategy <- get(strategy, mode="function", envir=parent.frame(), inherits=TRUE)
  }
  if (!is.function(strategy)) {
    stop("Argument 'strategy' must be a string or a function: ", mode(strategy))
  }

  ## Override defaults?
  args <- list(...)
  if (length(args) > 0L) {
    names <- names(args)
    if (is.null(names)) {
      stop("Additional arguments to plan() must be named.")
    }
    formals <- names(formals(strategy))
    unknown <- NULL
    for (kk in seq_along(args)) {
      name <- names[kk]
      if (is.element(name, formals)) {
        formals(strategy)[[name]] <- args[[name]]
      } else {
        unknown <- c(unknown, name)
      }
    }
    if (length(unknown) > 0L) {
      warning(sprintf("Ignored %d unknown arguments: %s", length(unknown), paste(sQuote(unknown), collapse=", ")))
    }
  }

  ## Set new strategy for futures
  options(future=strategy)

  invisible(ostrategy)
} # plan()
