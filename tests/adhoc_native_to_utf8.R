source("incl/start.R")

adhoc_native_to_utf8 <- future:::adhoc_native_to_utf8

message("*** adhoc_native_to_utf8( ) ...")

strings <- c(
       "[x] hello" = "[x] hello",
    "\u2713 hello" = "<U+2713> hello",
  "'\u2713 hello'" = "'<U+2713> hello'",
  '"\u2713 hello"' = '"<U+2713> hello"'
)

for (kk in seq_along(strings)) {
  message(sprintf("Test case #%d:", kk))
  truth  <- names(strings)[kk]
  input  <- strings[[kk]]
  output <- adhoc_native_to_utf8(input)
  message(sprintf(" -  input: %s", input))
  message(sprintf(" - output: %s", output))
  message(sprintf(" -  truth: %s", truth))
  ## NOTE: Not all MS Windows environment support UTF-8.  Then
  ## the above does not work and input == truth
  stopifnot(identical(input, truth) || identical(output, truth))
}

message("*** adhoc_native_to_utf8( ) ... DONE")

source("incl/end.R")
