signalEarly <- function(future, collect=TRUE) {
  earlySignal <- future$earlySignal

  ## Don't signal early?
  if (!earlySignal) return(future)

  mdebug("signalEarly(): Retrieving value ...")

  ## Collect value?
  if (collect) {
    mdebug("signalEarly(): v <- value(f, signal=FALSE)")
    value <- value(future, signal=FALSE)
  } else {
    mdebug("signalEarly(): v <- f$value")
    value <- future$value
  }

  mdebug("signalEarly(): class(v) = c(%s)", paste(class(value), collapse=", "))
  mdebug("signalEarly(): Retrieving value ... DONE")

  ## Was a condition caught?
  if (!inherits(value, "condition")) return(future)

  mdebug("signalEarly(): signalCondition(v)")

  ## Signal detected condition
  signalCondition(value)

  mdebug("signalEarly() ... DONE")

  invisible(future)
}
