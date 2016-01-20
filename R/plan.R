#' Plan how to resolve a future
#'
#' This function allows you to plan the future, more specifically,
#' it specifies how \code{\link{future}()}:s are resolved,
#' e.g. by eager or by lazy evaluation.
#'
#' @param strategy The evaluation function to use for resolving a future.
#' If NULL, then the current strategy is returned.
#' @param \dots Additional arguments overriding the default arguments
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
#' @details
#' The default strategy is \code{\link{eager}}, which can be set by
#' option \code{future.plan} and, if that is not set,
#' system environment variable \code{R_FUTURE_PLAN}.
#' To reset the strategy back to the default, use \code{plan("default")}.
#'
#' @seealso
#' Evaluation functions provided by this package are \code{\link{eager}()},
#' \code{\link{lazy}()} and \code{\link{multicore}()}.
#' Other package may provide additional evaluation strategies/functions.
#'
#' @export
plan <- local({
  ## Stack of type of futures to use
  stack <- list(
    structure(eager, call=substitute(plan(eager)))
  )


  ## Local functions
  asStrategy <- function(strategy, ..., penv) {
    args <- list(...)

    if (identical(strategy, "default")) {
      ## Set default plan according to option/sysenv variable?
      strategy <- trim(Sys.getenv("R_FUTURE_PLAN"))
      strategy <- getOption("future.plan", strategy)
      if (!nzchar(strategy)) strategy <- eager
    }

    if (is.symbol(strategy)) {
    } else if (is.language(strategy)) {
      strategyT <- as.list(strategy)
      isSymbol <- sapply(strategyT, FUN=is.symbol)
      if (!all(isSymbol)) {
        args <- c(args, strategyT[-1L])
        strategy <- strategyT[[1L]]
      }
    }
    strategy <- eval(strategy, envir=penv)

    if (is.character(strategy)) {
      ## Search attached packages and the 'future' package
      envirs <- list(penv, future=getNamespace("future"), NULL)
      for (envir in envirs) {
        if (is.null(envir)) {
          stop("No such strategy for futures: ", sQuote(strategy))
        }
        if (exists(strategy, mode="function", envir=envir, inherits=TRUE)) {
          strategy <- get(strategy, mode="function", envir=envir, inherits=TRUE)
          break
        }
      }
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

    strategy
  } ## asStrategy()


  ## Main function
  function(strategy=NULL, ..., substitute=TRUE, .call=TRUE) {
    if (substitute) strategy <- substitute(strategy)

    ## Current strategy
    old <- stack[[1L]]

    ## Return current plan?
    if (is.null(strategy)) return(old)

    ## Parse strategy and ...
    penv <- parent.frame()
    strategy <- asStrategy(strategy, ..., penv=penv)

    if (isTRUE(.call)) {
      .call <- attr(strategy, "call")
      if (is.null(.call)) .call <- sys.call()
    }
    attr(strategy, "call") <- .call

    ## Set new strategy for futures
    stack <<- list(strategy)

    invisible(old)
  } # function()
}) # plan()


supportedStrategies <- function(strategies=c("lazy", "eager", "multicore", "multisession")) {
  if (!supportsMulticore()) strategies <- setdiff(strategies, "multicore")
  strategies
}
