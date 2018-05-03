signalEarly <- function(future, collect = TRUE, ...) {
  ## Future is not yet launched
  if (future$state == "created") return(future)

  earlySignal <- future$earlySignal

  ## Don't signal early?
  if (!earlySignal) return(future)

  debug <- getOption("future.debug", FALSE)
  if (debug) mdebug("signalEarly() ...")

  ## Nothing to do?
  if (!collect && !resolved(future)) {
    if (debug) mdebug("Future not resolved and collect = FALSE. Skipping")
    return(future)
  }
  
  result <- result(future)
  stop_if_not(inherits(result, "FutureResult"))
  
  condition <- result$condition
  
  ## Nothing to do?
  if (is.null(condition)) {
    if (debug) mdebug("signalEarly() ... DONE")
    return(future)
  }
  
  if (debug) mdebug("signalEarly(): Condition class = c(%s)",
                    paste(sQuote(class(condition)), collapse = ", "))

  ## Sanity check
  stop_if_not(inherits(condition, "condition"))

  resignalCondition(future)
  
  if (debug) mdebug("signalEarly() ... DONE")

  invisible(future)
}

resignalCondition <- function(future, ...) {
  ## Future is not yet launched
  if (!future$state %in% c("finished", "failed")) {
    stop(FutureError(
      sprintf(
        "Internal error: Cannot resignal future condition. %s has not yet been resolved (state = %s)",
        class(future)[1], paste(sQuote(future$state), collapse = ", ")),
      future = future))
  }

  result <- result(future)
  stop_if_not(inherits(result, "FutureResult"))
  
  condition <- result$condition
  stop_if_not(inherits(condition, "condition"))

  ## Signal detected condition
  if (inherits(condition, "error")) {
    stop(condition)
  } else if (inherits(condition, "warning")) {
    warning(condition)
  } else if (inherits(condition, "message")) {
    message(condition)
    message("\n") ## TODO: Remove this? /HB 2018-02-03
  } else if (inherits(condition, "condition")) {
    signalCondition(condition)
  }
  
  invisible(future)
}
