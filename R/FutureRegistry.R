FutureRegistry <- local({
  db <- list()

  indexOf <- function(futures, future) {
    for (ii in seq_along(futures)) {
      if (identical(future, futures[[ii]])) return(ii)
    }
    NA_integer_
  }

  function(where, action=c("add", "remove", "list", "collect-first"), future=NULL, ...) {
    futures <- db[[where]]

    ## Automatically create?
    if (is.null(futures)) {
      futures <- list()
      db[[where]] <<- futures
    }

    if (action == "add") {
      idx <- indexOf(futures, future=future)
      if (!is.na(idx)) {
        stop(sprintf("Cannot add to %s registry. %s is already registered.", sQuote(where), class(future)[1]))
      }
      futures[[length(futures)+1L]] <- future
      db[[where]] <<- futures
    } else if (action == "remove") {
      idx <- indexOf(futures, future=future)
      if (is.na(idx)) {
        stop(sprintf("Cannot remove from %s registry. %s not registered.", sQuote(where), class(future)[1]))
      }
      futures[[idx]] <- NULL
      db[[where]] <<- futures
    } else if (action == "collect-first") {
      for (ii in seq_along(futures)) {
        future <- futures[[ii]]
        if (resolved(future)) {
	  ## (a) Let future cleanup after itself, iff needed
	  ##     This may result in a call to FutureRegistry(..., action="remove")
	  value(future)

          ## (b) Make sure future is removed from registry, unless
	  ##     already done via above value() call
          futures <- db[[where]]
          idx <- indexOf(futures, future)
	  if (!is.na(idx)) {
	    futures[[idx]] <- NULL
            db[[where]] <<- futures
	  }

          ## (c) Collect only the first resolved future
	  break
	}
      }
    } else if (action == "list") {
      return(futures)
    } else {
      stop(sprintf("INTERNAL ERROR: Unknown action to %s registry: %s", sQuote(where), action))
    }
  }
})
