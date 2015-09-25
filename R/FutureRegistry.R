FutureRegistry <- local({
  futures <- list()

  indexOf <- function(future) {
    for (ii in seq_along(futures)) {
      if (identical(future, futures[[ii]])) return(ii)
    }
    NA_integer_
  }

  function(where="multicore", action=c("add", "remove", "collect", "list"), future=NULL, ...) {
    if (action == "add") {
      idx <- indexOf(future)
      if (!is.na(idx)) {
        stop(sprintf("Cannot add to %s registry. %s is already registered.", sQuote(where), class(future)[1]))
      }
      futures[[length(futures)+1L]] <<- future
    } else if (action == "remove") {
      idx <- indexOf(future)
      if (is.na(idx)) {
        stop(sprintf("Cannot remove from %s registry. %s not registered.", sQuote(where), class(future)[1]))
      }
      futures[[idx]] <<- NULL
    } else if (action == "collect") {
      for (ii in seq_along(futures)) {
        future <- futures[[ii]]
        if (resolved(future)) {
	  value(future)
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
