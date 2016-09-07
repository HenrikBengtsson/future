source("incl/start.R")
library("listenv")
oopts <- c(oopts, options(
  future.globals.resolve=TRUE,
  future.globals.onMissing="error"
))

ns <- getNamespace("globals")
supportsFormulas <- exists("walkAST", mode="function", envir=ns)

message("*** Globals - formulas ...")
if (supportsFormulas) {

## From example("lm", package="stats")
ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
group <- gl(2, 10, 20, labels = c("Ctl","Trt"))
weight <- c(ctl, trt)

## Truth:
fit0 <- lm(weight ~ group - 1)
print(fit0)

strategies <- supportedStrategies()
strategies <- setdiff(strategies, "multiprocess")

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

    ## Future assignment
    fit %<-% { lm(weight ~ group - 1) }
    print(fit)
    stopifnot(all.equal(fit, fit0))
  } ## for (strategy ...)

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

} ## if (supportsFormulas)
message("*** Globals - formulas ... DONE")

source("incl/end.R")
