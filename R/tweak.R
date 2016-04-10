#' Tweaks a future function by adjusting its default arguments
#'
#' @param strategy An existing future function or the name of one.
#' @param ... Named arguments to replace the defaults of existing
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
tweak <- function(strategy, ..., penvir=parent.frame()) UseMethod("tweak")

#' @export
tweak.character <- function(strategy, ..., penvir=parent.frame()) {
  ## Search attached packages and the 'future' package
  ## for a future function with this name
  envirs <- list(penvir, future=getNamespace("future"), NULL)
  for (envir in envirs) {
    ## Reached the end? Nothing found.
    if (is.null(envir)) {
      stop("No such strategy for futures: ", sQuote(strategy))
    }

    if (exists(strategy, mode="function", envir=envir, inherits=TRUE)) {
      strategy <- get(strategy, mode="function", envir=envir, inherits=TRUE)
      break
    }
  }

  ## Nothing found?
  if (!is.function(strategy)) {
    stop("Failed to locate such a future function: ", sQuote(strategy))
  }

  tweak(strategy, ..., penvir=penvir)
}

#' @export
tweak.future <- function(strategy, ..., penvir=parent.frame()) {
  args <- list(...)

  ## Nothing to tweak?
  if (length(args) == 0L) return(strategy)

  names <- names(args)
  if (is.null(names)) {
    stop("Additional arguments to tweak() must be named.")
  }


  ## formals()<- drops any attributes including class
  attrs <- attributes(strategy)
  class <- class(strategy)

  ## Tweak arguments
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

  ## Restore attributes including class
  attributes(strategy) <- attrs

  ## Flag that it is tweaked
  class(strategy) <- c("tweaked", class)

  strategy
} ## tweak()
