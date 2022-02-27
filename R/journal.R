#' Gets a journal of events for a future
#'
#' @param x A [Future] object.
#'
## @param baseline (POSIXct; optional) A baseline timestamp that the
## relative start time (`at`) should be calculated towards. The default
## is the first `start` time in the journal.
#'
#' @param \ldots Not used.
#'
#' @return
#' A data frame with columns `step` (character string), `start` (POSIXct),
#' `at` (difftime), and `duration` (difftime).
#' The data frame is sorted by the `at` time.
#' Note that the timestamps for the `evaluate` step are based on the local
#' time on the worker. The system clocks on the worker and the calling R
#' system may be out of sync.
#'
#' @example incl/journal.R
journal <- function(x, ...) UseMethod("journal")

#' @export
journal.Future <- function(x, baseline = NULL, ...) {
  data <- x$.journal
  stop_if_not(
    inherits(data, "FutureJournal"),
    is.null(baseline) || (length(baseline) == 1L && inherits(baseline, "POSIXct"))
  )
  
  ## Backward compatibility (until all backends does this)
  if (!is.element("evaluate", data$step) && !is.null(x$result)) {
    x <- appendToFutureJournal(x,
      step = "evaluate",
      start = x$result$started,
      stop = x$result$finished
    )
    data <- x$.journal
    stop_if_not(inherits(data, "FutureJournal"))
  }

  ## Append 'at' and 'duration'
  if (is.null(baseline)) baseline <- data$start[1]
  data$at <- data$start - baseline
  data$duration <- data$stop - data$start
  data$stop <- NULL

  ## Sort by relative start time
  if (nrow(data) > 1L) data <- data[order(data$at), ]

  data
}

#' @export
print.FutureJournal <- function(x, digits.secs = 3L, ...) {
  oopts <- options(digits.secs = digits.secs)
  on.exit(options(oopts))
  NextMethod("print")
}


makeFutureJournal <- function(x, step = "create", start = stop, stop = Sys.time()) {
  stop_if_not(
    inherits(x, "Future"),
    is.null(x$.journal),
    length(step) == 1L, is.character(step),
    length(start) == 1L, inherits(start, "POSIXct"),
    length(stop) == 1L, inherits(stop, "POSIXct")
  )

  data <- data.frame(step = step, start = start, stop = stop)
  class(data) <- c("FutureJournal", class(data))
  x$.journal <- data
  invisible(x)
}


updateFutureJournal <- function(x, step, start = NULL, stop = Sys.time()) {
  ## Nothing to do?
  if (!inherits(x$.journal, "FutureJournal")) return(x)

  stop_if_not(
    inherits(x, "Future"),
    length(step) == 1L, is.character(step),
    is.null(start) || (length(start) == 1L && inherits(start, "POSIXct")),
    is.null(stop) || (length(stop) == 1L && inherits(stop, "POSIXct"))
  )

  data <- x$.journal
  stop_if_not(inherits(data, "FutureJournal"))
  row <- which(data$step == step)
  n <- length(row)
  if (n == 0L) stop("No such 'step' entry in journal: ", sQuote(step))
  if (n > 1L) row <- row[n]
  entry <- data[row, ]
  if (!is.null(start)) entry$start <- start
  if (!is.null(stop)) entry$stop <- stop
  data[row, ] <- entry
  stop_if_not(inherits(data, "FutureJournal"))
  x$.journal <- data
  invisible(x)
}


appendToFutureJournal <- function(x, step, start = Sys.time(), stop = as.POSIXct(NA_real_), skip = TRUE) {
  ## Nothing to do?
  if (!inherits(x$.journal, "FutureJournal")) return(x)

  if (skip && is.element(step, x$.journal$step)) return(x)
  
  stop_if_not(
    inherits(x, "Future"),
    length(step) == 1L, is.character(step),
    length(start) == 1L, inherits(start, "POSIXct"),
    length(stop) == 1L, inherits(stop, "POSIXct")
  )

  data <- data.frame(step = step, start = start, stop = stop)
  x$.journal <- rbind(x$.journal, data)
  invisible(x)
}
