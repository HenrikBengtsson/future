signalEarly <- function(future, collect = TRUE, ...) {
  ## Future is not yet launched
  if (future$state == "created") return(future)

  earlySignal <- future$earlySignal

  ## Don't signal early?
  if (!earlySignal) return(future)

  debug <- getOption("future.debug", FALSE)
  if (debug) mdebug("signalEarly(): Retrieving value ...")

  ## Collect value?
  if (collect) {
    if (debug) mdebug("signalEarly(): v <- value(f, signal = FALSE)")
    value <- value(future, signal = FALSE)
  } else {
    if (debug) mdebug("signalEarly(): v <- f$value")
    value <- future$value
  }

  if (debug) {
    mdebug("signalEarly(): class(v) = c(%s)", paste(sQuote(class(value)), collapse = ", "))
    mdebug("signalEarly(): Retrieving value ... DONE")
  }

  ## Was a condition caught?
  if (!inherits(value, "condition")) return(future)

  if (debug) mdebug("signalEarly(): signalCondition(v)")
  resignalCondition(future)
  if (debug) mdebug("signalEarly() ... DONE")

  invisible(future)
}

resignalCondition <- function(future, ...) {
  ## Future is not yet launched
  if (!future$state %in% c("finished", "failed")) {
    stop(FutureError("Internal error: Future has not yet been resolved",
    future = future))
  }

  value <- future$value
  
  ## Was a condition caught?
  if (!inherits(value, "condition")) {
    stop(FutureError("Internal error: Future did not produce a condition",
    future = future))
  }

  cond <- value
  
  ## Signal detected condition
  if (inherits(cond, "error")) {
    stop(FutureEvaluationError(future))
  } else if (inherits(cond, "warning")) {
    warning(FutureEvaluationWarning(future))
  } else if (inherits(cond, "message")) {
    message(FutureEvaluationMessage(future))
    message("\n") ## TODO: Remove this? /HB 2018-02-03
  } else {
    signalCondition(value)
  }
  
  invisible(future)
}
