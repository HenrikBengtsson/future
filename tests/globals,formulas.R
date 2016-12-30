source("incl/start.R")

library("datasets") ## cars data set
library("stats")    ## lm(), poly(), xtabs()

strategies <- supportedStrategies()
strategies <- setdiff(strategies, "multiprocess")

message("*** Globals - formulas ...")

message("*** Globals - lm(<formula>) ...")

## From example("lm", package="stats")
ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
group <- gl(2, 10, 20, labels = c("Ctl","Trt"))
weight <- c(ctl, trt)

## Truth:
fit0 <- lm(weight ~ group - 1)
print(fit0)

for (cores in 1:min(3L, availableCores())) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  message("availableCores(): ", availableCores())

  for (strategy in strategies) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)

    ## Explicit future
    f <- future({ lm(weight ~ group - 1) })
    fit <- value(f)
    print(fit)
    stopifnot(all.equal(fit, fit0))

    ## Explicit future (lazy)
    f <- future({ lm(weight ~ group - 1) }, lazy = TRUE)
    fit <- value(f)
    print(fit)
    stopifnot(all.equal(fit, fit0))

    ## Future assignment
    fit %<-% { lm(weight ~ group - 1) }
    print(fit)
    stopifnot(all.equal(fit, fit0))

    ## Future assignment (non-lazy)
    fit %<-% { lm(weight ~ group - 1) } %lazy% FALSE
    print(fit)
    stopifnot(all.equal(fit, fit0))

    ## Future assignment (lazy)
    fit %<-% { lm(weight ~ group - 1) } %lazy% TRUE
    print(fit)
    stopifnot(all.equal(fit, fit0))
} ## for (strategy ...)

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** Globals - lm(<formula>) ... DONE")


message("*** Globals - one-side formulas, e.g. xtabs(~ x) ...")

x <- c(1, 1, 2, 2, 2)

## Truth:
tbl0 <- xtabs(~ x)
print(tbl0)

for (cores in 1:min(3L, availableCores())) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  message("availableCores(): ", availableCores())

  for (strategy in strategies) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)

    ## Explicit future
    f <- future({ xtabs(~ x) })
    tbl <- value(f)
    print(tbl)
    stopifnot(all.equal(tbl, tbl0))

    ## Future assignment
    tbl %<-% { xtabs(~ x) }
    print(tbl)
    stopifnot(all.equal(tbl, tbl0))
  } ## for (strategy ...)

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** Globals - one-side formulas, e.g. xtabs(~ x) ... DONE")


message("*** Globals - lm(<formula>, data=cars) ...")

exprs <- list(
  # "remove-intercept-term" form of no-intercept
  a = substitute({ lm(dist ~ . -1, data=cars) }),
  # "make-intercept-zero" form of no-intercept
  b = substitute({ lm(dist ~ . +0, data=cars) }),
  # doesn't do what we want here
  c = substitute({ lm(dist ~ speed + speed^2, data=cars) }),
  # gets us a quadratic term
  d = substitute({ lm(dist ~ speed + I(speed^2), data=cars) }),
  # avoid potential multicollinearity
  e = substitute({ lm(dist ~ poly(speed,2), data=cars) })
)

for (kk in seq_along(exprs)) {
  expr <- exprs[[kk]]
  name <- names(exprs)[kk]
  message(sprintf("- Globals - lm(<formula #%d (%s)>, data=cars) ...", kk, sQuote(name)))

  fit0 <- eval(expr)
  print(fit0)

  for (cores in 1:min(3L, availableCores())) {
    message(sprintf("Testing with %d cores ...", cores))
    options(mc.cores=cores-1L)
  
    message("availableCores(): ", availableCores())
  
    for (strategy in strategies) {
      message(sprintf("- plan('%s') ...", strategy))
      plan(strategy)
      
      f <- future(expr, substitute=FALSE)
      fit <- value(f)
      print(fit)
    
      stopifnot(all.equal(fit, fit0))
    } ## for (strategy ...)
  
    message(sprintf("Testing with %d cores ... DONE", cores))
  } ## for (cores ...)
} ## for (kk ...)

message("*** Globals - lm(<formula>, data=cars) ... DONE")


message("*** Globals - formulas ... DONE")

source("incl/end.R")
