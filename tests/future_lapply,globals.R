source("incl/start.R")

message("*** future_lapply() - globals ...")

plan(cluster, workers = "localhost")

options(future.debug = FALSE)
a <- 1
b <- 2

globals_set <- list(
  A = FALSE,
  B = TRUE,
  C = c("a", "b"),
  D = list(a = 2, b = 3)
)

x <- list(1)
y_truth <- list(A = NULL, B = list(1), C = list(1), D = list(2))
str(y_truth)

for (name in names(globals_set)) {
  globals <- globals_set[[name]]
  message("Globals set ", sQuote(name))
  y <- tryCatch({
    future_lapply(x, FUN = function(x) {
      median(c(x, a, b))
    }, future.globals = globals, future.packages = "utils")
  }, error = identity)
  print(y)
  stopifnot((name == "A" && inherits(y, "error")) || 
             identical(y, y_truth[[name]]))
}

message("*** future_lapply() - globals ... DONE")



## Test adopted from http://stackoverflow.com/questions/42561088/nested-do-call-within-a-foreach-dopar-environment-cant-find-function-passed-w

message("*** future_lapply() - tricky globals ...")

my_add <- function(a, b) a + b

call_my_add <- function(a, b) {
  do.call(my_add, args = list(a = a, b = b))
}

call_my_add_caller <- function(a, b, FUN = call_my_add) {
  do.call(FUN, args = list(a = a, b = b))
}

main <- function(x = 1:2, caller = call_my_add_caller,
                 args = list(FUN = call_my_add)) {
  results <- future_lapply(x, FUN = function(i) {
    do.call(caller, args = c(list(a = i, b = i + 1L), args))
  })
  results
}

x <- list(list(1:2))
z_length <- lapply(x, FUN = do.call, what = length)
fun <- function(...) sum(...)
z_fun <- lapply(x, FUN = do.call, what = fun)

y0 <- NULL
for (strategy in supportedStrategies()) {
  plan(strategy)

  y <- main(1:3)
  if (is.null(y0)) y0 <- y
  stopifnot(identical(y, y0))

  ## BUG FIXES in globals (>= 0.10.0)
  if (packageVersion("globals") >= "0.10.0") {
    message("- future_lapply(x, FUN = do.call, ...) ...")
    z <- future_lapply(x, FUN = do.call, what = length)
    stopifnot(identical(z, z_length))
    z <- future_lapply(x, FUN = do.call, what = fun)
    stopifnot(identical(z, z_fun))
  }
}

message("*** future_lapply() - tricky globals ... DONE")

message("*** future_lapply() - globals exceptions ...")

res <- tryCatch({
  y <- future_lapply(1, FUN = function(x) x, future.globals = 42)
}, error = identity)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  y <- future_lapply(1, FUN = function(x) x, future.globals = list(1))
}, error = identity)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  y <- future_lapply(1, FUN = function(x) x, future.globals = "...future.FUN")
}, error = identity)
stopifnot(inherits(res, "error"))

message("*** future_lapply() - globals exceptions ... DONE")

source("incl/end.R")
