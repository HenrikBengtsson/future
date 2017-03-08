source("incl/start.R")

## Test adopted from http://stackoverflow.com/questions/42561088/nested-do-call-within-a-foreach-dopar-environment-cant-find-function-passed-w

message("*** future_lapply() with tricky globals ...")

strategies <- supportedStrategies()

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
    do.call(caller, args = c(list(a = i, b = i+1L), args))
  })
  results
}

strategies <- future:::supportedStrategies()
strategies <- setdiff(strategies, "lazy")

y0 <- NULL
for (strategy in strategies) {
  plan(strategy)

  y <- main(1:10)
  if (is.null(y0)) y0 <- y
  stopifnot(identical(y, y0))
}

message("*** future_lapply() with tricky globals ... DONE")

source("incl/end.R")

