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

  message("* A single future ...")

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

  message("* A single future ... DONE")

  message("* Two futures ... ")

  message("- list of two futures")
  fs <- list()
  msgs <- recordMessages({
    fs[[1]] <- future({ instantMessage("IM1"); Sys.sleep(0.1); message("M1"); 1L })
    fs[[2]] <- future({ instantMessage("IM2"); Sys.sleep(0.1); message("M2"); 2L })
  })
  message("  class: ", paste(sQuote(class(fs[[1]])), collapse = ", "))
  if (inherits(fs[[1]], "UniprocessFuture")) {
    stopifnot(identical(msgs, c("IM1\n", "IM2\n")))
  } else {
    stopifnot(length(msgs) == 0L)
  }

  message("- check if resolved")
  msgs <- recordMessages({
    rs <- resolved(fs)
  })
  message("  result: ", paste(rs, collapse = ", "))
  stopifnot(length(msgs) == 0L)

  message("- resolve w/out collecting results")
  msgs <- recordMessages({
    fs <- resolve(fs)
  })
  stopifnot(length(msgs) == 0L)

  message("- resolve w/ collect results")
  msgs <- recordMessages({
    fs <- resolve(fs, result = TRUE)
  })
  if (inherits(fs[[1]], c("UniprocessFuture", "CallrFuture", "BatchtoolsFuture"))) {
    stopifnot(length(msgs) == 0L)
  } else {
    stopifnot(identical(msgs, c("IM1\n", "IM2\n")))
  }

  message("- getting value")
  msgs <- recordMessages({
    vs <- values(fs)
  })
  message("  values: ", paste(vs, collapse = ", "))
  stopifnot(identical(msgs, c("IM1\n", "M1\n", "IM2\n", "M2\n")))
  
  message("- getting value again")
  msgs <- recordMessages({
    vs <- values(fs)
  })
  message("  values: ", paste(vs, collapse = ", "))
  stopifnot(identical(msgs, c("IM1\n", "M1\n", "IM2\n", "M2\n")))

  message("* Two futures ... DONE")

  message(sprintf("Instant relay w/ %s ... done", names(strategies)[ss]))
} ## for (ss ...)

message("*** instantMessage() ... DONE")

source("incl/end.R")
