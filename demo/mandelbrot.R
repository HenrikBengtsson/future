library("future")
library("listenv")
library("graphics")

tiles <- function(n=getOption("R_FUTURE_DEMO_MANDELBROT_TILES", availableCores())) {
  if (n <= 4) {
    tiles <- c(2, 2)
  } else if (n <= 6) {
    tiles <- c(2, 3)
  } else if (n <= 9) {
    tiles <- c(3, 3)
  } else if (n <= 12) {
    tiles <- c(3, 4)
  } else if (n <= 16) {
    tiles <- c(4, 4)
  } else {
    tiles <- c(5, 5)
  }
  tiles
} # tiles()


## Let's open an empty device already here
if (interactive()) {
  dev.new()
  plot.new()
  opar <- par(mar=c(0,0,0,0))
  split.screen(rep(max(tiles()), times=2))
  for (ii in seq_len(prod(tiles()))) {
    screen(ii)
    text(x=1/2, y=1/2, sprintf("Future #%d\nunresolved", ii), cex=2)
    box(lwd=3)
  }
} else {
  split.screen(rep(max(tiles()), times=2))
}

n <- prod(tiles())
sides <- 2 * 6^-seq(from=0, to=15, length.out=n)
xs <- rep(0.28298899997142857, times=n)
xs[1] <- xs[1] - 0.8
ys <- rep(-0.010, times=n)

counts <- listenv()
for (ii in seq_len(n)) {
  cat(sprintf("Mandelbrot tile #%d of %d ...\n", ii, n))
  counts[[ii]] %<-% {
    cat(sprintf("Calculating tile #%d of %d ...\n", ii, n))
    cat(sprintf("  (x,y)=c(%.16f,%.16f)\n", xs[ii], ys[ii]))
    cat(sprintf("  side=%.16f\n", sides[ii]))
    fit <- mandelbrot(x=xs[ii], y=ys[ii], side=sides[ii])
    cat(sprintf("Calculating tile #%d of %d ... done\n", ii, n))
    fit
  }
}


## Plot as each tile gets ready
resolved <- logical(length(counts))
while (!all(resolved)) {
  for (ii in which(!resolved)) {
    if (!resolved(futureOf(counts[[ii]]))) next
    cat(sprintf("Plotting tile #%d of %d ...\n", ii, n))
    screen(ii)
    opar <- par(mar=c(0,0,0,0))
    plot(counts[[ii]])
    box(lwd=3)
    par(opar)
    resolved[ii] <- TRUE
  } # for (ii ...)

  ## Wait a bit before checking again
  if (!all(resolved)) Sys.sleep(0.1)
} # while (...)

close.screen()


message("SUGGESTION: Try to rerun this demo after changing strategy for how futures are resolved, e.g. plan(lazy).\n")
