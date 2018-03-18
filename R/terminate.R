#' Terminate a Future Process
#' 
#' @param x A future to be terminated.
#'
#' @param signal Integer specifying the signal level used to terminate
#' the future.
#'
#' @return Return a logical indicating success or failure of process
#' signalling.
#' 
#' @importFrom tools pskill
#' @export
terminate <- function(x, ...) UseMethod("terminate")


#' @rdname terminate
#' @export
terminate.Future <- function(x, ...) {
  label <- x$label
  if (is.null(label)) label <- "<none>"
  warning(sprintf(
    "Do not know how to terminate a future (%s) of class %s.",
    sQuote(label), sQuote(class(x)[1])))
}




#' @rdname terminate
#' @export
terminate.MulticoreFuture <- function(x, ...) {
  job <- x$job
  stopifnot(inherits(job, "process"), inherits(job, "childProcess"),
            inherits(job, "parallelJob"))
  pid <- job$pid
  stopifnot(is.integer(pid))
  terminate(pid, ...)
}

#' @rdname terminate
#' @export
terminate.MultisessionFuture <- function(x, ...) {
  node <- x$node
  stopifnot(is.integer(node), length(node) == 1L, !is.na(node), node > 0)
  workers <- x$workers
  stopifnot(inherits(workers, "cluster"))
  worker <- workers[[node]]
  terminate(worker, ...)
}



#' @rdname terminate
#' @export
terminate.SOCKnode <- function(x, ...) {
  session_info <- x$session_info
  if (is.null(session_info)) {
    warning(sprintf("Cannot terminate %s worker. Worker session information and therefore the worker process id (PID) is unknown.", sQuote(class(x)[1])))
    return(invisible(x))
  }

  process <- session_info$process
  if (is.null(process)) {
    warning(sprintf("Cannot terminate %s worker. Worker process information and therefore the worker process id (PID) is unknown.", sQuote(class(x)[1])))
    return(invisible(x))
  }
  
  pid <- process$pid
  if (is.null(pid)) {
    warning(sprintf("Cannot terminate %s worker. Worker process id (PID) is unknown.", sQuote(class(x)[1])))
    return(invisible(x))
  }

  terminate(pid, ...)
}


#' @rdname terminate
#' @export
terminate.SOCKcluster <- function(x, ...) {
  sapply(X = x, FUN = terminate, ...)
}


#' @rdname terminate
#' @export
terminate.integer <- function(x, signal = tools::SIGINT, ...) {
  ## Only SIGINT and SIGKILL is be defined on Windows
  stopifnot(length(signal) == 1)
  if (is.na(signal)) {
    label <- as.character(substitute(signal))
    warning(sprintf("Cannot terminate process id (PID = %d). Unknown signal value (%s): NA_integer", x, sQuote(label)))
    return(rep(FALSE, times = length(x)))
  }
  stopifnot(signal > 0)
  res <- pskill(x, signal = signal)

  ## WORKAROUND: https://bugs.r-project.org/bugzilla3/show_bug.cgi?id=17395
  if (getRversion() < "3.5.0") {
    res_internal <- as.integer(res)
    if (res_internal == 0L) {
      res <- TRUE
    } else if (res_internal == -1L) {
      res <- FALSE
    } else {
      ## All other values are "random" due to a non-initiated allocation
      ## One catch: if the non-initiated value is 0 by chance, then we
      ## will incorrectly return TRUE (above).
      res <- FALSE
    }
  }
  
  res
}
