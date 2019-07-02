source("incl/start.R")

options(future.debug = FALSE)

## WORKAROUND: capture.output() gained argument 'split' in R 3.3.0
if (getRversion() >= "3.3.0") {
  capture.output <- utils::capture.output 
} else {
  capture.output <- function(..., split = FALSE) utils::capture.output(...)
}

message("*** Relaying of standard output and conditions ...")

recordConditions <- function(expr, ..., parse = TRUE) {
  conditions <- list()
  withCallingHandlers(expr, condition = function(c) {
    attr(c, "received") <- Sys.time()
    conditions[[length(conditions) + 1L]] <<- c
  })
  conditions
}

recordRelay <- function(...) {
  stdout <- capture.output(conditions <- recordConditions(...), split = TRUE)
  if (length(stdout) > 0) stdout <- paste0(stdout, "\n")
  msgs <- sapply(conditions, FUN = conditionMessage)
  list(stdout = stdout, msgs = msgs)
}

strategies <- supportedStrategies()

for (ss in seq_along(strategies)) {
  strategy <- strategies[[ss]]
  message(sprintf("Relaying w/ %s ...", names(strategies)[ss]))
  plan(strategy)

  message("* A single future ...")

  message("- creating future")
  relay <- recordRelay({
    f <- future({
      cat("O\n")
      message("M")
      1L
    })
  })
  message("  class: ", paste(sQuote(class(f)), collapse = ", "))
  stopifnot(length(relay$stdout) == 0L)
  stopifnot(length(relay$msgs) == 0L)
  
  message("- checking if resolved")
  relay <- recordRelay({
    r <- resolved(f)
  })
  message("  result: ", r)
  stopifnot(length(relay$stdout) == 0L)
  stopifnot(length(relay$msgs) == 0L)

  message("- resolve w/ collecting results")
  relay <- recordRelay({
    f <- resolve(f, result = TRUE)
  })
  stopifnot(length(relay$stdout) == 0L)
  stopifnot(length(relay$msgs) == 0L)

  message("- resolve w/out collecting results")
  relay <- recordRelay({
    f <- resolve(f, result = FALSE)
  })
  stopifnot(length(relay$stdout) == 0L)
  stopifnot(length(relay$msgs) == 0L)

  message("- getting value")
  relay <- recordRelay({
    v <- value(f)
  })
  message("  value: ", v)
  stopifnot(identical(relay$stdout, "O\n"))
  stopifnot(identical(relay$msgs, "M\n"))
  
  message("- getting value again")
  relay <- recordRelay({
    v <- value(f)
  })
  message("  value: ", v)
  stopifnot(identical(relay$stdout, "O\n"))
  stopifnot(identical(relay$msgs, "M\n"))

  message("* A single future ... DONE")


  message("* Two futures ... ")

  message("- list of two futures")
  fs <- list()
  relay <- recordRelay({
    fs[[1]] <- future({ cat("O1\n"); message("M1"); 1L })
    fs[[2]] <- future({ cat("O2\n"); message("M2"); 2L })
  })
  message("  class: ", paste(sQuote(class(fs[[1]])), collapse = ", "))
  stopifnot(length(relay$stdout) == 0L)
  stopifnot(length(relay$msgs) == 0L)

  message("- check if resolved")
  relay <- recordRelay({
    rs <- resolved(fs)
  })
  message("  result: ", paste(rs, collapse = ", "))
  stopifnot(length(relay$stdout) == 0L)
  stopifnot(length(relay$msgs) == 0L)

  message("- resolve w/ collecting results")
  relay <- recordRelay({
    fs <- resolve(fs, result = FALSE)
  })
  str(relay)
  stopifnot(length(relay$stdout) == 0L)
  stopifnot(length(relay$msgs) == 0L)

  message("- resolve w/out collecting results")
  relay <- recordRelay({
    fs <- resolve(fs, result = TRUE)
  })
  str(relay)
  stopifnot(length(relay$stdout) == 0L)
  stopifnot(length(relay$msgs) == 0L)

  message("- getting value")
  relay <- recordRelay({
    vs <- values(fs)
  })
  message("  values: ", paste(vs, collapse = ", "))
  str(relay)
  stopifnot(identical(relay$stdout, c("O1\n", "O2\n")))
  stopifnot(identical(relay$msgs, c("M1\n", "M2\n")))
  
  message("- getting value again")
  relay <- recordRelay({
    vs <- values(fs)
  })
  message("  values: ", paste(vs, collapse = ", "))
  str(relay)
  stopifnot(identical(relay$stdout, c("O1\n", "O2\n")))
  stopifnot(identical(relay$msgs, c("M1\n", "M2\n")))

  message("* Two futures ... DONE")


  message("* Two futures - out of order  ... ")

  message("- list of two futures")
  fs <- list()
  relay <- recordRelay({
    fs[[1]] <- future({ cat("O1\n"); Sys.sleep(1); message("M1"); 1L })
    fs[[2]] <- future({ cat("O2\n"); message("M2"); 2L })
  })
  message("  class: ", paste(sQuote(class(fs[[1]])), collapse = ", "))
  stopifnot(length(relay$stdout) == 0L)
  stopifnot(length(relay$msgs) == 0L)

  message("- getting value")
  relay <- recordRelay({
    vs <- values(fs)
  })
  message("  values: ", paste(vs, collapse = ", "))
  str(relay)
  stopifnot(identical(relay$stdout, c("O1\n", "O2\n")))
  stopifnot(identical(relay$msgs, c("M1\n", "M2\n")))
  
  message("- getting value again")
  relay <- recordRelay({
    vs <- values(fs)
  })
  message("  values: ", paste(vs, collapse = ", "))
  str(relay)
  stopifnot(identical(relay$stdout, c("O1\n", "O2\n")))
  stopifnot(identical(relay$msgs, c("M1\n", "M2\n")))

  message("* Two futures - out of order ... DONE")

  message(sprintf("Relaying w/ %s ... DONE", names(strategies)[ss]))
} ## for (ss ...)

message("*** Relaying of standard output and conditions ... DONE")

source("incl/end.R")
