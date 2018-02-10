source("incl/start,load-only.R")

message("*** fold() ...")

x1s <- list(
  a = NULL,
  b = 1,
  c = c(a = 1, b = 2),
  d = 1:10e3
)

x2s <- lapply(x1s, FUN = as.list)
names(x2s) <- toupper(names(x1s))

x3s <- list(
  E = data.frame(a = 1:3),
  F = data.frame(a = 1:3, b = letters[1:3])
)

xs <- c(x1s, x2s, x3s)


fcns <- list("c" = base::c, "cbind" = base::cbind)
for (kk in seq_along(xs)) {
  x_name <- names(xs)[kk]
  for (fcn_name in names(fcns)) {
    fcn <- fcns[[fcn_name]]
    message(sprintf(" - #%d. %s(x[['%s']]) ...", kk, fcn_name, x_name))
    x <- xs[[kk]]
    str(list(x = x))
    
    y0 <- Reduce(x, f = fcn)
    y1 <- fold(x, f = fcn)
    y2 <- fold(x, f = fcn, unname = FALSE)
    str(list(y0 = y0, y1 = y1, y2 = y2))
    stopifnot(all.equal(unname(y1), unname(y0)))
    stopifnot(all.equal(unname(y2), unname(y0)))
    if (!fcn_name %in% "cbind") {
      stopifnot(all.equal(y1, y0))
      stopifnot(all.equal(y2, y0))
    }
    
    y0 <- Reduce(x, f = fcn, right = TRUE)
    y1 <- fold(x, f = fcn, left = FALSE)
    y2 <- fold(x, f = fcn, left = FALSE, unname = FALSE)
    str(list(y0 = y0, y1 = y1, y2 = y2))
    stopifnot(all.equal(unname(y1), unname(y0)))
    stopifnot(all.equal(unname(y2), unname(y0)))
    if (!fcn_name %in% "cbind") {
      stopifnot(all.equal(y1, y0))
      stopifnot(all.equal(y2, y0))
    }
    
    message(sprintf(" - #%d. %s(x[['%s']]) ... DONE", kk, fcn_name, x_name))
  }
}


make_table <- function(n) data.frame(key = sample(n), value = sample(n))

sizes <- rep(10, 20)

set.seed(3180)
tables <- lapply(sizes, make_table)

key_merge <- function(x, y) merge(x, y, by = "key", all = FALSE)

suppressWarnings(
folded <- fold(tables, key_merge, left = TRUE, unname = FALSE,
               threshold = 6L)
)

suppressWarnings(
reduced <- Reduce(key_merge, tables[-1], tables[[1]])
)

stopifnot(all.equal(unname(folded), unname(reduced)))

message("*** fold() ... DONE")

source("incl/end.R")
