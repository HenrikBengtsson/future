#' Gets the logged journal of events for a future
#'
#' _WARNING: This function is under development. It can change at any time.
#' For now, please, do not depend on this function in a published R package._
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
#' A data frame of class `FutureJournal` with columns:
#'
#'  1.            `event` (factor)           - type of event that took place
#'  2.         `category` (factor)           - the category of the event
#'  3.           `parent` (character string) - (to be describe)
#'  4.            `start` (POSIXct)          - the timestamp when the event started
#'  5.               `at` (difftime)         - the time when the event started
#'                                             relative to first event
#'  6.         `duration` (difftime)         - the duration of the event
#'  7. `memory_start` (numeric)          - the memory consumption at the beginning
#'                                             of the event
#'  8.  `memory_stop` (numeric)          - the memory consumption at the end of
#'                                             the event
#'  9.     `future_label` (character string) - the label of the future 
#' 10.      `future_uuid` (factor)           - the UUID of the future
#' 11.     `session_uuid` (factor)           - the UUID of the R session where the
#'                                             event took place
#'
#' The common events are:
#'
#'  *   `create` - the future was created (an `overhead`)
#'  *   `launch` - the future was launched (an `overhead`)
#'  * `evaluate` - the future was evaluated (an `evaluation`)
#'  * `resolved` - the future was queried (may be occur multiple times)
#'                 (an `overhead`)
#'  *   `gather` - the results was retrieved (an `overhead`)
#'
#' but others may be added by other Future classes.
#'
#' Common event categories are:
#'
#'  * `evaluation` - processing time is spent on evaluation
#'  *   `overhead` - processing time is spent on orchestrating the future
#'  *    `waiting` - processing time is spent on waiting to set up or
#'                   querying the future
#'
#' but others may be added by other Future classes.
#'
#' The data frame is sorted by the `at` time.
#' Note that the timestamps for the `evaluate` event are based on the local
#' time on the worker. The system clocks on the worker and the calling R
#' system may not be in perfect sync.
#'
#' @section Enabling and disabling event logging:
#' To enable logging of events, set option `future.journal` is TRUE.
#' To disable, set it to FALSE (default).
#'
#' @example incl/journal.R
#'
#' @seealso
#' Use [capture_journals()] to capture journals from all futures.
#'
#' @keywords internal
#' @noRd
journal <- function(x, ...) UseMethod("journal")


#' @export
journal.Future <- function(x, ...) {
  data <- x$.journal
  if (is.null(data)) {
    label <- x$label
    if (is.null(label)) label <- "<none>"
    msg <- sprintf("No journal is available for future ('%s'). Did you forget to enable journaling?", label)
    stop(FutureError(msg, future = x))
  }
  stop_if_not(inherits(data, "FutureJournal"))
  session_uuid <- x$owner
  stop_if_not(length(session_uuid) == 1L, is.character(session_uuid), !is.na(session_uuid))
  
  session_uuid <- rep(session_uuid, times = nrow(data))
  
  ## Backward compatibility (until all backends does this)
  if (!is.element("evaluate", data$event) && !is.null(x$result)) {
    stop_if_not(is.character(session_uuid))
    x <- appendToFutureJournal(x,
             event = "evaluate",
          category = "evaluation",
             start = x$result$started,
              stop = x$result$finished,
      memory_start = x$result$memory_started,
       memory_stop = x$result$memory_finished
    )
    data <- x$.journal
    stop_if_not(length(x$result$session_uuid) == 1L, is.character(x$result$session_uuid))
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
  data$future_uuid <- as.factor(x$uuid)

  ## Append session UUID
  data$session_uuid <- as.factor(session_uuid)

  ## Coerce 'event' to a factor
  known_levels <- c("lifespan", "create", "launch", "resolved", "gather", "evaluate")
  extra_levels <- c("attachPackages", "eraseWorker", "exportGlobals", "receiveResult", "getWorker")
  other_levels <- sort(setdiff(data$event, known_levels))
  levels <- c(known_levels, other_levels)
  data$event <- factor(data$event, levels = levels)

  ## Coerce 'category' to a factor
  levels <- c("evaluation", "overhead", "waiting")
  data$category <- factor(data$category, levels = levels)

  ## Coerce 'category' to a factor
  levels <- c("evaluation", "overhead", "waiting")
  data$category <- factor(data$category, levels = levels)

  ## Sort by relative start time
  if (nrow(data) > 1L) {
    ## Class attributes are lost when subsetting a data frame
    classes <- lapply(data, FUN = function(x) class(x))
    data <- data[order(data$at), ]
    rownames(data) <- NULL
    for (kk in seq_along(data)) {
      class(data[[kk]]) <- classes[[kk]]
    }
  }

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
journal.list <- function(x, baseline = TRUE, ...) {
  ## Reset relative time zero to the first observed timestamp?
  if (isTRUE(baseline)) {
    stop_if_not(baseline >= 1L, baseline <= length(x))
    x <- lapply(x, FUN = journal, ...)
    start <- lapply(x, FUN = function(x) min(x$start, na.rm = TRUE))
    start <- Reduce(c, start)
    baseline <- min(start, na.rm = TRUE)
  }
  
  js <- lapply(x, FUN = journal, baseline = baseline, ...)

  class <- class(js[[1]])
  js <- Reduce(rbind, js)
  class(js) <- class
  
  js
}


#' @export
print.FutureJournal <- function(x, digits.secs = 3L, ...) {
  oopts <- options(digits.secs = digits.secs)
  on.exit(options(oopts))
  NextMethod("print")
}

#' Summarize Timing and Memory Profiling
#'
#' _WARNING: This function is under development. It can change at any time.
#' For now, please, do not depend on this function in a published R package._
#'
#' @param by If `"evaluation"` (default), summarize across all evaluations.
#'           Each evaluation is resolved by one future.
#'           If `"process"`, summarize journal statistics per process,
#'           which includes the main R session, and all workers (if any).
#'
#' @return
#' A data.frame of class `FutureJournalSummary`.
#'
#' @export
summary.FutureJournal <- function(object, by = c("evaluation", "process", "future"), ...) {
  ## To please 'R CMD check'
  event <- future_uuid <- median <- parent <- category <- NULL

  by <- match.arg(by)

  if (by == "evaluation") {
    dt_top <- subset(object, is.na(parent))
  
    uuids <- unique(dt_top$future_uuid)
    nbr_of_futures <- length(uuids)
  
    ## Calculate 'stop' times
    dt_top$stop <- dt_top$start + dt_top$duration

    ## -------------------------------------------------------
    ## 1. Calculate the total walltime
    ## -------------------------------------------------------
    ## (a) timestamp when the first event starts
    t_begin <- subset(dt_top, event == "create")[["start"]]
    ## (b) timestamp when 'gather' finishes
    t_end <- subset(dt_top, event == "gather")[["stop"]]
    ## (c) durations (per future)
    t_delta <- t_end - t_begin
    ## (d) total duration
    t_total <- sum(t_delta, na.rm = TRUE)
  
    ## (e) build table
    t <- NULL
    if (length(uuids) > 1L) {
      t <- c(t,    min =    min(t_delta, na.rm = TRUE))
      t <- c(t,   mean =   mean(t_delta, na.rm = TRUE))
      t <- c(t, median = median(t_delta, na.rm = TRUE))
      t <- c(t,    max =    max(t_delta, na.rm = TRUE))
      t <- as.difftime(t, units = "secs")
    }
    t <- c(t, total = t_total)
    stats <- data.frame(walltime = t)
    
    ## -------------------------------------------------------
    ## 2. Calculate efficiency
    ## -------------------------------------------------------
    ## (a) Per future
    eff <- list()
    for (kk in seq_along(uuids)) {
      uuid <- uuids[[kk]]
      dt_uuid <- subset(dt_top, future_uuid == uuid)
      res <- data.frame(
        evaluate = subset(dt_uuid, category == "evaluation")[["duration"]],
        overhead = sum(subset(dt_uuid, category == "overhead")[["duration"]])
      )
      res[["duration"]] <- t_delta[kk]
      eff[[uuid]] <- res
    }
    eff <- Reduce(rbind, eff)
  
    ## (b) Summary
    res <- NULL
    if (length(uuids) > 1L) {
      t <- lapply(c("min", "mean", "median", "max"), FUN = function(fcn_name) {
        fcn <- get(fcn_name, mode = "function")
        t <- as.data.frame(lapply(eff, FUN = fcn))
        rownames(t) <- fcn_name
        t
      })
      t <- Reduce(rbind, t)
      res <- t
    }
  
    ## (c) Total
    t <- as.data.frame(lapply(eff, FUN = sum))
    rownames(t) <- "total"
    res <- rbind(res, t)
  
    ## (d) Combine
    stats <- cbind(stats, res)
  
    ## (e) Fractions
    stats[["evaluate_ratio"]] <- as.numeric(stats[["evaluate"]]) / as.numeric(stats[["duration"]])
    stats[["overhead_ratio"]] <- as.numeric(stats[["overhead"]]) / as.numeric(stats[["duration"]])
  
  
    ## -------------------------------------------------------
    ## 3. Summarize memory use for future evaluations
    ## -------------------------------------------------------
    ## (a) Per future
    eff <- list()
    for (kk in seq_along(uuids)) {
      uuid <- uuids[[kk]]
      dt_uuid <- subset(dt_top, future_uuid == uuid)
      dt <- subset(dt_uuid, category == "evaluation")
      res_kk <- list()
      for (type in c("rss", "vms")) {
        t_delta <- dt[[paste0("memory_stop_", type)]] - dt[[paste0("memory_start_", type)]]
        res_kk[[paste0("memory_", type)]] <- t_delta
      }
      res_kk <- as.data.frame(res_kk)
      eff[[uuid]] <- res_kk
    }
    eff <- Reduce(rbind, eff)
  
    ## (b) Summary
    res <- NULL
    if (length(uuids) > 1L) {
      t <- lapply(c("min", "mean", "median", "max"), FUN = function(fcn_name) {
        fcn <- get(fcn_name, mode = "function")
        t <- as.data.frame(lapply(eff, FUN = fcn))
        rownames(t) <- fcn_name
        t
      })
      t <- Reduce(rbind, t)
      res <- t
    }
  
    ## (c) Total
    t <- as.data.frame(lapply(eff, FUN = sum))
    rownames(t) <- "total"
    res <- rbind(res, t)
    colnames(res) <- paste0("evaluate_", colnames(res))
  
    ## (d) Combine
    stats <- cbind(stats, res)
    
  
    ## -------------------------------------------------------
    ## 4. Wrap up
    ## -------------------------------------------------------
    stats[["summary"]] <- rownames(stats)
    rownames(stats) <- NULL
    stats <- stats[, c("summary", "evaluate", "evaluate_ratio", "overhead", "overhead_ratio", "duration", "walltime", "evaluate_memory_rss", "evaluate_memory_vms")]
  
    attr(stats, "nbr_of_futures") <- length(uuids)
    class(stats) <- c("FutureJournalSummary", class(stats))




  } else if (by == "process") {
    dt_top <- object

    uuids <- unique(dt_top$session_uuid)
  
    ## Calculate 'stop' times
    dt_top$stop <- dt_top$start + dt_top$duration
    dt_top$at <- dt_top$start - min(dt_top$start, na.rm = TRUE)

    ## (a) Groups by sessions
    groups <- by(dt_top, dt_top$session_uuid, FUN = identity)

    ## (b) Stats by group
    stats <- lapply(groups, FUN = function(group) {
      stats <- data.frame(
          session_uuid = group$session_uuid[1],
                 start = min(group$start, na.rm = TRUE),
                    at = min(group$at, na.rm = TRUE),
              duration = diff(range(group$at, group$at + group$duration, na.rm = TRUE)),
            memory_rss = diff(range(c(group$memory_start_rss, group$memory_stop_rss), na.rm = TRUE)),
            memory_vms = diff(range(c(group$memory_start_vms, group$memory_stop_vms), na.rm = TRUE)),
        nbr_of_futures = length(unique(subset(group, event == "evaluate")$future_uuid))

      )
      stats
    })
  
    ## (c) Combine
    stats <- do.call(rbind, stats)

    stats <- stats[order(stats$session_uuid != session_uuid(), stats$start), ]

    rownames(stats) <- NULL
    
    class(stats) <- c("FutureJournalSummary", class(stats))


  } else if (by == "future") {
    dt_top <- object

    uuids <- unique(dt_top$future_uuid)
  
    ## Calculate 'stop' times
    dt_top$stop <- dt_top$start + dt_top$duration
    dt_top$at <- dt_top$start - min(dt_top$start, na.rm = TRUE)

    ## (a) Groups by futures
    groups <- by(dt_top, dt_top$future_uuid, FUN = identity)

    ## (b) Stats by group
    stats <- lapply(groups, FUN = function(group) {
      stats <- data.frame(
           future_uuid = group$future_uuid[1],
                 start = min(group$start, na.rm = TRUE),
                    at = min(group$at, na.rm = TRUE),
              duration = diff(range(group$at, group$at + group$duration, na.rm = TRUE)),
            memory_rss = diff(range(c(group$memory_start_rss, group$memory_stop_rss), na.rm = TRUE)),
            memory_vms = diff(range(c(group$memory_start_vms, group$memory_stop_vms), na.rm = TRUE)),
       nbr_of_sessions = length(unique(subset(group, event == "evaluate")$session_uuid))

      )
      stats
    })
  
    ## (c) Combine
    stats <- do.call(rbind, stats)

    stats <- stats[order(stats$start), ]

    rownames(stats) <- NULL
    
    class(stats) <- c("FutureJournalSummary", class(stats))
  }

  
  stats
}


#' @export
print.FutureJournalSummary <- function(x, ...) {
  cat(sprintf("Number of futures: %d\n", attr(x, "nbr_of_futures")))
  NextMethod("print")
}


.memory <- local({
  na <- c(rss = NA_real_, vms = NA_real_)
  ps_handle <- NULL
  
  function(probe = TRUE) {
    if (is.na(probe)) {
      ps_handle <<- NULL
    } else {
      if (!probe || identical(ps_handle, NA)) return(na)
    }
    
    if (is.null(ps_handle)) {
      value <- Sys.getenv("R_FUTURE_JOURNAL_MEMORY", "TRUE")
      value <- as.logical(value)
      if (isTRUE(value)) {
        if (!requireNamespace("ps", quietly = TRUE)) {
          warning(FutureWarning("Package 'ps' is required in order to profile the memory"))
          ps_handle <<- NA
          return(na)
        }
      }
      ps_handle <<- ps::ps_handle()
    }
    
    ps::ps_memory_info(ps_handle)[c("rss", "vms")]
  }
})


makeFutureJournal <- function(x, event = "create", category = "other", parent = NA_character_, start = stop, stop = Sys.time(), memory_start = .memory(), memory_stop = .memory(FALSE)) {
  stop_if_not(
    inherits(x, "Future"),
    is.null(x$.journal),
    length(event) == 1L, is.character(event), !is.na(event),
    length(category) == 1L, is.character(category), !is.na(event),
    length(parent) == 1L, is.character(parent),
    length(start) == 1L, inherits(start, "POSIXct"),
    length(stop) == 1L, inherits(stop, "POSIXct"),
    length(memory_start) == 2L, is.numeric(memory_start),
    length(memory_stop) == 2L, is.numeric(memory_stop)
  )

  data <- data.frame(event = event, category = category, parent = parent, start = start, stop = stop, memory_start = as.list(memory_start), memory_stop = as.list(memory_stop))
  colnames(data) <- gsub(".", "_", colnames(data), fixed = TRUE)
  class(data) <- c("FutureJournal", class(data))
  x$.journal <- data
  invisible(x)
}

updateFutureJournal <- function(x, event, start = NULL, stop = Sys.time(), memory_start = NULL, memory_stop = .memory()) {
  ## Nothing to do?
  if (!inherits(x$.journal, "FutureJournal")) return(x)

  stop_if_not(
    inherits(x, "Future"),
    length(event) == 1L, is.character(event), !is.na(event),
    is.null(start) || (length(start) == 1L && inherits(start, "POSIXct")),
    is.null(stop) || (length(stop) == 1L && inherits(stop, "POSIXct")),
    is.null(memory_start) || length(memory_start) == 2L, is.numeric(memory_start),
    is.null(memory_stop) || length(memory_stop) == 2L, is.numeric(memory_stop)
  )

  data <- x$.journal
  stop_if_not(inherits(data, "FutureJournal"))
  row <- which(data$event == event)
  n <- length(row)
  if (n == 0L) stop(FutureError(sprintf("No such 'event' entry in journal: %s", sQuote(event))))
  if (n > 1L) row <- row[n]
  entry <- data[row, ]
  if (!is.null(start)) entry$start <- start
  if (!is.null(stop)) entry$stop <- stop
  if (!is.null(memory_start)) entry$memory_start <- as.list(memory_start)
  if (!is.null(memory_stop)) entry$memory_stop <- as.list(memory_stop)
  data[row, ] <- entry
  stop_if_not(inherits(data, "FutureJournal"))
  x$.journal <- data
  invisible(x)
}


appendToFutureJournal <- function(x, event, category = "other", parent = NA_character_, start = Sys.time(), stop = as.POSIXct(NA_real_), memory_start = .memory(), memory_stop = .memory(FALSE), skip = TRUE) {
  ## Nothing to do?
  if (!inherits(x$.journal, "FutureJournal")) return(x)

  if (skip && is.element(event, x$.journal$event)) return(x)
  
  stop_if_not(
    inherits(x, "Future"),
    length(event) == 1L, is.character(event), !is.na(event),
    length(category) == 1L, is.character(category), !is.na(event),
    length(parent) == 1L, is.character(parent),
    length(start) == 1L, inherits(start, "POSIXct"),
    length(stop) == 1L, inherits(stop, "POSIXct"),
    length(memory_start) == 2L, is.numeric(memory_start),
    length(memory_stop) == 2L, is.numeric(memory_stop)
  )

  if (missing(memory_stop) && !missing(stop)) {
    memory_stop <- .memory()
  }

  data <- data.frame(event = event, category = category, parent = parent, start = start, stop = stop, memory_start = as.list(memory_start), memory_stop = as.list(memory_stop))
  colnames(data) <- gsub(".", "_", colnames(data), fixed = TRUE)
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
