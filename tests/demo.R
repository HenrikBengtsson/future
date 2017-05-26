source("incl/start.R")

options(future.demo.mandelbrot.nrow = 2L)
options(future.demo.mandelbrot.resolution = 50L)
options(future.demo.mandelbrot.delay = FALSE)

for (cores in 1:availCores) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores = cores)

  message("*** Demos ...")

  message("*** Mandelbrot demo of the 'future' package ...")

  if (getRversion() >= "3.2.0") {
    for (strategy in supportedStrategies(cores)) {
      message(sprintf("- plan('%s') ...", strategy))
      plan(strategy)
      demo("mandelbrot", package = "future", ask = FALSE)
      message(sprintf("- plan('%s') ... DONE", strategy))
    }
  } else {
    message(" - This demo requires R (>= 3.2.0). Skipping test.")
  }

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** Demos ... DONE")

source("incl/end.R")
