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
  asStrategy <- function(strategy, ..., penvir=parent.frame()) {
    if (identical(strategy, "default")) {
      ## Set default plan according to option/sysenv variable?
      strategy <- trim(Sys.getenv("R_FUTURE_PLAN"))
      strategy <- getOption("future.plan", strategy)
      if (!nzchar(strategy)) strategy <- eager
    }


    ## Tweaked arguments
    targs <- list(...)

    if (is.symbol(strategy)) {
      strategy <- eval(strategy, envir=penvir)
    } else if (is.language(strategy)) {
      strategyT <- as.list(strategy)

      ## tweak(...)?
      if (strategyT[[1]] == as.name("tweak")) {
        strategy <- eval(strategy, envir=penvir)
      } else {
        isSymbol <- sapply(strategyT, FUN=is.symbol)
        if (!all(isSymbol)) {
          targs <- c(targs, strategyT[-1L])
          strategy <- strategyT[[1L]]
        }
        strategy <- eval(strategy, envir=penvir)
      }
    }

    ## Tweak future strategy accordingly
    args <- c(list(strategy), targs, penvir=penvir)
    do.call(tweak, args=args)
  } ## asStrategy()


  ## Main function
  function(strategy=NULL, ..., substitute=TRUE, .call=TRUE) {
    if (substitute) strategy <- substitute(strategy)

    ## Current strategy
    old <- stack[[1L]]

    ## Return current plan?
    if (is.null(strategy)) return(old)

    ## Parse strategy and ...
    penvir <- parent.frame()
    strategy <- asStrategy(strategy, ..., penvir=penvir)

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


supportedStrategies <- function(strategies=c("lazy", "eager", "multicore", "multisession", "multiprocess")) {
  if (!supportsMulticore()) strategies <- setdiff(strategies, "multicore")
  strategies
}
