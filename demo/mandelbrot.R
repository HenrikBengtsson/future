library("future")
library("graphics")

plot_what_is_done <- function(counts) {
  for (kk in seq_along(counts)) {
    f <- counts[[kk]]

    ## Already plotted?
    if (!inherits(f, "Future")) next

    ## Not resolved?
    if (!resolved(f)) next

    message(sprintf("Plotting tile #%d of %d ...", kk, n))
    counts[[kk]] <- value(counts[[kk]])
    screen(kk)
    plot(counts[[kk]])
  }

  counts
}


## Options
region <- getOption("future.demo.mandelbrot.region", 1L)
if (!is.list(region)) {
  if (region == 1L) {
    region <- list(xmid = -0.75, ymid = 0.0, side = 3.0)
  } else if (region == 2L) {
    region <- list(xmid = 0.283, ymid = -0.0095, side = 0.00026)
  } else if (region == 3L) {
    region <- list(xmid = 0.282989, ymid = -0.01, side = 3e-8)
  }
}
nrow <- getOption("future.demo.mandelbrot.nrow", 3L)
resolution <- getOption("future.demo.mandelbrot.resolution", 400L)
delay <- getOption("future.demo.mandelbrot.delay", interactive())
if (isTRUE(delay)) {
  delay <- function(counts) Sys.sleep(rexp(1, rate = 2))
} else if (!is.function(delay)) {
  delay <- function(counts) {}
}

## Generate Mandelbrot tiles to be computed
Cs <- mandelbrot_tiles(xmid = region$xmid, ymid = region$ymid,
                       side = region$side, nrow = nrow,
                       resolution = resolution)
if (interactive()) {
  dev.new()
  plot.new()
  split.screen(dim(Cs))
  for (ii in seq_along(Cs)) {
    screen(ii)
    par(mar = c(0, 0, 0, 0))
    text(x = 1 / 2, y = 1 / 2, sprintf("Future #%d\nunresolved", ii), cex = 2)
  }
} else {
  split.screen(dim(Cs))
}


counts <- list()
n <- length(Cs)
for (ii in seq_len(n)) {
  message(sprintf("Mandelbrot tile #%d of %d ...", ii, n))
  C <- Cs[[ii]]

  counts[[ii]] <- future({
    message(sprintf("Calculating tile #%d of %d ...", ii, n))
    fit <- mandelbrot(C)

    ## Emulate slowness
    delay(fit)

    message(sprintf("Calculating tile #%d of %d ... done", ii, n))
    fit
  })

  ## Plot tiles that are already resolved
  counts <- plot_what_is_done(counts)
}


## Plot remaining tiles
repeat {
  counts <- plot_what_is_done(counts)
  if (!any(sapply(counts, FUN = inherits, "Future"))) break
}
  


close.screen()


message("SUGGESTION: Try to rerun this demo after changing strategy for how futures are resolved, e.g. plan(multiprocess).\n")
