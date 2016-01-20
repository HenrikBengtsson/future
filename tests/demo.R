library(future)

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L)

for (cores in 1:min(3L, availableCores())) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  options("R_FUTURE_DEMO_MANDELBROT_PLANES"=4L)

  message("*** Demos ...")

  message("*** Mandelbrot demo of the 'future' package ...")

  if (getRversion() >= "3.2.0") {
    for (strategy in future:::supportedStrategies()) {
      message(sprintf("- plan('%s') ...", strategy))
      plan(strategy)
      demo("mandelbrot", package="future", ask=FALSE)
      message(sprintf("- plan('%s') ... DONE", strategy))
    }
  } else {
    message(" - This demo requires R (>= 3.2.0). Skipping test.")
  }

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** Demos ... DONE")

plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
