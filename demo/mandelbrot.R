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
  counts <- matrix(maxIter+1L, nrow=nx, ncol=ny)
  dim <- dim(counts)

  ## But as a start, flag the to all be non-diverged
  nonDiverged <- rep(TRUE, times=nx*ny)
  idxOfNonDiverged <- seq_along(nonDiverged)

  ## Set of complex numbers to be investigated
  C <- outer(x, y, FUN=function(x,y) complex(real=x, imag=y))

  ## SPEEDUP: The Mandelbrot sequence will only be calculated on the
  ## "remaining set" of complex numbers that yet hasn't diverged.
  sC <- C ## The Mandelbrot sequence of the "remaining" set
  Cr <- C ## The original complex number of the "remaining" set

  for(ii in seq_len(maxIter)) {
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


library("future")
library("listenv")

center <- c(0.282989, -0.010)
sizes <- 2 * 10^-(0:8)

counts <- listenv()
for (ii in seq_along(sizes)) {
  cat(sprintf("Mandelbrot plane #%d of %d ...\n", ii, length(sizes)))
  size <- sizes[ii]
  counts[[ii]] %<=% {
    cat("Calculating ...")
    xlim <- center[1] + size/2 * c(-1,1)
    ylim <- center[2] + size/2 * c(-1,1)
    fit <- mandelbrot(xlim=xlim, ylim=ylim)
    cat("\n")
    fit
  }
}

## Plot
oopts <- options(preferRaster=TRUE) ## Faster plotting, iff supported
layout(matrix(1:9, nrow=3L, ncol=3L, byrow=TRUE))
opar <- par(mar=c(0,0,0,0))
for (ii in seq_along(counts)) {
  cat(sprintf("Plotting plane #%d of %d ...\n", ii, length(sizes)))
  image(counts[[ii]], axes=FALSE)
  box(lwd=3)
}
par(opar)
options(oopts)

message("SUGGESTION: Try to rerun this demo after changing strategy for how futures are resolved, e.g. plan(lazy).\n")
