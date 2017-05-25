#' Plan how to resolve a future
#'
#' This function allows you to plan the future, more specifically,
#' it specifies how \code{\link{future}()}:s are resolved,
#' e.g. sequentially or in parallel.
#'
#' @param strategy The evaluation function (or name of it) to use
#' for resolving a future.  If NULL, then the current strategy is returned.
#'
#' @param \dots Additional arguments overriding the default arguments
#' of the evaluation function.  Which additional arguments are supported
#' depends on what evaluation function is used, e.g. several support
#' argument \code{workers} but not all.  For details, see the individual
#' functions of which some are linked to below.
#"
#' @param substitute If TRUE, the \code{strategy} expression is
#' \code{substitute()}:d, otherwise not.
#'
#' @param .call (internal) Used for recording the call to this function.
#'
#' @param .cleanup (internal) Used to stop implicitly started clusters.
#'
#' @param .init (internal) Used to initiate workers.
#'
#' @return If a new strategy is chosen, then the previous one is returned
#' (invisible), otherwise the current one is returned (visibly).
#'
#' @example incl/plan.R
#'
#' @details
#' The default strategy is \code{\link{sequential}}, but the default can be
#' configured by option \option{future.plan} and, if that is not set,
#' system environment variable \env{R_FUTURE_PLAN}.
#' To reset the strategy back to the default, use \code{plan("default")}.
#'
#' @section Implemented evaluation strategies:
#' \itemize{
#'  \item{\code{\link{sequential}}:}{
#'    Resolves futures sequentially in the current R process.
#'  }
#'  \item{\code{\link{transparent}}:}{
#'    Resolves futures sequentially in the current R process and
#'    assignments will be done to the calling environment.
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
#'    otherwise multisession evaluation will be used.
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
  defaultStrategy <- structure(sequential, call = substitute(plan(sequential)))
  
  defaultStack <- structure(list(defaultStrategy), class = c("FutureStrategyList", "list"))

  ## Stack of type of futures to use
  stack <- defaultStack

  plan_cleanup <- function() {
    ClusterRegistry(action = "stop")
  }
  
  plan_init <- function() {
    evaluator <- stack[[1L]]
    init <- attr(evaluator, "init")
    if (identical(init, TRUE)) {
      debug <- getOption("future.debug", FALSE)
      if (debug) {
        mdebug("plan(): plan_init() of %s ...", paste(sQuote(class(evaluator)), collapse = ", "))
        mdebug(paste(capture.output(print(evaluator)), collapse = "\n"))
      }

      ## IMPORANT: Initiate only once.  This avoids an infinite 
      ## recursive loop caused by other plan() calls.
      attr(evaluator, "init") <- "done"
      stack[[1L]] <<- evaluator

      ## Create dummy future to trigger setup (minimum overhead)
      f <- evaluator(NA, globals = FALSE, lazy = FALSE)

      ## Cleanup, but resolving it
      ## (otherwise the garbage collector would have to do it)
      v <- value(f)

      if (debug) mdebug("plan(): plan_init() of %s ... DONE", paste(sQuote(class(evaluator)), collapse = ", "))
    }
  }


  ## Main function
  function(strategy = NULL, ..., substitute = TRUE, .call = TRUE, .cleanup = TRUE, .init = TRUE) {
    if (substitute) strategy <- substitute(strategy)
    if (is.logical(.call)) stopifnot(length(.call) == 1L, !is.na(.call))
    
    ## Predefined "actions":
    if (is.null(strategy) || identical(strategy, "next")) {
      ## Next future strategy?
      strategy <- stack[[1L]]
      class(strategy) <- c("FutureStrategy", class(strategy))
      return(strategy)
    } else if (identical(strategy, "default")) {
      strategy <- getOption("future.plan", sequential)
    } else if (identical(strategy, "list")) {
      ## List stack of future strategies?
      return(stack)
    } else if (identical(strategy, "reset")) {
      ## Reset stack of future strategies?
      stack <<- defaultStack
      ## Stop any (implicitly started) clusters?
      if (.cleanup) plan_cleanup()
      return(stack)
    } else if (identical(strategy, "pop")) {
      ## Pop strategy stack and return old stack (so it can be pushed back later)
      oldStack <- stack
      stack <<- stack[-1L]
      if (length(stack) == 0L) stack <<- defaultStack
      return(oldStack)
    }

    ## Current and new stack of future strategies
    oldStack <- stack
    newStack <- NULL

    ## Arguments to be tweaked
    targs <- list(...)

    ## Check for deprecated usage of 'lazy'?
    check_lazy <- !identical(targs$.check_lazy, FALSE)
    targs$.check_lazy <- NULL
    
    ## Set new stack?
    if (is.list(strategy)) {
      stopifnot(is.list(strategy), length(strategy) >= 1L)

      if (check_lazy) {
        using_lazy <- FALSE
        for (ii in seq_along(strategy)) {
          stopifnot(is.function(strategy[[ii]]))
          using_lazy <- using_lazy || inherits(strategy[[ii]], "lazy")
        }

        if (using_lazy) {
          .Deprecated(msg = "Future strategy 'lazy' is deprecated. Lazy evaluation can no longer be set via plan(). Instead, use f <- future(..., lazy = TRUE) or v %<-% { ... } %lazy% TRUE.")
        }

        using_eager <- lapply(newStack, FUN = inherits, "eager")
        using_eager <- any(unlist(using_eager, use.names = FALSE))
        if (using_eager) {
          .Deprecated(msg = "Future strategy 'eager' is deprecated. Please use 'sequential' instead, which works identical.")
        }
      }
      
      class(strategy) <- unique(c("FutureStrategyList", class(strategy)))
      stack <<- strategy
      ## Stop any (implicitly started) clusters?
      if (.cleanup) plan_cleanup()
      ## Initiate future workers?
      if (.init) plan_init()
      return(invisible(oldStack[[1L]]))
    }

    ## (a) Is a (plain) list of future strategies specified?
    if (is.language(strategy)) {
      first <- as.list(strategy)[[1]]
      if (is.symbol(first)) {
        first <- eval(first, envir = parent.frame())
        ## A list object, e.g. plan(oplan)?
        if (is.list(first)) {
          strategies <- first
          res <- plan(strategies, substitute = FALSE,
	              .cleanup = .cleanup, .init = .init,
                      .check_lazy = check_lazy)
          return(invisible(res))
        }

        ## Example: plan(list(sequential, multicore))
        if (is.function(first) && identical(first, list)) {
          ## Specified explicitly using plan(list(...))?
          strategies <- eval(strategy, envir = parent.frame())
          stopifnot(is.list(strategies), length(strategies) >= 1L)
          ## Coerce strings to functions, e.g. plan(list("sequential", multicore))
          for (kk in seq_along(strategies)) {
            strategy_kk <- strategies[[kk]]
            if (is.character(strategy_kk)) {
              strategy_kk <- tweak(strategy_kk, penvir = parent.frame())
              strategies[[kk]] <- strategy_kk
            }
          }
          newStack <- strategies
        }
      }
    }

    ## (b) Otherwise, assume a single future strategy
    if (is.null(newStack)) {
      if (is.symbol(strategy)) {
        strategy <- eval(strategy, envir = parent.frame())
      } else if (is.language(strategy)) {
        strategyT <- as.list(strategy)

        ## tweak(...)?
        if (strategyT[[1]] == as.symbol("tweak")) {
          strategy <- eval(strategy, envir = parent.frame())
        } else {
          isSymbol <- sapply(strategyT, FUN = is.symbol)
          if (!all(isSymbol)) {
            targs <- c(targs, strategyT[-1L])
            strategy <- strategyT[[1L]]
          }
          strategy <- eval(strategy, envir = parent.frame())
        }
      }

      ## Tweak future strategy accordingly
      args <- c(list(strategy), targs, penvir = parent.frame())
      tstrategy <- do.call(tweak, args = args)

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

    if (check_lazy) {
      using_lazy <- lapply(newStack, FUN = inherits, "lazy")
      using_lazy <- any(unlist(using_lazy, use.names = FALSE))
      if (using_lazy) {
        .Deprecated(msg = "Future strategy 'lazy' is deprecated. Lazy evaluation can no longer be set via plan(). Instead, use f <- future(..., lazy = TRUE) or v %<-% { ... } %lazy% TRUE.")
      }

      using_eager <- lapply(newStack, FUN = inherits, "eager")
      using_eager <- any(unlist(using_eager, use.names = FALSE))
      if (using_eager) {
        .Deprecated(msg = "Future strategy 'eager' is deprecated. Please use 'sequential' instead, which works identical.")
      }
    }
    
    ## Set new strategy for futures
    class(newStack) <- c("FutureStrategyList", class(newStack))
    stack <<- newStack
    stopifnot(is.list(stack), length(stack) >= 1L)

    ## Stop any (implicitly started) clusters?
    if (.cleanup) plan_cleanup()

    ## Initiate future workers?
    if (.init) plan_init()

    invisible(oldStack[[1L]])
  } # function()
}) # plan()


supportedStrategies <- function(strategies = c("sequential", "multicore", "multisession", "multiprocess", "cluster"), deprecated = FALSE) {
  if (!supportsMulticore()) strategies <- setdiff(strategies, "multicore")
  if (deprecated) strategies <- unique(c(strategies, "eager"))
  strategies
}


#' @export
print.future <- function(x, ...) {
  class <- setdiff(class(x), c("FutureStrategy", "tweaked", "function"))
  s <- sprintf("%s:", class[1])
  specs <- list()
  args <- deparse(args(x))
  args <- args[-length(args)]
  args <- gsub("(^[ ]+|[ ]+$)", "", args)
  args <- paste(args, collapse = " ")
  specs$args <- args
  specs$tweaked <- inherits(x, "tweaked")
  specs$call <- deparse(attr(x, "call"))
  specs <- sprintf("- %s: %s", names(specs), unlist(specs))
  s <- c(s, specs)
  s <- paste(s, collapse = "\n")
  cat(s, "\n", sep = "")
  invisible(x)
}

#' @export
print.FutureStrategy <- print.future


#' @export
print.FutureStrategyList <- function(x, ...) {
  s <- "List of future strategies:"
  
  for (kk in seq_along(x)) {
    x_kk <- x[[kk]]
    class <- setdiff(class(x_kk), c("tweaked", "function"))
    s_kk <- sprintf("%d. %s:", kk, class[1])
    specs <- list()
    args <- deparse(args(x_kk))
    args <- args[-length(args)]
    args <- gsub("(^[ ]+|[ ]+$)", "", args)
    args <- paste(args, collapse = " ")
    specs$args <- args
    specs$tweaked <- inherits(x_kk, "tweaked")
    specs$call <- deparse(attr(x_kk, "call"))
    specs <- sprintf("   - %s: %s", names(specs), unlist(specs))
    s <- c(s, s_kk, specs)
  }

  s <- paste(s, collapse = "\n")
  cat(s, "\n", sep = "")
  invisible(x)
}
