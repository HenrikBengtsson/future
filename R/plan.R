#' Plan how to resolve a future
#'
#' This function allows you to plan the future, more specifically,
#' it specifies how \code{\link{future}()}:s are resolved,
#' e.g. sequentially or in parallel.
#'
#' @param strategy The evaluation function (or name of it) to use
#' for resolving a future.  If NULL, then the current strategy is returned.
#' @param \dots Additional arguments overriding the default arguments
#' of the evaluation function.
#' @param substitute If TRUE, the \code{strategy} expression is
#' \code{substitute()}:d, otherwise not.
#' @param .call (internal) Used for recording the call to this function.
#'
#' @return If a new strategy is chosen, then the previous one is returned
#' (invisible), otherwise the current one is returned (visibly).
#'
#' @example incl/plan.R
#'
#' @details
#' The default strategy is \code{\link{eager}}, but the default can be
#' configured by option \option{future.plan} and, if that is not set,
#' system environment variable \env{R_FUTURE_PLAN}.
#' To reset the strategy back to the default, use \code{plan("default")}.
#'
#' @section Implemented evaluation strategies:
#' \itemize{
#'  \item{\code{\link{eager}}:}{
#'    Resolves futures sequentially in the current R process.
#'  }
#'  \item{\code{\link{lazy}}:}{
#'    Resolves futures synchronously (sequentially) in the current
#'    R process, but only if their values are requested.  Futures for
#'    which the values are never requested will not be evaluated.
#'  }
#'  \item{\code{\link{transparent}}:}{
#'    Resolves futures synchronously (sequentially) in the current
#'    R process and assignments will be done to the calling environment.
#'    Early stopping is enabled by default.
#'  }
#'  \item{\code{\link{multisession}}:}{
#'    Resolves futures asynchronously (in parallel) in separate
#'    R sessions running in the background on the same machine.
#'  }
#'  \item{\code{\link{multicore}}:}{
#'    Resolves futures asynchronously (in parallel) in separate
#'    \emph{forked} R processes running in the background on
#'    the same machine.  Not supported on Windows.
#'  }
#'  \item{\code{\link{multiprocess}}:}{
#'    If multicore evaluation is supported, that will be used,
#     otherwise multisession evaluation will be used.
#'  }
#'  \item{\code{\link{cluster}}:}{
#'    Resolves futures asynchronously (in parallel) in separate
#'    R sessions running typically on one or more machines.
#'  }
#'  \item{\code{\link{remote}}:}{
#'    Resolves futures asynchronously in a separate R session
#'    running on a separate machine, typically on a different
#'    network.
#'  }
#' }
#'
#' Other package may provide additional evaluation strategies.
#' Notably, the \pkg{future.BatchJobs} package implements a
#' type of futures that will be resolved via job schedulers
#' that are typically available on high-performance compute
#' (HPC) clusters, e.g. LSF, Slurm, TORQUE/PBS, Sun Grid Engine,
#' and OpenLava.
#'
#' @export
plan <- local({
  defaultStrategy <- structure(eager, call=substitute(plan(eager)))

  ## Stack of type of futures to use
  stack <- list(defaultStrategy)

  ## Main function
  function(strategy=NULL, ..., substitute=TRUE, .call=TRUE) {
    if (substitute) strategy <- substitute(strategy)
    if (is.logical(.call)) stopifnot(length(.call) == 1L, !is.na(.call))

    ## Predefined "actions":
    if (is.null(strategy) || identical(strategy, "next")) {
      ## Next future strategy?
      return(stack[[1L]])
    } else if (identical(strategy, "default")) {
      strategy <- getOption("future.plan", eager)
    } else if (identical(strategy, "list")) {
      ## List stack of future strategies?
      return(stack)
    } else if (identical(strategy, "reset")) {
      ## Rest stack of future strategies?
      stack <<- list(defaultStrategy)
      return(stack)
    } else if (identical(strategy, "pop")) {
      ## Pop strategy stack and return old stack (so it can be pushed back later)
      oldStack <- stack
      stack <<- stack[-1L]
      if (length(stack) == 0L) stack <<- list(defaultStrategy)
      return(oldStack)
    }

    ## Current and new stack of future strategies
    oldStack <- stack
    newStack <- NULL

    ## Set new stack?
    if (is.list(strategy)) {
      stopifnot(is.list(strategy), length(strategy) >= 1L)
      for (ii in seq_along(strategy)) {
        stopifnot(is.function(strategy[[ii]]))
      }
      stack <<- strategy
      return(invisible(oldStack[[1L]]))
    }

    ## (a) Is a (plain) list of future strategies specified?
    if (is.language(strategy)) {
      first <- as.list(strategy)[[1]]
      if (is.symbol(first)) {
        first <- eval(first, envir=parent.frame())
        ## A list object, e.g. plan(oplan)?
        if (is.list(first)) {
          strategies <- first
          res <- plan(strategies, substitute=FALSE)
          return(invisible(res))
        }

        ## Example: plan(list(eager, lazy))
        if (is.function(first) && identical(first, list)) {
          ## Specified explicitly using plan(list(...))?
          strategies <- eval(strategy, envir=parent.frame())
          stopifnot(is.list(strategies), length(strategies) >= 1L)
          ## Coerce strings to functions, e.g. plan(list("eager", lazy))
          for (kk in seq_along(strategies)) {
            strategy_kk <- strategies[[kk]]
            if (is.character(strategy_kk)) {
              strategy_kk <- tweak(strategy_kk, penvir=parent.frame())
              strategies[[kk]] <- strategy_kk
            }
          }
          newStack <- strategies
        }
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
