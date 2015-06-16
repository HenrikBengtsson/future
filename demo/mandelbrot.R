#' Mandelbrot convergence counts
#'
#' @param xlim,ylim  Range of values for which convergence counts
#'                   should be calculated.
#' @param resolution Number of bins along the real axis.  The number
#'                   of bins along the imaginary axis will be such
#'                   that the aspect ratio is preserved.
#' @param maxIter    Maximum number of iterations per bin.
#' @param tau        A threshold; the radius when calling
#'                   divergence (Mod(z) > tau).
#'
#' @return Returns an integer matrix of non-negative counts
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
sizes <- c(2, 0.2, 0.02, 0.002, 0.0002, 0.00002, 0.000002)

counts <- listenv()
for (ii in seq_along(sizes)) {
  cat(sprintf("Calculating set #%d of %d...\n", ii, length(sizes)))
  size <- sizes[ii]
  counts[[ii]] %<=% {
    xlim <- center[1] + size/2 * c(-1,1)
    ylim <- center[2] + size/2 * c(-1,1)
    mandelbrot(xlim=xlim, ylim=ylim)
  }
}

## Plot
for (ii in seq_along(counts)) {
  cat(sprintf("Plotting set #%d of %d...\n", ii, length(sizes)))
  opar <- par(mar=c(0,0,0,0), ask=TRUE)
  image(counts[[ii]], axes=FALSE)
  par(opar)
}


### FIXME: Note that plan(lazy) will use the most recent set of
### global variables.  This is actually a good argument for that
### the 'future' package should also handle globals, i.e. it
### should "freeze" the globals when the 'lazy future' is created
### and not when it is resolved. /HB 2015-06-15
### message("SUGGESTION: Try to rerun this demo using after changing strategy for how futures are resolved, e.g. plan(lazy).\n")
