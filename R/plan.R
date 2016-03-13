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

  ## Main function
  function(strategy=NULL, ..., substitute=TRUE, .call=TRUE) {
    if (substitute) strategy <- substitute(strategy)
    if (is.logical(.call)) stopifnot(length(.call) == 1L, !is.na(.call))

    ## Predefined "actions":
    if (is.null(strategy) || identical(strategy, "next")) {
      ## Next future strategy?
      return(stack[[1L]])
    } else if (identical(strategy, "default")) {
      ## Set default plan according to option/sysenv variable?
      strategy <- trim(Sys.getenv("R_FUTURE_PLAN"))
      strategy <- getOption("future.plan", strategy)
      if (!nzchar(strategy)) strategy <- eager
    } else if (identical(strategy, "list")) {
      ## List stack of future strategies?
      return(stack)
    } else if (identical(strategy, "reset")) {
      ## Rest stack of future strategies?
      stack <<- list(
        structure(eager, call=substitute(plan(eager)))
      )
      return(stack)
    }

    ## Current and new stack of future strategies
    oldStack <- stack
    newStack <- NULL

    ## (a) Is a (plain) list of future strategies specified?
    if (is.language(strategy)) {
      first <- as.list(strategy)[[1]]
      if (is.symbol(first) && first == as.symbol("list")) {
        strategies <- eval(strategy, envir=parent.frame())
        stopifnot(is.list(strategies), length(strategies) >= 1L)
        newStack <- strategies
      }
    }

    ## (b) Otherwise, assume a single future strategy
    if (is.null(newStack)) {
      ## Arguments to be tweaked
      targs <- list(...)

      if (is.symbol(strategy)) {
        strategy <- eval(strategy, envir=parent.frame())
      } else if (is.language(strategy)) {
        strategyT <- as.list(strategy)

        ## tweak(...)?
        if (strategyT[[1]] == as.symbol("tweak")) {
          strategy <- eval(strategy, envir=parent.frame())
        } else {
          isSymbol <- sapply(strategyT, FUN=is.symbol)
          if (!all(isSymbol)) {
            targs <- c(targs, strategyT[-1L])
            strategy <- strategyT[[1L]]
          }
          strategy <- eval(strategy, envir=parent.frame())
        }
      }

      ## Tweak future strategy accordingly
      args <- c(list(strategy), targs, penvir=parent.frame())
      tstrategy <- do.call(tweak, args=args)

      ## Setup a new stack of future strategies (with a single one)
      newStack <- list(tstrategy)
    }


    ## Attach call attribute to each strategy in the stack?
    if (!is.null(.call)) {
      ## The call to assign
      call <- if (isTRUE(.call)) sys.call() else .call

      for (kk in seq_along(newStack)) {
        strategy <- newStack[[kk]]
        ## Skip if already has a call attibute
        if (!is.null(attr(strategy, "call"))) next
        ## Attach call
        attr(strategy, "call") <- call
        newStack[[kk]] <- strategy
      }
    }

    ## Set new strategy for futures
    stack <<- newStack
    stopifnot(is.list(stack), length(stack) >= 1L)

    invisible(oldStack[[1L]])
  } # function()
}) # plan()


supportedStrategies <- function(strategies=c("lazy", "eager", "multicore", "multisession", "multiprocess")) {
  if (!supportsMulticore()) strategies <- setdiff(strategies, "multicore")
  strategies
}
