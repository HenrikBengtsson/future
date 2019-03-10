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
  
  conditions <- result$conditions
  
  ## BACKWARD COMPATIBILITY: future (< 1.11.0)
  if (!is.list(conditions)) conditions <- list(list(condition = result[["condition"]]))
  
  ## Nothing to do?
  if (length(conditions) == 0L) {
    if (debug) mdebug("signalEarly() ... DONE")
    return(future)
  }
  
  if (debug) {
    conditionClasses <- vapply(conditions,
                               FUN = function(c) class(c$condition)[1],
                               FUN.VALUE = NA_character_)
    mdebug("signalEarly(): Condition classes = [n=%s] %s",
           length(conditionClasses), hpaste(sQuote(conditionClasses)))
  }

  resignalConditions(future)
  
  if (debug) mdebug("signalEarly() ... DONE")

  invisible(future)
}

resignalConditions <- function(future, ...) {
  ## Future is not yet launched
  if (!future$state %in% c("finished", "failed")) {
    stop(FutureError(
      sprintf(
        "Internal error: Cannot resignal future conditions. %s has not yet been resolved (state = %s)",
        class(future)[1], paste(sQuote(future$state), collapse = ", ")),
      future = future))
  }

  result <- result(future)
  stop_if_not(inherits(result, "FutureResult"))
  
  conditions <- result$conditions
  
  ## BACKWARD COMPATIBILITY: future (< 1.11.0)
  if (!is.list(conditions) && !is.null(result[["condition"]])) {
    conditions <- list(list(condition = result[["condition"]]))
  }

  ## Nothing to do
  if (length(conditions) == 0) return(invisible(future))
  
  debug <- getOption("future.debug", FALSE)

  ## Signal detected conditions one by one
  for (kk in seq_along(conditions)) {
    cond <- conditions[[kk]]
    condition <- cond$condition

    if (inherits(condition, "error")) {
      ## SPECIAL: By default, don't add 'future.info' because it
      ## modifies the error object, which may break things.
      if (debug && !"future.info" %in% names(condition)) {
        ## BACKWARD COMPATIBILITY: future (< 1.11.0)
        if (is.null(cond$calls)) cond$calls <- result$calls
        ## Recreate the full call stack
        cond$calls <- c(future$calls, cond$calls)
        condition$future.info <- cond
      }
      stop(condition)
    } else if (inherits(condition, "warning")) {
      warning(condition)
    } else if (inherits(condition, "message")) {
      message(condition)
    } else if (inherits(condition, "condition")) {
      signalCondition(condition)
    } else {
      stop_if_not(inherits(condition, "condition"))
    }
  }
  
  invisible(future)
}
