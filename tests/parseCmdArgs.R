library("future")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)

parseCmdArgs <- future:::parseCmdArgs
maxCores <- min(2L, availableCores(methods="system"))

message("*** parseCmdArgs() ...")

args <- parseCmdArgs()
str(args)

options(future.cmdargs=c("-p", 1L))
args <- parseCmdArgs()
str(args)
stopifnot(args$p == 1L)

options(future.cmdargs=c(sprintf("--parallel=%d", maxCores)))
args <- parseCmdArgs()
str(args)
stopifnot(args$p == maxCores)

options(future.cmdargs=c("-p", 1L, sprintf("--parallel=%d", maxCores)))
args <- parseCmdArgs()
str(args)
stopifnot(args$p == maxCores)

options(future.cmdargs=c("-p", 0L))
args <- parseCmdArgs()
stopifnot(is.null(args$p))
res <- tryCatch(parseCmdArgs(), warning=function(w) w)
stopifnot(inherits(res, "warning"))

options(future.cmdargs=c("-p", .Machine$integer.max))
args <- parseCmdArgs()
stopifnot(is.null(args$p))
res <- tryCatch(parseCmdArgs(), warning=function(w) w)
stopifnot(inherits(res, "warning"))

options(future.cmdargs=NULL)

message("*** parseCmdArgs() ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
