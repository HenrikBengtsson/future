#' Signals Captured Conditions
#'
#' Captured conditions that meet the \code{include} and \code{exclude}
#' requirements are signaled \emph{in the order as they were captured}.
#'
#' @param future A resolved \link{Future}.
#'
#' @param include A character string of \link[base:condition]{condition}
#' classes to signal.
#'
#' @param exclude A character string of \link[base:condition]{condition}
#' classes \emph{not} to signal.
#'
#' @param \ldots Not used.
#'
#' @return Returns the \code{future} object invisibly.
#'
#' @seealso
#' Conditions are signaled by
#' \code{\link[base:signalCondition]{signalCondition}()}.
resignalConditions <- function(future, include = "condition", exclude = NULL, ...) {
  ## Future is not yet launched
  if (!future$state %in% c("finished", "failed")) {
    stop(FutureError(
      sprintf(
        "Internal error: Cannot resignal future conditions. %s has not yet been resolved (state = %s)",
        class(future)[1], paste(sQuote(future$state), collapse = ", ")),
      future = future))
  }

  ## Nothing to do?
  if (length(include) == 0L) return(invisible(future))
  
  result <- result(future)
  stop_if_not(inherits(result, "FutureResult"))
  
  conditions <- result$conditions
  
  ## Nothing to do
  if (length(conditions) == 0) return(invisible(future))
  
  debug <- getOption("future.debug", FALSE)

  if (debug) {
    mdebug("resignalConditions() ...")
    mdebug(" - include = ", paste(sQuote(include), collapse = ", "))
    mdebug(" - exclude = ", paste(sQuote(exclude), collapse = ", "))
    mdebug(" - Number of conditions: ", length(conditions))
    on.exit(mdebug("resignalConditions() ... done"))
  }
  
  ## Signal detected conditions one by one
  for (kk in seq_along(conditions)) {
    cond <- conditions[[kk]]
    condition <- cond$condition

    ## Don't signal condition based on 'exclude'?
    if (length(exclude) > 0L && inherits(condition, exclude)) next
    
    ## Don't signal condition based on 'include'?
    if (length(include) > 0L && !inherits(condition, include)) next

    mdebugf(" - Condition #%d: %s", kk, paste(sQuote(class(condition)), collapse = ", "))

    if (inherits(condition, "error")) {
      ## SPECIAL: By default, don't add 'future.info' because it
      ## modifies the error object, which may break things.
      if (debug && !"future.info" %in% names(condition)) {
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


make_resignalConditionsASAP <- function(nx, stdout = TRUE, signal = TRUE, debug = getOption("future.debug", FALSE)) {
  relay <- (stdout || signal)
  if (!relay) return(function(...) TRUE)

  relayed <- rep(FALSE, times = nx)
  queue <- vector("list", length = nx)
    
  function(obj = NULL, ..., pos) {
    if (debug) {
      mdebugf("resignalConditionsASAP(%s, pos=%d) ...", class(obj)[1], pos)
      on.exit(mdebugf("resignalConditionsASAP(%s, pos=%d) ... done", class(obj)[1], pos))
    }
      
    ## Flush all?
    if (pos == 0L) {
      if (debug) message(" - flush all")
      for (ii in which(!relayed)) {
        obj <- queue[[ii]]
        if (is.null(obj)) {
          relayed[ii] <<- TRUE
          next
        }
        stop_if_not(inherits(obj, "Future"))
        if (debug) mdebugf(" - relaying element #%d", ii)
        if (stdout) value(obj, stdout = TRUE, signal = FALSE)
        if (signal) resignalConditions(obj, ...)
        relayed[ii] <<- TRUE
        queue[ii] <- list(NULL)
      }
      ## Assert that everything has been relayed
      stop_if_not(all(relayed))
      return(TRUE)
    }
      
    stop_if_not(pos >= 1L, pos <= nx)

    ## Add to queue?
    if (inherits(obj, "Future")) {
      queue[[pos]] <<- obj
    } else {
      relayed[pos] <<- TRUE
    }
    
    ## How far may we flush the queue?
    until <- which(relayed)
    n <- length(until)
    until <- if (n == 0L) 1L else min(until[n] + 1L, length(queue))
    if (debug) mprint(relayed)
    if (debug) mdebugf(" - until=%d", until)
    for (ii in seq_len(until)) {
      obj <- queue[[ii]]
      if (is.null(obj)) next
      if (debug) mdebugf(" - relaying element #%d", ii)
      if (stdout) value(obj, stdout = TRUE, signal = FALSE)
      if (signal) resignalConditions(obj, ...)
      relayed[ii] <<- TRUE
      queue[ii] <- list(NULL)
    }

    ## Was the added object relayed?
    relayed[pos]
  }
} ## make_resignalConditionsASAP()
