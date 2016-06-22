source("incl/start.R")

message("mandelbrot() ...")

img <- mandelbrot(xmid=-0.75, ymid=0.0, side=3.0, resolution=100L)
plot(img)

message("mandelbrot() ... DONE")

source("incl/end.R")
