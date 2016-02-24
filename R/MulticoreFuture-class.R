#' An multicore future is a future whose value will be resolved asynchroneously in a parallel process
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param \dots Additional named elements of the future.
#'
#' @return An object of class \code{MulticoreFuture}.
#'
#' @seealso
#' To evaluate an expression using "multicore future", see function
#' \code{\link{multicore}()}.
#'
#' @export
#' @name MulticoreFuture-class
#' @keywords internal
MulticoreFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, ...) {
  if (substitute) expr <- substitute(expr)

  f <- MultiprocessFuture(expr=expr, envir=envir, job=NULL, ...)
  structure(f, class=c("MulticoreFuture", class(f)))
}


## We are currently importing the following non-exported functions:
## * parallel:::mccollect()
## * parallel:::mcparallel()
## * parallel:::selectChildren()
importMulticore <- function(name=NULL) {
  ns <- getNamespace("parallel")
  if (!exists(name, mode="function", envir=ns, inherits=FALSE)) {
    ## covr: skip=2
    msg <- sprintf("Multicore processing is not supported on this system: %s",
         sQuote(.Platform$OS))
    mdebug(msg)
    stop(msg, call.=FALSE)
  }
  get(name, mode="function", envir=ns, inherits=FALSE)
}


run <- function(...) UseMethod("run")

run.MulticoreFuture <- function(future, ...) {
  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(future)

  mcparallel <- importMulticore("mcparallel")
  expr <- future$expr
  envir <- future$envir

  ## Inject code for the next future strategy to use.
  expr <- injectNextStrategy(future, expr)

  call <- substitute(parallel::mcparallel(e), list(e=expr))

  requestCore(await=function() FutureRegistry("multicore", action="collect-first"))

  future$state <- 'running'

  ## Add to registry
  FutureRegistry("multicore", action="add", future=future)

  job <- eval(call, envir=envir)
  future$job <- job

  invisible(future)
}

#' @export
resolved.MulticoreFuture <- function(x, timeout=0.2, ...) {
  ## Is value already collected?
  if (x$state %in% c('finished', 'failed', 'interrupted')) return(TRUE)

  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(x)

  selectChildren <- importMulticore("selectChildren")
  job <- x$job
  stopifnot(inherits(job, "parallelJob"))

  ## NOTE: We cannot use mcollect(job, wait=FALSE, timeout=0.2),
  ## because that will return NULL if there's a timeout, which is
  ## an ambigous value because the future expression may return NULL.
  ## WORKAROUND: Adopted from parallel::mccollect().
  pid <- selectChildren(job, timeout=timeout)
  (is.integer(pid) || is.null(pid))
}

#' @export
value.MulticoreFuture <- function(future, onError=c("signal", "return"), ...) {
  ## Has the value already been collected?
  if (future$state %in% c('finished', 'failed', 'interrupted')) {
    return(NextMethod("value"))
  }

  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(future)

  ## If not, wait for process to finish, and
  ## then collect and record the value
  mccollect <- importMulticore("mccollect")
  job <- future$job
  stopifnot(inherits(job, "parallelJob"))
  res <- mccollect(job, wait=TRUE)[[1L]]

  ## SPECIAL: Check for fallback 'fatal error in wrapper code'
  ## try-error from parallel:::mcparallel().  If detected, then
  ## turn into an error with a more informative error message, cf.
  ## https://github.com/HenrikBengtsson/future/issues/35
  if (identical(res, structure("fatal error in wrapper code", class="try-error"))) {
    stop(sprintf("Detected an error ('%s') by the 'parallel' package while trying to retrieve the value of a %s (%s). This could be because the forked R process that evalutes the future was terminated before it was completed.", res, class(future)[1], sQuote(hexpr(future$expr))))
  }

  ## Update value and state
  condition <- attr(res, "condition")
  if (inherits(condition, "simpleError")) {
    future$state <- 'failed'
    future$value <- condition
  } else {
    future$value <- res
    future$state <- 'finished'
  }
  res <- NULL ## Not needed anymore

  ## Remove from registry
  FutureRegistry("multicore", action="remove", future=future)

  NextMethod("value")
}
