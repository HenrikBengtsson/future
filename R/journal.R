#' Gets a journal of events for a future
#'
#' @param x A [Future] object.
#'
## @param baseline (POSIXct; optional) A timestamp to server as time zero
## for the relative start time (`at`). If `TRUE` (default), then the
## earliest timepoint observed is used as the baseline.
#'
#' @param \ldots Not used.
#'
#' @return
#' A data frame with columns:
#'
#'  1. `step` (character string)
#'  2. `start` (POSIXct)
#'  3. `at` (difftime)
#'  4. `duration` (difftime)
#'  5. `future_label` (character string)
#'  6. `future_uuid` (character string)
#'  7. `session_uuid` (character string)
#' 
#' The data frame is sorted by the `at` time.
#' Note that the timestamps for the `evaluate` step are based on the local
#' time on the worker. The system clocks on the worker and the calling R
#' system may be out of sync.
#'
#' @example incl/journal.R
journal <- function(x, ...) UseMethod("journal")

#' @export
journal.Future <- function(x, ...) {
  data <- x$.journal
  stop_if_not(inherits(data, "FutureJournal"))

  session_uuid <- rep(x$owner, times = nrow(data))
  
  ## Backward compatibility (until all backends does this)
  if (!is.element("evaluate", data$step) && !is.null(x$result)) {
    stop_if_not(is.character(session_uuid))
    x <- appendToFutureJournal(x,
      step = "evaluate",
      start = x$result$started,
      stop = x$result$finished
    )
    data <- x$.journal
    session_uuid <- c(session_uuid, x$result$session_uuid)
    stop_if_not(inherits(data, "FutureJournal"))
  }

  ## Find relative time zero
  baseline <- min(data$start, na.rm = TRUE)

  ## Append 'at' and 'duration'
  data$at <- data$start - baseline
  data$duration <- data$stop - data$start
  data$stop <- NULL

  ## Append future 'label'
  data$future_label <- if (is.null(x$label)) NA_character_ else x$label

  ## Append future UUID
  data$future_uuid <- x$uuid

  ## Append session UUID
  data$session_uuid <- session_uuid

  ## Sort by relative start time
  if (nrow(data) > 1L) data <- data[order(data$at), ]

  data
}

#' @export
journal.FutureJournal <- function(x, baseline = NULL, ...) {
  ## Reset relative time zero?
  if (!is.null(baseline)) {
    if (isTRUE(baseline)) baseline <- min(x$start, na.rm = TRUE)
    x$at <- x$start - baseline
  }
  x
}

#' @export
journal.list <- function(x, index = seq_along(x), baseline = TRUE, ...) {
  ## Reset relative time zero to the first observed timestamp?
  if (isTRUE(baseline)) {
    stop_if_not(baseline >= 1L, baseline <= length(x))
    x <- lapply(x, FUN = journal, ...)
    start <- lapply(x, FUN = function(x) min(x$start, na.rm = TRUE))
    start <- Reduce(c, start)
    baseline <- min(start, na.rm = TRUE)
  }
  
  js <- lapply(x, FUN = journal, baseline = baseline, ...)

  ## Add index?
  if (!is.null(index)) {
    stop_if_not(length(index) == length(x))
    js <- lapply(index, FUN = function(idx) {
      cbind(index = idx, js[[idx]])
    })
  }
  
  Reduce(rbind, js)
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



#' @rdname FutureCondition
#' @export
FutureJournalCondition <- function(message, journal, call = NULL, uuid = future$uuid, future = NULL) {
  stop_if_not(inherits(journal, "FutureJournal"))
  cond <- FutureCondition(message = message, call = call, uuid = uuid, future = future)
  cond$journal <- journal
  class <- c("FutureJournalCondition", class(cond))
  class(cond) <- class[!duplicated(class, fromLast = TRUE)]
  cond
}

#' @export
journal.FutureJournalCondition <- function(x, ...) {
  x$journal
}
