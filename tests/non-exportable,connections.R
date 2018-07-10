source("incl/start.R")

message("*** Non-exportable globals ...")

options(future.globals.onReference = "warning")
plan(multisession, workers = 2L)


message("* R connections ...")

tmp_file <- tempfile()
con <- file(tmp_file, open = "wb")
cat("hello\n", file = con)
flush(con)
bfr <- readLines(con = tmp_file)
print(bfr)
stopifnot(bfr == "hello")

message("- Run-time error")

## Assert we can detect the reference
res <- tryCatch({
  f <- future(cat("world\n", file = con), stdout = NA)
}, FutureWarning = identity)
print(res)
stopifnot(inherits(res, "FutureWarning"),
          grepl("non-exportable reference", conditionMessage(res)))

## ISSUE: When using stdout = TRUE/FALSE below, a connection will be opened
## on the worker (due to sink:ing), which then will be hijacked by the
## global 'con' connection in the below expression.  Because of this, we
## have to test with stdout = NA.
f <- future(cat("world\n", file = con), stdout = NA)
res <- tryCatch({
  v <- value(f)
}, error = identity)
print(res)
stopifnot(inherits(res, "error"))
## Nothing changed
bfr <- readLines(con = tmp_file)
print(bfr)
stopifnot(bfr == "hello")

close(con)
file.remove(tmp_file)

message("* R connections ... DONE")


message("*** Non-exportable globals ... DONE")

source("incl/end.R")
