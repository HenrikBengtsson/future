source("incl/start.R")

options(future.debug = FALSE)

message("*** immediateCondition:s ...")

immediateMessage <- function(..., domain = NULL, appendLF = TRUE) {
   msg <- .makeMessage(..., domain = domain, appendLF = appendLF)
   call <- sys.call()
   m <- simpleMessage(msg, call)
   class(m) <- c(class(m), "immediateCondition")
   message(m)
   invisible(m)
}

immediateWarning <- function(..., domain = NULL) {
   msg <- .makeMessage(..., domain = domain)
   call <- sys.call()
   w <- simpleWarning(msg, call)
   class(w) <- c(class(w), "immediateCondition")
   warning(w)
   invisible(w)
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
  message(sprintf("Immediate relay w/ %s ...", names(strategies)[ss]))
  plan(strategy)

  message("* A single future ...")

  message("- creating future")
  msgs <- recordMessages({
    f <- future({
      immediateMessage("IM1")
      message("M")
      immediateWarning("IW")
      immediateMessage("IM2")
      42L
    })
  })
  message("  class: ", paste(sQuote(class(f)), collapse = ", "))
  message(sprintf("  msgs [n=%d]: %s", length(msgs), paste(sQuote(msgs), collapse = ", ")))
  if (inherits(f, "UniprocessFuture")) {
    stopifnot(identical(msgs, c("IM1\n", "IW", "IM2\n")))
  } else {
    stopifnot(length(msgs) == 0L)
  }
  
  message("- checking if resolved")
  msgs <- recordMessages({
    r <- resolved(f)
  })
  message("  result: ", r)
  message(sprintf("  msgs [n=%d]: %s", length(msgs), paste(sQuote(msgs), collapse = ", ")))
  if (inherits(f, "ClusterFuture")) {
    stopifnot(identical(msgs, c("IM1\n")))
  } else {
    stopifnot(length(msgs) == 0L)
  }

  message("- resolve w/out collecting results")
  msgs <- recordMessages({
    f <- resolve(f)
  })
  message(sprintf("  msgs [n=%d]: %s", length(msgs), paste(sQuote(msgs), collapse = ", ")))
  if (inherits(f, "ClusterFuture")) {
    stopifnot(identical(msgs, c("IW", "IM2\n")))
  } else {
    stopifnot(length(msgs) == 0L)
  }

  message("- resolve w/ collect results")
  msgs <- recordMessages({
    f <- resolve(f, result = TRUE)
  })
  message(sprintf("  msgs [n=%d]: %s", length(msgs), paste(sQuote(msgs), collapse = ", ")))
  if (inherits(f, c("UniprocessFuture", "ClusterFuture", "CallrFuture", "BatchtoolsFuture"))) {
    stopifnot(length(msgs) == 0L)
  } else {
    stopifnot(identical(msgs, c("IM1\n", "IW", "IM2\n")))
  }

  message("- getting value")
  msgs <- recordMessages({
    v <- value(f)
  })
  message("  value: ", v)
  message(sprintf("  msgs [n=%d]: %s", length(msgs), paste(sQuote(msgs), collapse = ", ")))
  if (inherits(f, c("UniprocessFuture", "ClusterFuture"))) {
    stopifnot(identical(msgs, "M\n"))
  } else {
    stopifnot(identical(msgs, c("IM1\n", "IW", "IM2\n", "M\n")))
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
    fs[[1]] <- future({ immediateMessage("IM1"); Sys.sleep(0.1); message("M1"); immediateWarning("IW1"); 1L })
    fs[[2]] <- future({ immediateMessage("IM2"); Sys.sleep(0.1); message("M2"); immediateWarning("IW2"); 2L })
  })
  message("  class: ", paste(sQuote(class(fs[[1]])), collapse = ", "))
  message(sprintf("  msgs [n=%d]: %s", length(msgs), paste(sQuote(msgs), collapse = ", ")))
  if (inherits(fs[[1]], "UniprocessFuture")) {
    stopifnot(identical(msgs, c("IM1\n", "IW1", "IM2\n", "IW2")))
  } else {
    stopifnot(length(msgs) == 0L)
  }

  message("- check if resolved")
  msgs <- recordMessages({
    rs <- resolved(fs)
  })
  message("  result: ", paste(rs, collapse = ", "))
  message(sprintf("  msgs [n=%d]: %s", length(msgs), paste(sQuote(msgs), collapse = ", ")))
  if (inherits(f, "ClusterFuture")) {
    stopifnot(identical(msgs, c("IM1\n", "IM2\n")))
  } else {
    stopifnot(length(msgs) == 0L)
  }  

  message("- resolve w/out collecting results")
  msgs <- recordMessages({
    fs <- resolve(fs)
  })
  message(sprintf("  msgs [n=%d]: %s", length(msgs), paste(sQuote(msgs), collapse = ", ")))
  if (inherits(f, "ClusterFuture")) {
    stopifnot(identical(msgs, c("IW1", "IW2")))
  } else {
    stopifnot(length(msgs) == 0L)
  }  

  message("- resolve w/ collect results")
  msgs <- recordMessages({
    fs <- resolve(fs, result = TRUE)
  })
  message(sprintf("  msgs [n=%d]: %s", length(msgs), paste(sQuote(msgs), collapse = ", ")))
  if (inherits(fs[[1]], c("UniprocessFuture", "ClusterFuture", "CallrFuture", "BatchtoolsFuture"))) {
    stopifnot(length(msgs) == 0L)
  } else {
    stopifnot(identical(msgs, c("IM1\n", "IW1", "IM2\n", "IW2")))
  }

  message("- getting value")
  msgs <- recordMessages({
    vs <- value(fs)
  })
  message("  values: ", paste(vs, collapse = ", "))
  message(sprintf("  msgs [n=%d]: %s", length(msgs), paste(sQuote(msgs), collapse = ", ")))
  stopifnot(identical(msgs, c("M1\n", "M2\n")))
  
  message("- getting value again")
  msgs <- recordMessages({
    vs <- value(fs)
  })
  message("  values: ", paste(vs, collapse = ", "))
  message(sprintf("  msgs [n=%d]: %s", length(msgs), paste(sQuote(msgs), collapse = ", ")))
  stopifnot(identical(msgs, c("M1\n", "M2\n")))

  message("- getting values one by one")
  msgs <- recordMessages({
    vs <- c(
      value(fs[[1]]),
      value(fs[[2]])
    )
  })
  message("  values: ", paste(vs, collapse = ", "))
  stopifnot(identical(msgs, c("M1\n", "M2\n")))

  message("* Two futures ... DONE")

  message(sprintf("Immediate relay w/ %s ... done", names(strategies)[ss]))
} ## for (ss ...)

message("*** immediateCondition:s ... DONE")

source("incl/end.R")
