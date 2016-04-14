FutureRegistry <- local({
  db <- list()

  indexOf <- function(futures, future) {
    for (ii in seq_along(futures)) {
      if (identical(future, futures[[ii]])) return(ii)
    }
    NA_integer_
  }

  collectValues <- function(where, futures, firstOnly=TRUE) {
    for (ii in seq_along(futures)) {
      future <- futures[[ii]]

      ## Is future even launched?
      if (future$state == "created") next

      ## NOTE: It is when calling resolved() on a future with
      ##       early signaling is enabled that conditioned
      ##       may be signaled.
      if (resolved(future)) {
        ## (a) Let future cleanup after itself, iff needed.
        ##     This, this may result in a call to
        ##     FutureRegistry(..., action="remove").
        value(future, signal=FALSE)

        ## (b) Make sure future is removed from registry, unless
        ##     already done via above value() call.
        futuresDB <- db[[where]]
        idx <- indexOf(futuresDB, future=future)
        if (!is.na(idx)) {
          futuresDB[[idx]] <- NULL
          db[[where]] <<- futuresDB
        }

        ## (c) Collect only the first resolved future?
        if (firstOnly) break
      }
    } ## for (ii ...)

    invisible(futures)
  } ## collectValues()


  function(where, action=c("add", "remove", "list", "collect-first", "reset"), future=NULL, earlySignal=TRUE, ...) {
    stopifnot(length(where) == 1, nzchar(where))
    futures <- db[[where]]

    ## Automatically create?
    if (is.null(futures)) {
      futures <- list()
      db[[where]] <<- futures
    }

    if (action == "add") {
      idx <- indexOf(futures, future=future)
      if (!is.na(idx)) {
        msg <- sprintf("Cannot add to %s registry. %s is already registered.", sQuote(where), class(future)[1])
        mdebug("ERROR: %s", msg)
        stop(msg)
      }
      futures[[length(futures)+1L]] <- future
      db[[where]] <<- futures
    } else if (action == "remove") {
      idx <- indexOf(futures, future=future)
      if (is.na(idx)) {
        msg <- sprintf("Cannot remove from %s registry. %s not registered.", sQuote(where), class(future)[1])
        mdebug("ERROR: %s", msg)
        stop(msg)
      }
      futures[[idx]] <- NULL
      db[[where]] <<- futures
    } else if (action == "collect-first") {
      collectValues(where, futures=futures, firstOnly=TRUE)
    } else if (action == "reset") {
      db[[where]] <<- list()
    } else if (action == "list") {
    } else {
      msg <- sprintf("INTERNAL ERROR: Unknown action to %s registry: %s", sQuote(where), action)
      mdebug(msg)
      stop(msg)
    }

    ## Early signaling of conditions?
    if (earlySignal && length(futures) > 0L) {
      ## Which futures have early signaling enabled?
      idxs <- lapply(futures, FUN=function(f) f$earlySignal)
      idxs <- which(unlist(idxs, use.names=FALSE))

      ## Any futures to be scanned for early signaling?
      if (length(idxs) > 0) {
        ## Collect values, which will trigger signaling during
        ## calls to resolved().
        collectValues(where, futures=futures[idxs], firstOnly=FALSE)
      }
    }

    futures
  }
})
