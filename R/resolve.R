#' Resolve one or more futures synchronously
#'
#' This function provides an efficient mechanism for waiting for multiple
#' futures in a container (e.g. list or environment) to be resolved while in
#' the meanwhile retrieving values of already resolved futures.
#' 
#' @param x a list, an environment, or a list environment holding futures
#' that should be resolved.  May also be a single \link{Future}.
#' 
#' @param idxs (optional) integer or logical index specifying the subset of
#' elements to check.
#' 
#' @param value If TRUE, the values are retrieved, otherwise not.
#' 
#' @param recursive A non-negative number specifying how deep of a recursion
#' should be done.  If TRUE, an infinite recursion is used.  If FALSE or zero,
#' no recursion is performed.
#' 
#' @param sleep Number of seconds to wait before checking if futures have been
#' resolved since last time.
#' 
#' @param progress If TRUE textual progress summary is outputted.  If a
#' function, the it is called as \code{progress(done, total)} every time a
#' future is resolved.
#' 
#' @param \dots Not used
#'
#' @return Returns \code{x} (regardless of subsetting or not).
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
resolve <- function(x, idxs = NULL, value = FALSE, recursive = 0, sleep = 1.0, progress = getOption("future.progress", FALSE), ...) UseMethod("resolve")

#' @export
resolve.default <- function(x, ...) x

#' @export
resolve.Future <- function(x, idxs = NULL, value = FALSE, recursive = 0, sleep = 0.1, progress = getOption("future.progress", FALSE), ...) {
  if (is.logical(recursive)) {
    if (recursive) recursive <- getOption("future.resolve.recursive", 99)
  }
  recursive <- as.numeric(recursive)
  
  ## Nothing to do?
  if (recursive < 0) return(x)

  ## Lazy future that is not yet launched?
  if (x$state == 'created') x <- run(x)

  ## Poll for the Future to finish
  while (!resolved(x)) {
    Sys.sleep(sleep)
  }

  msg <- sprintf("A %s was resolved", class(x)[1])

  if (value) {
    ## Allow for errors
    msg <- tryCatch({
      result <- x$result
      if (is.null(result)) {
        result <- result(x)
        v <- result$value
        
        msg <- sprintf("%s and its value was collected", msg)

        ## Recursively resolve the value?
        if (!is.atomic(v)) {
          v <- resolve(v, value = TRUE, recursive = recursive - 1, sleep = sleep, progress = FALSE, ...)
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
resolve.list <- function(x, idxs = NULL, value = FALSE, recursive = 0, sleep = 0.1, progress = getOption("future.progress", FALSE), ...) {
  if (is.logical(recursive)) {
    if (recursive) recursive <- getOption("future.resolve.recursive", 99)
  }
  recursive <- as.numeric(recursive)
  
  ## Nothing to do?
  if (recursive < 0) return(x)
  
  nx <- .length(x)

  ## Nothing to do?
  if (nx == 0) return(x)

  x0 <- x

  hasProgress <- ((is.logical(progress) && progress) || is.function(progress))

  ## Setup default progress function?
  if (hasProgress && !is.function(progress)) {
    progress <- function(done, total) {
      msg <- sprintf("Progress: %.0f%% (%d/%d)", 100 * done / total, done, total)
      if (done < total) {
        bs <- paste(rep("\b", times = nchar(msg)), collapse = "")
        message(paste(msg, bs, sep = ""), appendLF = FALSE)
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
    mdebug(" recursive: %s", recursive)
  }

  ## NOTE: Everything is considered non-resolved by default

  ## Total number of values to resolve
  total <- nx
  remaining <- seq_len(nx)

  if (hasProgress) {
    done0 <- done <- 0
    progress(done, total)
  }

  if (debug) {
    mdebug(" length: %d", nx)
    mdebug(" elements: %s", hpaste(sQuote(names(x))))
  }

  ## Resolve all elements
  while (length(remaining) > 0) {
    for (ii in remaining) {
      obj <- x[[ii]]

      if (!is.atomic(obj)) {
        ## If an unresolved future, move on to the next object
        ## so that future can be resolved in the asynchronously
        if (inherits(obj, "Future")) {
          ## Lazy future that is not yet launched?
          if (obj$state == 'created') obj <- run(obj)
          if (!resolved(obj)) next
        }

        ## In all other cases, try to resolve
        resolve(obj, value = value, recursive = recursive - 1, sleep = sleep, progress = FALSE, ...)
      }

      ## Assume resolved at this point
      remaining <- setdiff(remaining, ii)
      if (debug) mdebug(" length: %d (resolved future %s)", length(remaining), ii)
      stop_if_not(!anyNA(remaining))

      if (hasProgress) {
        done <- total - length(remaining)
        progress(done, total)
      }
    } # for (ii ...)

    ## Wait a bit before checking again
    if (length(remaining) > 0) Sys.sleep(sleep)
  } # while (...)

  if (hasProgress && done != done0) progress(done, total)

  if (debug) mdebug("resolve() on list ... DONE")

  x0
} ## resolve() for list


#' @export
resolve.environment <- function(x, idxs = NULL, value = FALSE, recursive = 0, sleep = 0.1, progress = FALSE, ...) {
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

  debug <- getOption("future.debug", FALSE)
  if (debug) {
    mdebug("resolve() on environment ...")
    mdebug(" recursive: %s", recursive)
  }

  ## Coerce future promises into Future objects
  x0 <- x
  x <- futures(x)
  nx <- .length(x)
  idxs <- ls(envir = x, all.names = TRUE)
  stop_if_not(length(idxs) == nx)

  ## Everything is considered non-resolved by default
  remaining <- idxs

  if (debug) mdebug(" elements: [%d] %s", nx, hpaste(sQuote(idxs)))

  ## Resolve all elements
  while (length(remaining) > 0) {
    for (ii in remaining) {
      obj <- x[[ii]]

      if (!is.atomic(obj)) {
        ## If an unresolved future, move on to the next object
        ## so that future can be resolved in the asynchronously
        if (inherits(obj, "Future")) {
          ## Lazy future that is not yet launched?
          if (obj$state == 'created') obj <- run(obj)
          if (!resolved(obj)) next
        }

        ## In all other cases, try to resolve
        resolve(obj, value = value, recursive = recursive-1, sleep = sleep, progress = FALSE, ...)
      }

      ## Assume resolved at this point
      remaining <- setdiff(remaining, ii)
      if (debug) mdebug(" length: %d (resolved future %s)", length(remaining), ii)
      stop_if_not(!anyNA(remaining))
    } # for (ii ...)

    ## Wait a bit before checking again
    if (length(remaining) > 0) Sys.sleep(sleep)
  } # while (...)

  if (debug) mdebug("resolve() on environment ... DONE")

  x0
} ## resolve() for environment


#' @export
resolve.listenv <- function(x, idxs = NULL, value = FALSE, recursive = 0, sleep = 0.1, progress = FALSE, ...) {
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


  debug <- getOption("future.debug", FALSE)
  if (debug) {
    mdebug("resolve() on list environment ...")
    mdebug(" recursive: %s", recursive)
  }

  ## Coerce future promises into Future objects
  x0 <- x
  x <- futures(x)
  nx <- length(x)

  ## Everything is considered non-resolved by default
  remaining <- seq_len(nx)

  if (debug) {
    mdebug(" length: %d", nx)
    mdebug(" elements: %s", hpaste(sQuote(names(x))))
  }

  ## Resolve all elements
  while (length(remaining) > 0) {
    for (ii in remaining) {
      obj <- x[[ii]]

      if (!is.atomic(obj)) {
        ## If an unresolved future, move on to the next object
        ## so that future can be resolved in the asynchronously
        if (inherits(obj, "Future")) {
          ## Lazy future that is not yet launched?
          if (obj$state == 'created') obj <- run(obj)
          if (!resolved(obj)) next
        }

        ## In all other cases, try to resolve
        resolve(obj, value = value, recursive = recursive-1, sleep = sleep, progress = FALSE, ...)
      }

      ## Assume resolved at this point
      remaining <- setdiff(remaining, ii)
      if (debug) mdebug(" length: %d (resolved future %s)", length(remaining), ii)
      stop_if_not(!anyNA(remaining))
    } # for (ii ...)

    ## Wait a bit before checking again
    if (length(remaining) > 0) Sys.sleep(sleep)
  } # while (...)

  if (debug) mdebug("resolve() on list environment ... DONE")

  x0
} ## resolve() for list environment
