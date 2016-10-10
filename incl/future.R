## Cluster futures gives an error on R CMD check on
## Windows (but not Linux or OS X) for unknown reasons.
## The same code works in package tests.
\donttest{
## Evaluate futures in parallel
plan(multiprocess)
}

## Data
x <- rnorm(100)
y <- 2*x + 0.2 + rnorm(100)
w <- 1 + x^2


## (1) Regular assignments (evaluated sequentially)
fitA <- lm(y ~ x, weights = w)      ## with offset
fitB <- lm(y ~ x - 1, weights = w)  ## without offset
fitC <- {
  w <- 1 + abs(x)  ## Different weights
  lm(y ~ x, weights = w)
}
print(fitA)
print(fitB)
print(fitC)


## (2) Future assignments (evaluated in parallel)
fitA %<-% lm(y ~ x, weights = w)      ## with offset
fitB %<-% lm(y ~ x - 1, weights = w)  ## without offset
fitC %<-% {
  w <- 1 + abs(x)
  lm(y ~ x, weights = w)
}
print(fitA)
print(fitB)
print(fitC)


## (3) Explicitly create futures (evaluated in parallel)
## and retrieve their values
fA <- future( lm(y ~ x, weights = w) )
fB <- future( lm(y ~ x - 1, weights = w) )
fC <- future({
  w <- 1 + abs(x)
  lm(y ~ x, weights = w)
})
fitA <- value(fA)
fitB <- value(fB)
fitC <- value(fC)
print(fitA)
print(fitB)
print(fitC)


## (4) Explit future assignments (evaluated in parallel)
futureAssign("fitA", lm(y ~ x, weights = w))
futureAssign("fitB", lm(y ~ x - 1, weights = w))
futureAssign("fitC", {
  w <- 1 + abs(x)
  lm(y ~ x, weights = w)
})
print(fitA)
print(fitB)
print(fitC)
