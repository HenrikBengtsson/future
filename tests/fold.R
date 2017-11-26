source("incl/start,load-only.R")

message("*** fold() ...")

xs <- list(
  A = NULL,
  B = 1,
  C = 1:2,
  D = 1:10e3
)
xs <- c(xs, lapply(xs, FUN = as.list))

for (kk in seq_along(xs)) {
  message(sprintf(" - #%d ...", kk))
  x <- xs[[kk]]
  str(list(x = x))
  y0 <- Reduce(x, f = c)
  y1 <- future::fold(x, f = c)
  str(list(y0 = y0, y1 = y1))
  stopifnot(all.equal(y1, y0))
  
  y0 <- Reduce(x, f = c, right = TRUE)
  y1 <- future::fold(x, f = c, left = FALSE)
  str(list(y0 = y0, y1 = y1))
  stopifnot(all.equal(y1, y0))
  message(sprintf(" - #%d ... DONE", kk))
}

message("*** fold() ... DONE")

source("incl/end.R")
