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
  X <- array(seq_len(prod(dim)), dim=dim)
  idxs <- unique(round(seq(from=1L, to=length(X), length.out=5)))
  print(idxs)
  stopifnot(all(X[idxs] == idxs))
  I <- arrayInd(idxs, .dim=dim(X))
  print(I)
  idxs2 <- whichIndex(I, dim=dim(X))
  print(idxs)
  stopifnot(all(idxs2 == idxs))
}

message("*** whichIndex() ... DONE")
