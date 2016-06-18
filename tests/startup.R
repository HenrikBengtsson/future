source("incl/start.R")

maxCores <- min(2L, availableCores(methods="system"))

plan("default")
strategy0 <- plan()
 
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



message("*** .onLoad() ...")
plan("default")
pkgname <- "future"

message("- .onLoad() w/out command-line options ...")
options(future.cmdargs=NULL)
.onLoad(pkgname, pkgname)
strategy <- plan()
print(strategy)
stopifnot(all(class(strategy) == class(strategy0)))
plan("default")
message("- .onLoad() w/out command-line options ... DONE")

message("- .onLoad() w/ -p 1 ...")
options(future.cmdargs=c("-p", 1))
.onLoad(pkgname, pkgname)
strategy <- plan()
print(strategy)
stopifnot(inherits(strategy, "eager"))
plan("default")
message("- .onLoad() w/ -p 1 ... DONE")

message("- .onLoad() w/ --parallel=1 ...")
plan("default")
options(future.cmdargs="-parallel=1")
.onLoad(pkgname, pkgname)
strategy <- plan()
print(strategy)
stopifnot(inherits(strategy, "eager"))
plan("default")
message("- .onLoad() w/ --parallel=1 ... DONE")

message("- .onLoad() w/ -p 2 ...")
options(future.cmdargs=c("-p", 2))
.onLoad(pkgname, pkgname)
strategy <- plan()
print(strategy)
if (maxCores >= 2) {
  stopifnot(inherits(strategy, "multiprocess"))
} else {
  stopifnot(all(class(strategy) == class(strategy0)))
}
plan("default")
message("- .onLoad() w/ -p 2 ... DONE")

message("- .onLoad() w/ -p 0 ...")
options(future.cmdargs=c("-p", 0))
.onLoad(pkgname, pkgname)
strategy <- plan()
print(strategy)
stopifnot(all(class(strategy) == class(strategy0)))
plan("default")
message("- .onLoad() w/ -p 0 ... DONE")

message("- .onLoad() w/ -p -1 ...")
options(future.cmdargs=c("-p", -1))
.onLoad(pkgname, pkgname)
strategy <- plan()
print(strategy)
stopifnot(all(class(strategy) == class(strategy0)))
plan("default")
message("- .onLoad() w/ -p -1 ... DONE")

message("- .onLoad() w/ -p foo ...")
options(future.cmdargs=c("-p", "foo"))
.onLoad(pkgname, pkgname)
strategy <- plan()
print(strategy)
stopifnot(all(class(strategy) == class(strategy0)))
plan("default")
message("- .onLoad() w/ -p foo ... DONE")

message("- .onLoad() w/ R_FUTURE_PLAN='lazy' ...")
Sys.setenv("R_FUTURE_PLAN"="lazy")
options(future.cmdargs=NULL)
.onLoad(pkgname, pkgname)
strategy <- plan()
print(strategy)
stopifnot(inherits(strategy, "lazy"))
plan("default")
Sys.setenv("R_FUTURE_PLAN"="")
message("- .onLoad() w/ R_FUTURE_PLAN='lazy' ... DONE")

message("- .onLoad() w/ future.plan='lazy' ...")
options(future.plan='lazy', future.cmdargs=NULL)
.onLoad(pkgname, pkgname)
strategy <- plan()
print(strategy)
stopifnot(inherits(strategy, "lazy"))
plan("default")
message("- .onLoad() w/ future.plan='lazy' ... DONE")

message("- .onLoad() w/ R_FUTURE_PLAN='lazy' & -p 1 ...")
Sys.setenv("R_FUTURE_PLAN"="lazy")
options(future.cmdargs=c("-p", 1))
.onLoad(pkgname, pkgname)
strategy <- plan()
print(strategy)
stopifnot(inherits(strategy, "lazy"))
plan("default")
Sys.setenv("R_FUTURE_PLAN"="")
message("- .onLoad() w/ R_FUTURE_PLAN='lazy' & -p 1 ... DONE")

message("- .onLoad() w/ future.plan='lazy' & -p 1 ...")
options(future.plan='lazy', future.cmdargs=c("-p", "1"))
.onLoad(pkgname, pkgname)
strategy <- plan()
print(strategy)
stopifnot(inherits(strategy, "lazy"))
plan("default")
message("- .onLoad() w/ future.plan='lazy' & -p 1 ... DONE")

options(future.cmdargs=NULL)

message("*** .onLoad() ... DONE")

source("incl/end.R")
