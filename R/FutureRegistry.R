FutureRegistry <- local({
  db <- list()

  indexOf <- function(futures, future) {
    for (ii in seq_along(futures)) {
      if (identical(future, futures[[ii]])) return(ii)
    }
    NA_integer_
  }

  collectValues <- function(where, futures, firstOnly=TRUE) {
    excl <- NULL

    for (ii in seq_along(futures)) {
      future <- futures[[ii]]
      if (resolved(future)) {
        ## (a) Let future cleanup after itself, iff needed
        ##     This may result in a call to FutureRegistry(..., action="remove")
        tryCatch({
          value(future)
        }, error = function(ex) {})

        ## (b) Make sure future is removed from registry, unless
        ##     already done via above value() call
        idx <- indexOf(futures, future)
        if (!is.na(idx)) excl <- c(excl, idx)

        ## (c) Collect only the first resolved future?
        if (firstOnly) break
      }
    } ## for (ii ...)

    if (length(excl) > 0L) {
      futures <- db[[where]]
      futures[excl] <- NULL
      db[[where]] <<- futures
    }

    futures
  } ## collectValues()


  function(where, action=c("add", "remove", "list", "collect-first", "reset"), future=NULL, ...) {
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

    ## Early propagation of errors?
    if (length(futures) > 0L) {
      idxs <- lapply(futures, FUN=function(f) (f$onError != "value"))
      idxs <- which(unlist(idxs, use.names=FALSE))
#      print(list(futures=futures, idxs=idxs))
#      collectValues(where, futures=futures[idxs], firstOnly=FALSE)
    }

    futures
  }
})
