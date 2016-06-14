library("future")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)

parseCmdArgs <- future:::parseCmdArgs
maxCores <- min(2L, availableCores(methods="system"))

message("*** parseCmdArgs() ...")

args <- parseCmdArgs()
str(args)

cmdargs <- c("-p", 1L)
args <- parseCmdArgs(cmdargs)
str(args)
stopifnot(args$p == 1L)

cmdargs <- c(sprintf("--parallel=%d", maxCores))
args <- parseCmdArgs(cmdargs)
str(args)
stopifnot(args$p == maxCores)

cmdargs <- c("-p", 1L, sprintf("--parallel=%d", maxCores))
args <- parseCmdArgs(cmdargs)
str(args)
stopifnot(args$p == maxCores)

cmdargs <- c("-p", 0L)
args <- parseCmdArgs(cmdargs)
stopifnot(is.null(args$p))
res <- tryCatch(parseCmdArgs(cmdargs), warning=function(w) w)
stopifnot(inherits(res, "warning"))

cmdargs <- c("-p", .Machine$integer.max)
args <- parseCmdArgs(cmdargs)
stopifnot(is.null(args$p))
res <- tryCatch(parseCmdArgs(cmdargs), warning=function(w) w)
stopifnot(inherits(res, "warning"))




message("*** parseCmdArgs() ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
