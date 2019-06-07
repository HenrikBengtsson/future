source("incl/start.R")

options(future.debug = FALSE)

message("*** instantMessage() ...")

instantMessage <- function(..., domain = NULL, appendLF = TRUE) {
   msg <- .makeMessage(..., domain = domain, appendLF = appendLF)
   call <- sys.call()
   m <- simpleMessage(msg, call)
   class(m) <- c(class(m), "instant_relay_condition")
   message(m)
   invisible(m)
}

recordConditions <- function(expr, ...) {
  conditions <- list()
  withCallingHandlers(expr, condition = function(c) {
    attr(c, "received") <- Sys.time()
    conditions[[length(conditions) + 1L]] <<- c
  })
  conditions
}

recordMessages <- function(expr, ...) {
  sapply(recordConditions(expr, ...), FUN = conditionMessage)
}

strategies <- supportedStrategies()

for (ss in seq_along(strategies)) {
  strategy <- strategies[[ss]]
  message(sprintf("Instant relay w/ %s ...", names(strategies)[ss]))
  plan(strategy)

  message("- creating future")
  msgs <- recordMessages({
    f <- future({
      instantMessage("IM1")
      message("M")
      instantMessage("IM2")
      42L
    })
  })
  message("  class: ", paste(sQuote(class(f)), collapse = ", "))
  if (inherits(f, "UniprocessFuture")) {
    stopifnot(identical(msgs, c("IM1\n", "IM2\n")))
  } else {
    stopifnot(length(msgs) == 0L)
  }
  
  message("- checking if resolved")
  msgs <- recordMessages({
    r <- resolved(f)
  })
  message("  result: ", r)
  stopifnot(length(msgs) == 0L)

  message("- resolve w/out collecting results")
  msgs <- recordMessages({
    f <- resolve(f)
  })
  stopifnot(length(msgs) == 0L)

  message("- resolve w/ collect results")
  msgs <- recordMessages({
    f <- resolve(f, result = TRUE)
  })
  if (inherits(f, c("UniprocessFuture", "CallrFuture", "BatchtoolsFuture"))) {
    stopifnot(length(msgs) == 0L)
  } else {
    stopifnot(identical(msgs, c("IM1\n", "IM2\n")))
  }

  message("- getting value")
  msgs <- recordMessages({
    v <- value(f)
  })
  message("  value: ", v)
  if (inherits(f, "UniprocessFuture")) {
    stopifnot(identical(msgs, "M\n"))
  } else {
    stopifnot(identical(msgs, c("IM1\n", "IM2\n", "M\n")))
  }
  
  message("- getting value again")
  msgs <- recordMessages({
    v <- value(f)
  })
  message("  value: ", v)
  stopifnot(identical(msgs, "M\n"))
  
  message(sprintf("Instant relay w/ %s ... done", names(strategies)[ss]))
} ## for (ss ...)

message("*** instantMessage() ... DONE")

source("incl/end.R")
