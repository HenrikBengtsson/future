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

  ## Signal detected condition
  if (inherits(value, "error")) {
    stop(FutureEvaluationError(future))
  } else if (inherits(value, "warning")) {
    warning(FutureEvaluationWarning(future))
  } else if (inherits(value, "message")) {
    message(FutureEvaluationMessage(future))
    message("\n") ## TODO: Remove this? /HB 2018-02-03
  } else {
    signalCondition(value)
  }

  if (debug) mdebug("signalEarly() ... DONE")

  invisible(future)
}
