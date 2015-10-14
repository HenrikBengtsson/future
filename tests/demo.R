library(future)

ovars <- ls()
oopts <- options(warn=1L)

options("R_FUTURE_DEMO_MANDELBROT_PLANES"=4L)

message("*** Demos ...")

message("*** Mandelbrot demo of the 'future' package ...")

if (getRversion() >= "3.2.0") {
  strategies <- c("eager", "lazy")
  if (supportsMulticore()) strategies <- c(strategies, "multicore")

  for (strategy in strategies) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)
    demo("mandelbrot", package="future", ask=FALSE)
  }
} else {
  message(" - This demo requires R (>= 3.2.0). Skipping test.")
}

message("*** Demos ... DONE")

plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
