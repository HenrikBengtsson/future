printf <- function(...) cat(sprintf(...))
whichIndex <- future:::whichIndex

message("*** whichIndex() ...")

dims <- list(
  c(1),
  c(1,1),
  c(2),
  c(2,1),
  c(3,4,3)
)

for (dim in dims) {
  printf("Dimensions: (%s)\n", paste(dim, collapse=", "))
  dimnames <- lapply(dim, FUN=function(n) letters[seq_len(n)])
  X <- array(seq_len(prod(dim)), dim=dim, dimnames=dimnames)
  print(X)

  idxs <- unique(round(seq(from=1L, to=length(X), length.out=5)))
  print(idxs)
  stopifnot(all(X[idxs] == idxs))

  ## By dimindices
  I <- arrayInd(idxs, .dim=dim(X))
  print(I)

  idxs2 <- whichIndex(I, dim=dim(X))
  print(idxs2)
  stopifnot(all(idxs2 == idxs))

  ## By dimnames
  N <- array(NA_character_, dim=dim(I))
  for (kk in seq_len(ncol(N))) {
    N[,kk] <- dimnames[[kk]][I[,kk]]
  }
  print(N)

  idxs3 <- whichIndex(N, dim=dim(X), dimnames=dimnames(X))
  print(idxs3)
  stopifnot(all(idxs3 == idxs))
}


## Exceptions
dim <- c(2,3)
ndim <- length(dim)
dimnames <- lapply(dim, FUN=function(n) letters[seq_len(n)])

I <- matrix(c(1,1,2,4), ncol=ndim)
res <- try(idxs <- whichIndex(I, dim=dim, dimnames=dimnames), silent=TRUE)
stopifnot(inherits(res, "try-error"))

I <- matrix(c(0,0), ncol=ndim)
res <- try(idxs <- whichIndex(I, dim=dim, dimnames=dimnames), silent=TRUE)
stopifnot(inherits(res, "try-error"))

I <- matrix(c("a","q"), ncol=ndim)
res <- try(idxs <- whichIndex(I, dim=dim, dimnames=dimnames), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** whichIndex() ... DONE")
