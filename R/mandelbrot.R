#' Mandelbrot convergence counts
#'
#' @param x,y,side   Center location and the length of sides of the
#'                   complex plane for which convergence counts
#'                   should be calculated.
#' @param resolution Number of bins along each axis.
#' @param maxIter    Maximum number of iterations per bin.
#' @param tau        A threshold; the radius when calling
#'                   divergence (Mod(z) > tau).
#'
#' @return Returns an integer matrix (of class Mandelbrot) with
#  non-negative counts.
#'
#' @examples
#' counts <- mandelbrot(x=-0.75, y=0, side=3)
#' plot(counts)
#' 
#' \dontrun{
#' demo("mandelbrot", package="future", ask=FALSE)
#' }
#'
#' @author This \code{mandelbrot()} function was inspired by and
#' adopted from similar GPL code of Martin Maechler (available
#' from ftp://stat.ethz.ch/U/maechler/R/ on 2005-02-18 [sic!]).
#'
#' @aliases as.raster.Mandelbrot plot.Mandelbrot
#' @export
#'
#' @keywords internal
mandelbrot <- function(x=-0.75, y=0, side=3, resolution=400L, maxIter=200L, tau=2) {
  ## Validate arguments
  stopifnot(side > 0) 
  resolution <- as.integer(resolution)
  stopifnot(resolution > 0)

  maxIter <- as.integer(maxIter)
  stopifnot(maxIter > 0)

  ## The nx-by-ny bins
  nx <- ny <- resolution

  ## Setup (x,y) bins
  xrange <- x + c(-1,1)*side/2
  yrange <- y + c(-1,1)*side/2
  x <- seq(from=xrange[1], to=xrange[2], length.out=nx)
  y <- seq(from=yrange[1], to=yrange[2], length.out=ny)

  ## By default, assume none of the elements will converge
  counts <- matrix(maxIter, nrow=ny, ncol=nx)
  dim <- dim(counts)

  ## But as a start, flag the to all be non-diverged
  nonDiverged <- rep(TRUE, times=nx*ny)
  idxOfNonDiverged <- seq_along(nonDiverged)

  ## Set of complex numbers to be investigated
  C <- outer(y, x, FUN=function(y,x) complex(real=x, imaginary=y))

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

  attr(counts, "params") <- list(x=x, y=y, side=side, xrange=xrange, yrange=yrange, nx=nx, ny=ny, maxIter=maxIter, resolution=resolution)

  class(counts) <- c("Mandelbrot", class(counts))
  
  counts
} ## mandelbrot()


#' @export
#' @importFrom grDevices as.raster hsv
#' @keywords internal
as.raster.Mandelbrot <- function(x, ...) {
  maxIter <- attr(x, "params")$maxIter
  img <- hsv(h=x/maxIter, s=1, v=1)
  img[x == maxIter] <- "#000000"
  dim(img) <- dim(x)
  img <- t(img)
  img <- structure(img, class="raster")
  img
} ## as.raster()


#' @export
#' @importFrom grDevices as.raster
#' @importFrom graphics plot
#' @keywords internal
plot.Mandelbrot <- function(x, y, ...) {
  plot(as.raster(x), ...)
}
