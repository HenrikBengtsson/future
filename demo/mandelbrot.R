#' Mandelbrot convergence counts
#'
#' @param xlim,ylim  The complex plane for which convergence counts
#'                   should be calculated.
#' @param resolution Number of bins along the real axis.  The number
#'                   of bins along the imaginary axis will be such
#'                   that the aspect ratio is preserved.
#' @param maxIter    Maximum number of iterations per bin.
#' @param tau        A threshold; the radius when calling
#'                   divergence (Mod(z) > tau).
#'
#' @return Returns an integer matrix of non-negative counts
#'
#' @author This \code{mandelbrot()} function was inspired by and
#' adopted from similar GPL code of Martin Maechler (available
#' from ftp://stat.ethz.ch/U/maechler/R/ on 2005-02-18 [sic!]).
mandelbrot <- function(xlim=c(-2, 0.5), ylim=c(-1,1), resolution=400L, maxIter=200L, tau=2) {
  ## Validate arguments
  dx <- diff(xlim)
  dy <- diff(ylim)
  stopifnot(dx > 0, dy > 0)

  resolution <- as.integer(resolution)
  stopifnot(resolution > 0)

  maxIter <- as.integer(maxIter)
  stopifnot(maxIter > 0)

  ## The nx-by-ny bins
  nx <- resolution
  ny <- round((dy / dx) * resolution)

  ## Setup (x,y) bins
  x <- seq(from=xlim[1], to=xlim[2], length.out=nx)
  y <- seq(from=ylim[1], to=ylim[2], length.out=ny)

  ## By default, assume none of the elements will converge
  counts <- matrix(maxIter, nrow=ny, ncol=nx)
  dim <- dim(counts)

  ## But as a start, flag the to all be non-diverged
  nonDiverged <- rep(TRUE, times=nx*ny)
  idxOfNonDiverged <- seq_along(nonDiverged)

  ## Set of complex numbers to be investigated
  C <- outer(y, x, FUN=function(y,x) complex(real=x, imag=y))

  ## SPEEDUP: The Mandelbrot sequence will only be calculated on the
  ## "remaining set" of complex numbers that yet hasn't diverged.
  sC <- C ## The Mandelbrot sequence of the "remaining" set
  Cr <- C ## The original complex number of the "remaining" set

  for (ii in seq_len(maxIter-1L)) {
    sC <- sC*sC + Cr

    ## Did any of the "remaining" points diverge?
    diverged <- (Mod(sC) > tau)
    if (any(diverged)) {
      ## Record at what iteration divergence occurred
      counts[idxOfNonDiverged[diverged]] <- ii

      ## Early stopping?
      keep <- which(!diverged)
      if (length(keep) == 0) break

      ## Drop from remain calculations
      idxOfNonDiverged <- idxOfNonDiverged[keep]
      nonDiverged[nonDiverged] <- !diverged

      ## Update the "remaining" set of complex numbers
      sC <- sC[keep]
      Cr <- Cr[keep]
    }
  }

  attr(counts, "params") <- list(xlim=xlim, ylim=ylim, nx=nx, ny=ny, maxIter=maxIter, resolution=resolution)

  counts
} # mandelbrot()

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


library("future")
library("listenv")
library("graphics")

## Let's open an empty device already here
if (interactive()) { dev.new(); plot.new() }

n <- prod(tiles())
sizes <- 2 * 6^-seq(from=0,to=15,length.out=n)
xs <- rep(0.28298899997142857, times=n)
xs[1] <- xs[1] - 0.8
ys <- rep(-0.010, times=n)

counts <- listenv()
for (ii in seq_along(sizes)) {
  cat(sprintf("Mandelbrot tile #%d of %d ...\n", ii, length(sizes)))
  size <- sizes[ii]
  counts[[ii]] %<-% {
    cat(sprintf("Calculating tile #%d of %d ...\n", ii, length(sizes)))
    xlim <- xs[ii] + size/2 * c(-1,1)
    ylim <- ys[ii] + size/2 * c(-1,1)
    cat(sprintf("  xlim=c(%.16f,%.16f)\n", xlim[1], xlim[2]))
    cat(sprintf("  ylim=c(%.16f,%.16f)\n", ylim[1], ylim[2]))
    fit <- mandelbrot(xlim=xlim, ylim=ylim)
    cat(sprintf("Calculating tile #%d of %d ... done\n", ii, length(sizes)))
    fit
  }
}

## Plot as each tile gets ready
split.screen(rep(max(tiles()), times=2)) ## Square aspect ratio
resolved <- logical(length(counts))
while (!all(resolved)) {
  for (ii in which(!resolved)) {
    if (!resolved(futureOf(counts[[ii]]))) next
    cat(sprintf("Plotting tile #%d of %d ...\n", ii, length(sizes)))
    screen(ii)
    opar <- par(mar=c(0,0,0,0))
    img <- structure({
      x <- counts[[ii]]
      maxIter <- attr(x, "params")$maxIter
      img <- hsv(h=x/maxIter, s=1, v=1)
      img[x == maxIter] <- "#000000"
      dim(img) <- dim(x)
      t(img)
    }, class="raster")
    plot(img)
    box(lwd=3)
    par(opar)
    resolved[ii] <- TRUE
  } # for (ii ...)

  ## Wait a bit before checking again
  if (!all(resolved)) Sys.sleep(1.0)
} # while (...)

close.screen()


message("SUGGESTION: Try to rerun this demo after changing strategy for how futures are resolved, e.g. plan(lazy).\n")
