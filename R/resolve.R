#' Resolve one or more futures synchronously
#'
#' This function provides an efficient mechanism for waiting for multiple
#' futures in a container (e.g. list or environment) to be resolved while in
#' the meanwhile retrieving values of already resolved futures.
#' 
#' @param x A \link{Future} to be resolved, or a list, an environment, or a
#' list environment of futures to be resolved.
#' 
#' @param idxs (optional) integer or logical index specifying the subset of
#' elements to check.
#' 
#' @param recursive A non-negative number specifying how deep of a recursion
#' should be done.  If TRUE, an infinite recursion is used.  If FALSE or zero,
#' no recursion is performed.
#' 
#' @param result (internal) If TRUE, the results are retrieved, otherwise not.
#' 
#' @param stdout (internal) If TRUE, captured standard output is relayed, otherwise note.
#' 
#' @param signal (internal) If TRUE, captured \link[base]{conditions} are relayed,
#' otherwise not.
#' 
#' @param force (internal) If TRUE, captured standard output and captured
#' \link[base]{conditions} already relayed is relayed again, otherwise not.
#' 
#' @param sleep Number of seconds to wait before checking if futures have been
#' resolved since last time.
#'
#' @param progress (DEFUNCT) Defunct since future 1.14.0 to make room for
#' other progress-update mechanisms that are in the works.
#'
#' @param value (DEPRECATED) Use argument `result` instead.
#' 
#' @param \dots Not used.
#'
#' @return Returns \code{x} (regardless of subsetting or not).
#' If \code{signal} is TRUE and one of the futures produces an error, then
#' that error is produced.
#'
#' @details
#' This function is resolves synchronously, i.e. it blocks until \code{x} and
#' any containing futures are resolved.
#' 
#' @seealso To resolve a future \emph{variable}, first retrieve its
#' \link{Future} object using \code{\link{futureOf}()}, e.g.
#' \code{resolve(futureOf(x))}.
#'
#' @export
resolve <- function(x, idxs = NULL, recursive = 0, result = FALSE, stdout = FALSE, signal = FALSE, force = FALSE, sleep = 1.0, value = result, progress = FALSE, ...) UseMethod("resolve")

#' @export
resolve.default <- function(x, ...) x

#' @export
resolve.Future <- function(x, idxs = NULL, recursive = 0, result = FALSE, stdout = FALSE, signal = FALSE, force = FALSE, sleep = 0.1, value = result, ...) {
  ## BACKWARD COMPATIBILITY
  if (value && missing(result)) {
##    .Deprecated(msg = "Argument 'value' of resolve() is deprecated. Use 'result' instead.")
    result <- TRUE
  }

  if (is.logical(recursive)) {
    if (recursive) recursive <- getOption("future.resolve.recursive", 99)
  }
  recursive <- as.numeric(recursive)
  
  ## Nothing to do?
  if (recursive < 0) return(x)

  relay <- (stdout || signal)
  result <- result || relay

  ## Lazy future that is not yet launched?
  if (x$state == 'created') x <- run(x)

  ## Poll for the Future to finish
  while (!resolved(x)) {
    Sys.sleep(sleep)
  }

  msg <- sprintf("A %s was resolved", class(x)[1])

  ## Retrieve results?
  if (result) {
    if (is.null(x$result)) {
      x$result <- result(x)
      msg <- sprintf("%s and its result was collected", msg)
    } else {
      sprintf("%s and its result was already collected", msg)
    }
    
    ## Recursively resolve result value?
    if (recursive > 0) {
      value <- x$result$value
      if (!is.atomic(value)) {
        resolve(value, recursive = recursive - 1, result = TRUE, stdout = stdout, signal = signal, sleep = sleep, ...)
        msg <- sprintf("%s (and resolved itself)", msg)
      }
      value <- NULL  ## Not needed anymore
    }
    result <- NULL     ## Not needed anymore

    if (stdout) value(x, stdout = TRUE, signal = FALSE)
    if (signal) signalConditions(x, force = FALSE)
  } else {
    msg <- sprintf("%s (result was not collected)", msg)
  }

  mdebug(msg)

  x
} ## resolve() for Future


#' @export
resolve.list <- function(x, idxs = NULL, recursive = 0, result = FALSE, stdout = FALSE, signal = FALSE, force = FALSE, sleep = 0.1, value = result, progress = FALSE, ...) {
  ## BACKWARD COMPATIBILITY
  if (value && missing(result)) {
##    .Deprecated(msg = "Argument 'value' of resolve() is deprecated. Use 'result' instead.")
    result <- TRUE
  }

  if (is.logical(recursive)) {
    if (recursive) recursive <- getOption("future.resolve.recursive", 99)
  }
  recursive <- as.numeric(recursive)
  
  ## Nothing to do?
  if (recursive < 0) return(x)
  
  nx <- .length(x)

  ## Nothing to do?
  if (nx == 0) return(x)

  relay <- (stdout || signal)
  result <- result || relay

  if (!identical(progress, FALSE)) {
    .Defunct(msg = "Argument 'progress' of resolve() is defunct.")
  }

  x0 <- x

  ## Subset?
  if (!is.null(idxs)) {
    ## Nothing to do?
    if (length(idxs) == 0) return(x)

    ## Multi-dimensional indices?
    if (is.matrix(idxs)) {
      idxs <- whichIndex(idxs, dim = dim(x), dimnames = dimnames(x))
    }
    idxs <- unique(idxs)

    if (is.numeric(idxs)) {
      idxs <- as.numeric(idxs)
      if (any(idxs < 1 | idxs > nx)) {
        stop(sprintf("Indices out of range [1,%d]: %s", nx, hpaste(idxs)))
      }
    } else {
      names <- names(x)
      if (is.null(names)) {
        stop("Named subsetting not possible. Elements are not named.")
      }

      idxs <- as.character(idxs)
      unknown <- idxs[!is.element(idxs, names)]
      if (length(unknown) > 0) {
        stop("Unknown elements: ", hpaste(sQuote(unknown)))
      }
    }

    x <- x[idxs]
    nx <- .length(x)
  }

  debug <- getOption("future.debug", FALSE)
  if (debug) {
    mdebug("resolve() on list ...")
    mdebugf(" recursive: %s", recursive)
  }

  ## NOTE: Everything is considered non-resolved by default

  ## Total number of values to resolve
  total <- nx
  remaining <- seq_len(nx)

  ## Relay?
  signalConditionsASAP <- make_signalConditionsASAP(nx, stdout = stdout, signal = signal, force = force, debug = debug)

  if (debug) {
    mdebugf(" length: %d", nx)
    mdebugf(" elements: %s", hpaste(sQuote(names(x))))
  }

  ## Resolve all elements
  while (length(remaining) > 0) {
    for (ii in remaining) {
      obj <- x[[ii]]

      if (is.atomic(obj)) {
        if (relay) signalConditionsASAP(obj, resignal = FALSE, pos = ii)
      } else {
        ## If an unresolved future, move on to the next object
        ## so that future can be resolved in the asynchronously
        if (inherits(obj, "Future")) {
          ## Lazy future that is not yet launched?
          if (obj$state == 'created') obj <- run(obj)
          if (!resolved(obj)) next
          if (debug) mdebugf("Future #%d", ii)
          if (result) value(obj, stdout = FALSE, signal = FALSE)
        }
	  
        relay_ok <- relay && signalConditionsASAP(obj, resignal = FALSE, pos = ii)

        ## In all other cases, try to resolve
        resolve(obj,
                recursive = recursive - 1,
                result = result,
                stdout = stdout && relay_ok,
                signal = signal && relay_ok,
                sleep = sleep, ...)
      }

      ## Assume resolved at this point
      remaining <- setdiff(remaining, ii)
      if (debug) mdebugf(" length: %d (resolved future %s)", length(remaining), ii)
      stop_if_not(!anyNA(remaining))
    } # for (ii ...)

    ## Wait a bit before checking again
    if (length(remaining) > 0) Sys.sleep(sleep)
  } # while (...)

  if (relay || force) {
    if (debug) mdebug("Relaying remaining futures")
    signalConditionsASAP(resignal = FALSE, pos = 0L)
  }
  
  if (debug) mdebug("resolve() on list ... DONE")

  x0
} ## resolve() for list


#' @export
resolve.environment <- function(x, idxs = NULL, recursive = 0, result = FALSE, stdout = FALSE, signal = FALSE, force = FALSE, sleep = 0.1, value = result, ...) {
  ## BACKWARD COMPATIBILITY
  if (value && missing(result)) {
##    .Deprecated(msg = "Argument 'value' of resolve() is deprecated. Use 'result' instead.")
    result <- TRUE
  }

  if (is.logical(recursive)) {
    if (recursive) recursive <- getOption("future.resolve.recursive", 99)
  }
  recursive <- as.numeric(recursive)
  
  ## Nothing to do?
  if (recursive < 0) return(x)

  nx <- .length(x)

  ## Nothing to do?
  if (nx == 0) return(x)

  ## Subset?
  if (is.null(idxs)) {
    ## names(x) is only supported in R (>= 3.2.0)
    idxs <- ls(envir = x, all.names = TRUE)
  } else {
    ## Nothing to do?
    if (length(idxs) == 0) return(x)

    ## names(x) is only supported in R (>= 3.2.0)
    names <- ls(envir = x, all.names = TRUE)

    ## Sanity check (because nx == 0 returns early above)
    stop_if_not(length(names) > 0)

    idxs <- unique(idxs)

    idxs <- as.character(idxs)
    unknown <- idxs[!is.element(idxs, names)]
    if (length(unknown) > 0) {
      stop("Unknown elements: ", hpaste(sQuote(unknown)))
    }
  }


  ## Nothing to do?
  nx <- length(idxs)
  if (nx == 0) return(x)

  relay <- (stdout || signal)
  result <- result || relay

  debug <- getOption("future.debug", FALSE)
  if (debug) {
    mdebug("resolve() on environment ...")
    mdebugf(" recursive: %s", recursive)
  }

  ## Coerce future promises into Future objects
  x0 <- x
  x <- futures(x)
  nx <- .length(x)
  names <- ls(envir = x, all.names = TRUE)
  stop_if_not(length(names) == nx)

  ## Everything is considered non-resolved by default
  remaining <- seq_len(nx)
  
  ## Relay?
  signalConditionsASAP <- make_signalConditionsASAP(nx, stdout = stdout, signal = signal, force = force, debug = debug)

  if (debug) mdebugf(" elements: [%d] %s", nx, hpaste(sQuote(idxs)))

  ## Resolve all elements
  while (length(remaining) > 0) {
    for (ii in remaining) {
      name <- names[ii]
      obj <- x[[name]]

      if (is.atomic(obj)) {
        if (relay) signalConditionsASAP(obj, resignal = FALSE, pos = ii)
      } else {
        ## If an unresolved future, move on to the next object
        ## so that future can be resolved in the asynchronously
        if (inherits(obj, "Future")) {
          ## Lazy future that is not yet launched?
          if (obj$state == 'created') obj <- run(obj)
          if (!resolved(obj)) next
          if (debug) mdebugf("Future #%d", ii)
          if (result) value(obj, stdout = FALSE, signal = FALSE)
        }

        relay_ok <- relay && signalConditionsASAP(obj, resignal = FALSE, pos = ii)

        ## In all other cases, try to resolve
        resolve(obj,
                recursive = recursive - 1,
                result = result,
                stdout = stdout && relay_ok,
                signal = signal && relay_ok,
                sleep = sleep, ...)
      }

      ## Assume resolved at this point
      remaining <- setdiff(remaining, ii)
      if (debug) mdebugf(" length: %d (resolved future %s)", length(remaining), ii)
      stop_if_not(!anyNA(remaining))
    } # for (ii ...)

    ## Wait a bit before checking again
    if (length(remaining) > 0) Sys.sleep(sleep)
  } # while (...)

  if (relay || force) {
    if (debug) mdebug("Relaying remaining futures")
    signalConditionsASAP(resignal = FALSE, pos = 0L)
  }
  
  if (debug) mdebug("resolve() on environment ... DONE")

  x0
} ## resolve() for environment


#' @export
resolve.listenv <- function(x, idxs = NULL, recursive = 0, result = FALSE, stdout = FALSE, signal = FALSE, force = FALSE, sleep = 0.1, value = result, ...) {
  ## BACKWARD COMPATIBILITY
  if (value && missing(result)) {
##    .Deprecated(msg = "Argument 'value' of resolve() is deprecated. Use 'result' instead.")
    result <- TRUE
  }

  if (is.logical(recursive)) {
    if (recursive) recursive <- getOption("future.resolve.recursive", 99)
  }
  recursive <- as.numeric(recursive)
  
  ## Nothing to do?
  if (recursive < 0) return(x)

  ## NOTE: Contrary to other implementations that use .length(x), we here
  ## do need to use generic length() that dispatches on class.
  nx <- length(x)
  
  ## Nothing to do?
  if (nx == 0) return(x)

  ## Subset?
  if (is.null(idxs)) {
    idxs <- seq_along(x)
  } else {
    ## Nothing to do?
    if (length(idxs) == 0) return(x)

    ## Multi-dimensional indices?
    if (is.matrix(idxs)) {
      idxs <- whichIndex(idxs, dim = dim(x), dimnames = dimnames(x))
    }
    idxs <- unique(idxs)

    if (is.numeric(idxs)) {
      if (any(idxs < 1 | idxs > nx)) {
        stop(sprintf("Indices out of range [1,%d]: %s", nx, hpaste(idxs)))
      }
    } else {
      names <- names(x)
      
      ## Sanity check (because nx == 0 returns early above)
      stop_if_not(length(names) > 0)

      idxs <- as.character(idxs)
      unknown <- idxs[!is.element(idxs, names)]
      if (length(unknown) > 0) {
        stop("Unknown elements: ", hpaste(sQuote(unknown)))
      }
    }
  }

  ## Nothing to do?
  nx <- length(idxs)
  if (nx == 0) return(x)

  relay <- (stdout || signal)
  result <- result || relay

  debug <- getOption("future.debug", FALSE)
  if (debug) {
    mdebug("resolve() on list environment ...")
    mdebugf(" recursive: %s", recursive)
  }

  ## Coerce future promises into Future objects
  x0 <- x
  x <- futures(x)
  nx <- length(x)

  ## Everything is considered non-resolved by default
  remaining <- seq_len(nx)

  ## Relay?
  signalConditionsASAP <- make_signalConditionsASAP(nx, stdout = stdout, signal = signal, force = force, debug = debug)

  if (debug) {
    mdebugf(" length: %d", nx)
    mdebugf(" elements: %s", hpaste(sQuote(names(x))))
  }

  ## Resolve all elements
  while (length(remaining) > 0) {
    for (ii in remaining) {
      obj <- x[[ii]]

      if (is.atomic(obj)) {
        if (relay) signalConditionsASAP(obj, resignal = FALSE, pos = ii)
      } else {
        ## If an unresolved future, move on to the next object
        ## so that future can be resolved in the asynchronously
        if (inherits(obj, "Future")) {
          ## Lazy future that is not yet launched?
          if (obj$state == 'created') obj <- run(obj)
          if (!resolved(obj)) next
          if (debug) mdebugf("Future #%d", ii)
          if (result) value(obj, stdout = FALSE, signal = FALSE)
        }

        relay_ok <- relay && signalConditionsASAP(obj, resignal = FALSE, pos = ii)

        ## In all other cases, try to resolve
        resolve(obj,
                recursive = recursive - 1,
                result = result,
                stdout = stdout && relay_ok,
                signal = signal && relay_ok,
                sleep = sleep, ...)
      }

      ## Assume resolved at this point
      remaining <- setdiff(remaining, ii)
      if (debug) mdebugf(" length: %d (resolved future %s)", length(remaining), ii)
      stop_if_not(!anyNA(remaining))
    } # for (ii ...)

    ## Wait a bit before checking again
    if (length(remaining) > 0) Sys.sleep(sleep)
  } # while (...)

  if (relay || force) {
    if (debug) mdebug("Relaying remaining futures")
    signalConditionsASAP(resignal = FALSE, pos = 0L)
  }

  if (debug) mdebug("resolve() on list environment ... DONE")

  x0
} ## resolve() for list environment
