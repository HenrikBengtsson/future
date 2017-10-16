#' Tweaks a future function by adjusting its default arguments
#'
#' @param strategy An existing future function or the name of one.
#' @param \dots Named arguments to replace the defaults of existing
#' arguments.
#' @param penvir The environment used when searching for a future
#' function by its name.
#'
#' @return a future function.
#'
#' @seealso
#' Use \code{\link{plan}()} to set a future to become the
#' new default strategy.
#'
#' @export
tweak <- function(strategy, ..., penvir = parent.frame()) UseMethod("tweak")

#' @export
tweak.character <- function(strategy, ..., penvir = parent.frame()) {
  parts <- strsplit(strategy, split = "::", fixed = TRUE)[[1]]
  nparts <- length(parts)
  if (nparts == 2) {
    envir <- getNamespace(parts[[1]])
    s <- parts[[2]]
    if (!exists(s, mode = "function", envir = envir, inherits = TRUE)) {
      stop("No such strategy for futures: ", sQuote(strategy))
    }
    strategy <- get(s, mode = "function", envir = envir, inherits = TRUE)
  } else {
    ## Search attached packages and the 'future' package
    ## for a future function with this name
    envirs <- list(penvir, future = getNamespace("future"), NULL)
    for (envir in envirs) {
      ## Reached the end? Nothing found.
      if (is.null(envir)) {
        stop("No such strategy for futures: ", sQuote(strategy))
      }
  
      if (exists(strategy, mode = "function", envir = envir, inherits = TRUE)) {
        strategy <- get(strategy, mode = "function", envir = envir, inherits = TRUE)
        break
      }
    }
  }

  ## Sanity check
  stopifnot(is.function(strategy))

  tweak(strategy, ..., penvir = penvir)
}

#' @export
tweak.future <- function(strategy, ..., penvir = parent.frame()) {
  args <- list(...)

  ## Nothing to tweak?
  if (length(args) == 0L) return(strategy)

  names <- names(args)
  if (is.null(names)) {
    stop("Additional arguments to tweak() must be named.")
  }

  ## Arguments that must not be tweaked
  if (is.element("lazy", names)) {
    stop("Future argument 'lazy' must not be tweaked / set via plan()")
  } else if (is.element("asynchronous", names)) {
    stop("Future argument 'asynchronous' must not be tweaked / set via plan()")
  } else if (is.element("seed", names)) {
    stop("Future argument 'seed' must not be tweaked / set via plan()")
  }
  
  ## formals()<- drops any attributes including class
  attrs <- attributes(strategy)
  class <- class(strategy)

  ## Tweak arguments
  formals <- names(formals(strategy))

  ## DEFUNCT
  if ("workers" %in% formals) {
    for (name in c("maxCores", "cluster")) {
      if (name %in% names) {
        .Defunct(msg = sprintf("Argument '%s' has been renamed to 'workers'. Please update you script/code that uses the future package.", name))
      }
    }
  }

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
    warning(sprintf("Ignored %d unknown arguments: %s", length(unknown), paste(sQuote(unknown), collapse = ", ")))
  }

  ## Restore attributes including class
  attributes(strategy) <- attrs

  ## Flag that it is tweaked
  class(strategy) <- c("tweaked", class)

  strategy
} ## tweak()


#' @export
tweak.function <- function(strategy, ...) {
  strategy_name <- NULL

  ## Try to find the name of the function
  env <- environment(strategy)
  env_name <- environmentName(env)
  if (nchar(env_name) == 0) env_name <- "<unknown>"

  names <- ls(envir = env, all.names = TRUE)
  if (length(names) > 0) {
    is_fcn <- sapply(names, FUN = exists, mode = "function",
                     envir = env, inherits = FALSE)
    names <- names[is_fcn]
    if (length(names) > 0) {
      for (name in names) {
        fcn <- get(name, mode = "function", envir = env, inherits = FALSE)
        if (identical(fcn, strategy)) {
          strategy_name <- sprintf("%s::%s", env_name, name)
          break
        }
      }
    }
  }

  msg <- "Trying to use non-future function"
  if (!is.null(strategy_name)) {
    msg <- sprintf("%s %s", msg, sQuote(strategy_name))
  } else if (nzchar(env_name)) {
    msg <- sprintf("%s from environment / package %s", msg, sQuote(env_name))
  }
  
  args <- deparse(args(strategy), width.cutoff = 500L)[1L]
  msg <- sprintf("%s: %s { ... }", msg, args)
  stop(msg)
}
