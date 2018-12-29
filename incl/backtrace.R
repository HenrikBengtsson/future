## Evaluate futures in parallel
plan(multiprocess)

my_log <- function(x) log(x)
foo <- function(...) my_log(...)

f <- future({ foo("a") })
res <- tryCatch({
  v <- value(f)
}, error = function(ex) {
  t <- backtrace(f)
  print(t)
})


#\dontshow{
## Make sure to "close" an multisession workers on Windows
plan(sequential)
#}
