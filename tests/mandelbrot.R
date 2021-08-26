source("incl/start.R")

message("mandelbrot() ...")

counts <- mandelbrot(xmid = -0.75, ymid = 0.0, side = 3.0, resolution = 100L)
if (getRversion() >= "3.2.0") plot(counts)

message("mandelbrot() ... DONE")

source("incl/end.R")
