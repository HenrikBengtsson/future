#' Wait until all existing futures in an environment are resolved
#'
#' The environment is first scanned for futures and then the futures
#' are polled until all are resolved.  When a resolved future is
#' detected its value is retrieved (optionally).
#' This provides an efficient mechanism for waiting for a set of
#' futures to be resolved and in the meanwhile retrieving values
#' of already resolved futures.
#'
#' @param x an environment holding futures.
#' @param idxs subset of elements to check.
#' @param value If TRUE, the values are retrieved, otherwise not.
#' @param recursive A non-negative number specifying how deep of
#' a recursion should be done.  If TRUE, an infintive recursion
#' is used.  If FALSE or zero, no recursion is performed.
#' @param sleep Number of seconds to wait before checking
#' if futures have been resolved since last time.
#' @param progress If TRUE textual progress summary is outputted.
#' If a function, the it is called as \code{progress(done, total)}
#' every time a future is resolved.
#' @param ... Not used
#'
#' @return Returns \code{x} (regardless of subsetting or not).
#'
#' @seealso futureOf
#'
#' @export
resolve <- function(x, idxs=NULL, value=FALSE, recursive=FALSE, sleep=1.0, progress=getOption("future.progress", FALSE), ...) UseMethod("resolve")

#' @export
resolve.default <- function(x, ...) x

#' @export
resolve.Future <- function(x, idxs=NULL, value=FALSE, recursive=FALSE, sleep=0.1, progress=getOption("future.progress", FALSE), ...) {
  if (is.logical(recursive)) {
    recursive <- as.numeric(recursive)
    if (recursive) recursive <- getOption("future.resolve.recursive", 99)
  } else {
    recursive <- as.numeric(recursive)
  }
  ## Nothing to do?
  if (recursive < 0) return(x)

  ## Pool for Future to finish
  while (!resolved(x)) {
    Sys.sleep(sleep)
  }

  msg <- sprintf("A %s was resolved", class(x)[1])

  if (value) {
    ## Allow for errors
    msg <- tryCatch({
      v <- x$value
      if (is.null(v)) {
        v <- value(x)

        msg <- sprintf("%s and its value was collected", msg)

        ## Recursively resolve the value
	if (!is.atomic(v)) {
          v <- resolve(v, value=TRUE, recursive=recursive-1L, sleep=sleep, progress=FALSE, ...)
	  msg <- sprintf("%s (and resolved itself)", msg)
	}

        msg
      } else {
        sprintf("%s and its value was already collected", msg)
      }
    }, error = function(ex) {
      sprintf("%s but failed to collect its value", msg)
    })
  } else {
    msg <- sprintf("%s (value was not collected)", msg)
  }

  mdebug(msg)

  x
} ## resolve() for Future


#' @export
resolve.list <- function(x, idxs=NULL, value=FALSE, recursive=FALSE, sleep=0.1, progress=getOption("future.progress", FALSE), ...) {
  if (is.logical(recursive)) {
    recursive <- as.numeric(recursive)
    if (recursive) recursive <- getOption("future.resolve.recursive", 99)
  } else {
    recursive <- as.numeric(recursive)
  }
  ## Nothing to do?
  if (recursive < 0) return(x)

  ## Nothing to do?
  if (length(x) == 0) return(x)

  x0 <- x

  hasProgress <- ((is.logical(progress) && progress) || is.function(progress))

  ## Setup default progress function?
  if (hasProgress && !is.function(progress)) {
    progress <- function(done, total) {
      msg <- sprintf("Progress: %.0f%% (%d/%d)", 100*done/total, done, total)
      if (done < total) {
        bs <- paste(rep("\b", times=nchar(msg)), collapse="")
        message(paste(msg, bs, sep=""), appendLF=FALSE)
      } else {
        message(msg)
      }
    } ## progress()
  }


  ## Subset?
  if (!is.null(idxs)) {
    ## Nothing to do?
    if (length(idxs) == 0) return(x)

    ## Multi-dimensional indices?
    if (is.matrix(idxs)) {
      idxs <- whichIndex(idxs, dim=dim(x), dimnames=dimnames(x))
    }
    idxs <- unique(idxs)

    if (is.numeric(idxs)) {
      idxs <- as.numeric(idxs)
      if (any(idxs < 1 | idxs > length(x))) {
        stop(sprintf("Indices out of range [1,%d]: %s", length(x), hpaste(idxs)))
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
  }

  mdebug("resolve() on list ...")
  mdebug(" recursive: %s", recursive)

  ## Everything is considered non-resolved by default
  nx <- length(x)
  resolved <- logical(nx)

  ## Total number of values to resolve
  total <- nx
  remaining <- seq_len(nx)

  if (hasProgress) {
    done0 <- done <- 0
    progress(done, total)
  }

  mdebug(" length: %d", nx)
  mdebug(" elements: %s", hpaste(sQuote(names(x))))

  ## Resolve all elements
  while (!all(resolved)) {
    for (ii in remaining) {
      obj <- x[[ii]]

      if (!is.atomic(obj)) {
        ## If an unresolved future, move on to the next object
        ## so that future can be resolved in the asynchroneously
        if (inherits(obj, "Future") && !resolved(obj)) next

        ## In all other cases, try to resolve
        resolve(obj, value=value, recursive=recursive-1, sleep=sleep, progress=FALSE, ...)
      }

      ## Assume resolved at this point
      resolved[ii] <- TRUE
      remaining <- remaining[!resolved]

      if (hasProgress) {
        done <- total - length(remaining)
        progress(done, total)
      }
    } # for (ii ...)

    ## Wait a bit before checking again
    remaining <- remaining[!resolved]
    if (length(remaining) > 0) Sys.sleep(sleep)
  } # while (...)

  if (hasProgress && done != done0) progress(done, total)

  mdebug("resolve() on list ... DONE")

  x0
} ## resolve() for list


#' @export
resolve.environment <- function(x, idxs=NULL, value=FALSE, recursive=FALSE, sleep=0.1, progress=FALSE, ...) {
  if (is.logical(recursive)) {
    recursive <- as.numeric(recursive)
    if (recursive) recursive <- getOption("future.resolve.recursive", 99)
  } else {
    recursive <- as.numeric(recursive)
  }
  ## Nothing to do?
  if (recursive < 0) return(x)

  ## Nothing to do?
  if (length(x) == 0) return(x)

  ## Subset?
  if (is.null(idxs)) {
    ## names(x) is only supported in R (>= 3.2.0)
    idxs <- ls(envir=x, all.names=TRUE)
  } else {
    ## Nothing to do?
    if (length(idxs) == 0) return(x)

    ## names(x) is only supported in R (>= 3.2.0)
    names <- ls(envir=x, all.names=TRUE)
    if (is.null(names)) {
      stop("Named subsetting not possible. Elements are not named.")
    }

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

  mdebug("resolve() on environment ...")
  mdebug(" recursive: %s", recursive)

  ## Coerce future promises into Future objects
  x0 <- x
  x <- futures(x)
  nx <- length(x)
  idxs <- ls(envir=x, all.names=TRUE)
  stopifnot(length(idxs) == nx)

  ## Everything is considered non-resolved by default
  resolved <- logical(nx)
  names(resolved) <- idxs
  remaining <- idxs

  mdebug(" elements: [%d] %s", nx, hpaste(sQuote(idxs)))

  ## Resolve all elements
  while (!all(resolved)) {
    for (ii in remaining) {
      obj <- x[[ii]]

      if (!is.atomic(obj)) {
        ## If an unresolved future, move on to the next object
        ## so that future can be resolved in the asynchroneously
        if (inherits(obj, "Future") && !resolved(obj)) next

        ## In all other cases, try to resolve
        resolve(obj, value=value, recursive=recursive-1, sleep=sleep, progress=FALSE, ...)
      }

      ## Assume resolved at this point
      resolved[ii] <- TRUE
      remaining <- remaining[!resolved]
    } # for (ii ...)

    ## Wait a bit before checking again
    remaining <- remaining[!resolved]
    if (length(remaining) > 0) Sys.sleep(sleep)
  } # while (...)

  mdebug("resolve() on environment ... DONE")

  x0
} ## resolve() for environment


#' @export
resolve.listenv <- function(x, idxs=NULL, value=FALSE, recursive=FALSE, sleep=0.1, progress=FALSE, ...) {
  if (is.logical(recursive)) {
    recursive <- as.numeric(recursive)
    if (recursive) recursive <- getOption("future.resolve.recursive", 99)
  } else {
    recursive <- as.numeric(recursive)
  }
  ## Nothing to do?
  if (recursive < 0) return(x)

  ## Nothing to do?
  if (length(x) == 0) return(x)

  ## Subset?
  if (is.null(idxs)) {
    idxs <- seq_along(x)
  } else {
    ## Nothing to do?
    if (length(idxs) == 0) return(x)

    ## Multi-dimensional indices?
    if (is.matrix(idxs)) {
      idxs <- whichIndex(idxs, dim=dim(x), dimnames=dimnames(x))
    }
    idxs <- unique(idxs)

    if (is.numeric(idxs)) {
      if (any(idxs < 1 | idxs > length(x))) {
        stop(sprintf("Indices out of range [1,%d]: %s", length(x), hpaste(idxs)))
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
  }

  ## Nothing to do?
  nx <- length(idxs)
  if (nx == 0) return(x)


  mdebug("resolve() on list environment ...")
  mdebug(" recursive: %s", recursive)

  ## Coerce future promises into Future objects
  x0 <- x
  x <- futures(x)
  nx <- length(x)

  ## Everything is considered non-resolved by default
  remaining <- seq_len(nx)

  mdebug(" length: %d", nx)
  mdebug(" elements: %s", hpaste(sQuote(names(x))))

  ## Resolve all elements
  while (length(remaining) > 0) {
    for (ii in remaining) {
      obj <- x[[ii]]

      if (!is.atomic(obj)) {
        ## If an unresolved future, move on to the next object
        ## so that future can be resolved in the asynchroneously
        if (inherits(obj, "Future") && !resolved(obj)) next

        ## In all other cases, try to resolve
        resolve(obj, value=value, recursive=recursive-1, sleep=sleep, progress=FALSE, ...)
      }

      ## Assume resolved at this point
      remaining <- setdiff(remaining, ii)
    } # for (ii ...)

    ## Wait a bit before checking again
    if (length(remaining) > 0) Sys.sleep(sleep)
  } # while (...)

  mdebug("resolve() on list environment ... DONE")

  x0
}
