#' An multicore future is a future whose value will be resolved asynchroneously in a parallel process
#'
#' @param object An R \link[base]{environment}.
#' @param ... Not used.
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

  f <- Future(expr=expr, envir=envir, job=NULL, ...)
  structure(f, class=c("MulticoreFuture", class(f)))
}


importMulticore <- function(name=NULL) {
  ns <- getNamespace("parallel")
  if (!exists(name, mode="function", envir=ns, inherits=FALSE)) {
    ## covr: skip=2
    stop("Multicore processing is not supported on this system: ",
         sQuote(.Platform$OS), call.=FALSE)
  }
  get(name, mode="function", envir=ns, inherits=FALSE)
}


run <- function(...) UseMethod("run")

run.MulticoreFuture <- function(future, ...) {
  mcparallel <- importMulticore("mcparallel")
  expr <- future$expr
  envir <- future$envir

  ## Inject plan(eager) to prevent that nested multicore futures
  ## are spawned of recursively by mistake.
  expr <- substitute({ plan(eager); e }, list(e=expr))

  call <- substitute(parallel::mcparallel(e), list(e=expr))

  future$state <- 'running'

  job <- eval(call, envir=envir)
  future$job <- job

  invisible(future)
}

#' @export
resolved.MulticoreFuture <- function(future, timeout=0.2, ...) {
  ## Is value already collected?
  if (future$state %in% c('finished', 'failed', 'interrupted')) return(TRUE)

  selectChildren <- importMulticore("selectChildren")
  job <- future$job
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

  ## If not, wait for process to finish, and
  ## then collect and record the value
  mccollect <- importMulticore("mccollect")
  job <- future$job
  stopifnot(inherits(job, "parallelJob"))
  res <- mccollect(job, wait=TRUE)[[1L]]

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

  NextMethod("value")
}

