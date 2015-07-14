#' Plan how to resolve a future
#'
#' This function allows you to plan the future, more specifically,
#' it specifies how \code{\link{future}()}:s are resolved,
#' e.g. by eager or by lazy evaluation.
#'
#' @param strategy The evaluation function to use for resolving a future.
#' If NULL, then the current strategy is returned.
#' @param ... Additional arguments overriding the default arguments
#' of the evaluation function.
#' @param substitute If TRUE, the \code{strategy} expression is
#' \code{substitute()}:d, otherwise not.
#' @param .call (internal) Used to record the call to this function.
#'
#' @return If a new strategy is chosen, then the previous one is returned
#' (invisible), otherwise the current one is returned (visibly).
#'
#' @example incl/plan.R
#'
#' @seealso
#' Evaluation functions provided by this package are \code{\link{eager}()},
#' \code{\link{lazy}()} and \code{\link{multicore}()}.
#' Other package may provide additional evaluation strategies/functions.
#'
#' @export
plan <- local({
  .strategy <- structure(eager, call=substitute(plan(eager)))

  function(strategy=NULL, ..., substitute=TRUE, .call=TRUE) {
    if (substitute) strategy <- substitute(strategy)
    args <- list(...)

    ## Return current plan
    if (is.null(strategy)) return(.strategy)

    if (is.symbol(strategy) || is.language(strategy)) {
      strategy <- as.list(strategy)
      args <- c(args, strategy[-1])
      strategy <- eval(strategy[[1L]], envir=parent.frame())
    }

    if (isTRUE(.call)) {
      .call <- attr(strategy, "call")
      if (is.null(.call)) .call <- sys.call()
    }

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

    ## Record call
    attr(strategy, "call") <- .call

    ## Return old strategy
    old <- .strategy

    ## Set new strategy for futures
    .strategy <<- strategy

    invisible(old)
  } # function()
}) # plan()
