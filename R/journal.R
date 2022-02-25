#' Gets a journal of events for a future
#'
#' @param x A [Future] object.
#'
#' @param \ldots Not used.
#'
#' @return
#' A data frame with columns `step`, `start`, `stop`, and `duration`.a
#'
#' @export
journal <- function(x, ...) UseMethod("journal")

#' @export
journal.Future <- function(x, ...) {
  data <- x$.journal
  stop_if_not(inherits(data, "FutureJournal"))
  
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
    length(step) == 1L, is.character(step),
    length(start) == 1L, inherits(start, "POSIXct"),
    length(stop) == 1L, inherits(stop, "POSIXct")
  )

  data <- data.frame(step = step, start = start, stop = stop, duration = stop - start)
  class(data) <- c("FutureJournal", class(data))
  x$.journal <- data
  invisible(x)
}


updateFutureJournal <- function(x, step, start = NULL, stop = Sys.time()) {
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
  entry$duration <- entry$stop - entry$start
  data[row, ] <- entry
  stop_if_not(inherits(data, "FutureJournal"))
  x$.journal <- data
  invisible(x)
}


appendToFutureJournal <- function(x, step, start = Sys.time(), stop = as.POSIXct(NA_real_)) {
  stop_if_not(
    inherits(x, "Future"),
    length(step) == 1L, is.character(step),
    length(start) == 1L, inherits(start, "POSIXct"),
    length(stop) == 1L, inherits(stop, "POSIXct")
  )
    
  data <- data.frame(step = step, start = start, stop = stop, duration = stop - start)
  x$.journal <- rbind(x$.journal, data)
  invisible(x)
}
