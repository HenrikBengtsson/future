## From R.utils 2.0.2 (2015-05-23)
hpaste <- function(..., sep="", collapse=", ", lastCollapse=NULL, maxHead=if (missing(lastCollapse)) 3 else Inf, maxTail=if (is.finite(maxHead)) 1 else Inf, abbreviate="...") {
  if (is.null(lastCollapse)) lastCollapse <- collapse

  # Build vector 'x'
  x <- paste(..., sep=sep)
  n <- length(x)

  # Nothing todo?
  if (n == 0) return(x)
  if (is.null(collapse)) return(x)

  # Abbreviate?
  if (n > maxHead + maxTail + 1) {
    head <- x[seq(length=maxHead)]
    tail <- rev(rev(x)[seq(length=maxTail)])
    x <- c(head, abbreviate, tail)
    n <- length(x)
  }

  if (!is.null(collapse) && n > 1) {
    if (lastCollapse == collapse) {
      x <- paste(x, collapse=collapse)
    } else {
      xT <- paste(x[1:(n-1)], collapse=collapse)
      x <- paste(xT, x[n], sep=lastCollapse)
    }
  }

  x
} # hpaste()


trim <- function(s) {
  sub("[\t\n\f\r ]+$", "", sub("^[\t\n\f\r ]+", "", s))
} # trim()


whichIndex <- function(I, dim, dimnames=NULL) {
  ndim <- length(dim)
  stopifnot((is.matrix(I) || is.data.frame(I)), ncol(I) == ndim)
  if (!is.null(dimnames)) stopifnot(length(dimnames) == ndim)
  if (ndim == 0L) return(integer(0L))

  if (is.data.frame(I)) {
    ## Convert each column to indices
    I2 <- array(NA_integer_, dim=dim(I))
    for (kk in 1:ndim) {
      idxs <- I[[kk]]
      if (is.character(idxs)) {
        idxs <- match(idxs, dimnames[[kk]])
        if (anyNA(idxs)) {
          unknown <- I[is.na(idxs),kk]
          stop("Unknown indices: ", hpaste(sQuote(unknown)))
        }
      } else {
        if (any(idxs < 1 | idxs > dim[kk])) {
          stop("Index out of range.")
        }
      }
      I2[,kk] <- idxs
    }
    I <- I2
    I2 <- NULL
  } else if (is.numeric(I)) {
    for (kk in 1:ndim) {
      idxs <- I[,kk]
      if (any(idxs < 1 | idxs > dim[kk])) {
        stop("Index out of range.")
      }
    }
  } else {
    ## Convert dimnames to dimindices
    I2 <- array(NA_integer_, dim=dim(I))
    for (kk in 1:ndim) {
      ## Could be, say, factor
      idxs <- I[,kk]
      idxs <- as.character(idxs)
      idxs <- match(idxs, dimnames[[kk]])
      if (anyNA(idxs)) {
        unknown <- I[is.na(idxs),kk]
        stop("Unknown indices: ", hpaste(sQuote(unknown)))
      }
      I2[,kk] <- idxs
    }
    I <- I2
    I2 <- NULL
  }

  ## Nothing more to do?
  if (ndim == 1) return(I[,1L])

  base <- cumprod(dim[-ndim])
  for (kk in 2:ndim) {
    I[,kk] <- (I[,kk]-1) * base[kk-1L]
  }
  rowSums(I)
}
