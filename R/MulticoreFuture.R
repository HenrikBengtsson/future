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
MulticoreFuture <- function(object=new.env(parent=emptyenv()), expr, envir=parent.frame(), substitute=TRUE, ...) {
  if (!is.environment(object)) {
    stop(sprintf("Argument 'object' is not an environment: ", class(object)))
  }
  
  if (substitute) expr <- substitute(expr)
  if (!is.environment(envir)) {
    stop(sprintf("Argument 'envir' is not an environment: ", class(object)))
  }

  object$expr <- expr
  object$envir <- envir
  object$job <- NULL
  Future(structure(object, class=c("MulticoreFuture", class(object))))
}


importMulticore <- function(name=NULL) {
  ns <- getNamespace("parallel")
  if (!exists(name, mode="function", envir=ns, inherits=FALSE)) {
    stop("Multicore processing is not supported on this system: ",
         sQuote(.Platform$OS))
  }
  get(name, mode="function", envir=ns, inherits=FALSE)
}


run <- function(...) UseMethod("run")

run.MulticoreFuture <- function(future, ...) {
  mcparallel <- importMulticore("mcparallel")
  expr <- future$expr
  envir <- future$envir
  call <- substitute(parallel::mcparallel(e), list(e=expr))

  job <- eval(call, envir=envir)
  future$job <- job
  
  invisible(future)
}

#' @export
resolved.MulticoreFuture <- function(future, timeout=0.2, ...) {
  ## Is value already collected?
  if (exists("value", envir=future, inherits=TRUE)) return(TRUE)
  
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
  if (!exists("value", envir=future, inherits=TRUE)) {
    ## If not, wait for process to finish, and
    ## then collect and record the value
    mccollect <- importMulticore("mccollect")
    job <- future$job
    stopifnot(inherits(job, "parallelJob"))
    res <- mccollect(job, wait=TRUE)[[1L]]
    ## Record both value and error state
    condition <- attr(res, "condition")
    future$errored <- inherits(condition, "simpleError")
    if (future$errored) {
      future$value <- condition
    } else {
      future$value <- res
    }
    res <- NULL ## Not needed anymore
  }

  if (onError == "signal" && isTRUE(future$errored)) {
    signalCondition(future$value)
  }
  
  future$value
}
