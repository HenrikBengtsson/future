library("future")

message("*** fv_apply() ...")

f_apply <- function(X, MARGIN, FUN, ...) {
  apply(X=X, MARGIN=MARGIN, FUN=futurize(FUN), ...)
}

fv_apply <- function(X, MARGIN, FUN, ...) {
  values(f_apply(X=X, MARGIN=MARGIN, FUN=FUN, ...))
}

x <- cbind(x1 = 3, x2 = c(4:1, 2:5))
dimnames(x)[[1]] <- letters[1:8]

y <- apply(x, MARGIN=2L, FUN=mean, trim=0.2)
print(y)
y2 <- simplify(fv_apply(x, MARGIN=2L, FUN=mean, trim=0.2))
print(y2)
stopifnot(identical(y2, y))

y <- apply(x, MARGIN=2L, FUN=var)
print(y)
y2 <- simplify(fv_apply(x, MARGIN=2L, FUN=var))
print(y2)
stopifnot(identical(y2, y))


message("*** fv_lapply() ...")

f_lapply <- function(X, FUN, ...) {
  lapply(X=X, FUN=futurize(FUN), ...)
}

fv_lapply <- function(X, FUN, ...) {
  values(f_lapply(X=X, FUN=FUN, ...))
}

y <- lapply(1:5, FUN=seq_len)
print(y)
y2 <- fv_lapply(1:5, FUN=seq_len)
print(y2)
stopifnot(identical(y2, y))


message("*** fv_mapply() ...")

f_mapply <- function(FUN, ...) {
  mapply(FUN=futurize(FUN), ...)
}

fv_mapply <- function(FUN, ...) {
  values(f_mapply(FUN=FUN, ...))
}

y <- mapply(1:5, 1:5, FUN=`*`)
print(y)
y2 <- simplify(fv_mapply(1:5, 1:5, FUN=`*`))
print(y2)
stopifnot(identical(y2, y))


message("*** fv_tapply() ...")

f_tapply <- function(X, INDEX, FUN, ...) {
  tapply(X=X, INDEX=INDEX, FUN=futurize(FUN), ...)
}

fv_tapply <- function(X, INDEX, FUN, ...) {
  values(f_tapply(X=X, INDEX=INDEX, FUN=FUN, ...))
}


message("*** fv_outer() ...")

f_outer <- function(X, Y, FUN, ..., vectorize=TRUE) {
  outer(X=X, Y=Y, FUN=futurize(FUN, vectorize=vectorize), ...)
}

fv_outer <- function(X, Y, FUN, ...) {
  values(f_outer(X=X, Y=Y, FUN=FUN, ...))
}

x <- 2:3
y <- outer(x, x, FUN=`*`)
print(y)
#y2 <- simplify(fv_outer(x, x, FUN=`*`, vectorize=TRUE))
#print(y2)
#stopifnot(identical(y2, y))

y2 <- simplify(fv_outer(x, x, FUN=function(a,b) a*b, vectorize=TRUE))
