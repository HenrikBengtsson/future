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
#' @param sleep Number of seconds to wait before checking
#' if futures have been resolved since last time.
#' @param progress If TRUE textual progress summary is outputted.
#' If a function, the it is called as \code{progress(done, total)}
#' every time a future is resolved.
#' @param ... Not used
#'
#' @return Environment \code{x} (regardless of subsetting or not).
#'
#' @seealso futureOf
#'
#' @export
resolve <- function(x, idxs=NULL, value=FALSE, sleep=1.0, progress=getOption("future.progress", FALSE), ...) UseMethod("resolve")

#' @export
resolve.list <- function(x, idxs=NULL, value=FALSE, sleep=1.0, progress=getOption("future.progress", FALSE), ...) {
  hasProgress <- ((is.logical(progress) && progress) || is.function(progress))

  ## Nothing to do?
  if (length(x) == 0) return(x)

  x0 <- x

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

  ## Everything but futures are considered resolved by default
  resolved <- !sapply(x, FUN=inherits, "Future")

  ## Total number of values to resolve
  total <- length(resolved)
  remaining <- which(!resolved)

  if (hasProgress) {
    done <- total - length(remaining)
    done0 <- done
    if (is.function(progress)) {
      progress(done, total)
    } else {
      msg <- sprintf("Progress: %.0f%% (%d/%d)", 100*done/total, done, total)
      bs <- paste(rep("\b", times=nchar(msg)), collapse="")
      message(paste(msg, bs, sep=""), appendLF=FALSE)
    }
  }

  while (!all(resolved)) {
    for (ii in remaining) {
      future <- x[[ii]]
      if (!resolved(future)) next

      ## Retrieve value?
      if (value) {
        ## Allow for errors
        tryCatch({ value(future) }, error = function(ex) {})
      }

      resolved[ii] <- TRUE
      remaining <- which(!resolved)

      if (hasProgress) {
        done <- total - length(remaining)
        if (is.function(progress)) {
          progress(done, total)
        } else {
          msg <- sprintf("Progress: %.0f%% (%d/%d)", 100*done/total, done, total)
          bs <- paste(rep("\b", times=nchar(msg)), collapse="")
          message(paste(msg, bs, sep=""), appendLF=FALSE)
        }
      }
    } # for (ii ...)

    ## Wait a bit before checking again
    remaining <- which(!resolved)
    if (length(remaining) > 0) Sys.sleep(sleep)
  } # while (...)

  if (hasProgress && done != done0) {
    if (is.function(progress)) {
      progress(done, total)
    } else {
      msg <- sprintf("Progress: 100%% (%d/%d)", done, total)
      message(msg)
    }
  }

  x0
} ## resolve() for list


#' @export
resolve.environment <- function(x, idxs=NULL, value=FALSE, ...) {
  ## Nothing to do?
  if (length(x) == 0) return(x)

  ## Subset?
  if (!is.null(idxs)) {
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

  ## Identify all futures
  if (is.null(idxs)) {
    futures <- futureOf(envir=x, drop=TRUE)
    ## names(x) is only supported in R (>= 3.2.0)
    idxs <- ls(envir=x, all.names=TRUE)
  } else {
    futures <- lapply(idxs, FUN=function(idx) {
      futureOf(x[[idx]], mustExist=FALSE)
    })
    keep <- sapply(futures, FUN=inherits, "Future")
    futures <- futures[keep]
  }

  ## Nothing to do?
  if (length(futures) == 0) return(x)

  ## Resolve all futures
  resolve(futures, value=value, ...)

  ## Touch every element?
  ## (to trigger removal of internal futures)
  if (value) {
    for (key in idxs) {
      ## Allow for errors
      tryCatch({ force(x[[key]]) }, error = function(ex) {})
    }
  }

  x
}


#' @export
resolve.listenv <- function(x, idxs=NULL, value=FALSE, ...) {
  ## Nothing to do?
  if (length(x) == 0) return(x)

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

  ## Identify all futures
  if (is.null(idxs)) {
    futures <- futureOf(envir=x, drop=TRUE)
    idxs <- seq_along(x)
  } else {
    futures <- lapply(idxs, FUN=function(idx) {
      futureOf(x[[idx]], mustExist=FALSE)
    })
    keep <- sapply(futures, FUN=inherits, "Future")
    futures <- futures[keep]
  }

  ## Nothing to do?
  if (length(futures) == 0) return(x)

  ## Resolve all futures
  resolve(futures, value=value, ...)

  ## Touch every element?
  ## (to trigger removal of internal futures)
  if (value) {
    for (idx in idxs) {
      ## Allow for errors
      tryCatch({ force(x[[idx]]) }, error = function(ex) {})
    }
  }

  x
}
