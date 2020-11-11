source("incl/start.R")

maxCores <- min(2L, availableCores(methods = "system"))


plan("default")
strategy0 <- plan()
 
message("*** parseCmdArgs() ...")

args <- parseCmdArgs()
str(args)

options(future.plan = NULL, future.cmdargs = c("-p", 1L))
args <- parseCmdArgs()
str(args)
stopifnot(args$p == 1L)

options(future.plan = NULL, future.cmdargs = c(sprintf("--parallel=%d", maxCores)))
args <- parseCmdArgs()
str(args)
stopifnot(args$p == maxCores)

options(future.plan = NULL, future.cmdargs = c("-p", 1L, sprintf("--parallel=%d", maxCores)))
args <- parseCmdArgs()
str(args)
stopifnot(args$p == maxCores)

options(future.plan = NULL, future.cmdargs = c("-p", 0L))
args <- parseCmdArgs()
stopifnot(is.null(args$p))
res <- tryCatch(parseCmdArgs(), warning = function(w) w)
stopifnot(inherits(res, "warning"))

options(future.plan = NULL, future.cmdargs = c("-p", .Machine$integer.max))
args <- parseCmdArgs()
stopifnot(is.null(args$p))
res <- tryCatch(parseCmdArgs(), warning = function(w) w)
stopifnot(inherits(res, "warning"))

options(future.plan = NULL, future.cmdargs = NULL)

message("*** parseCmdArgs() ... DONE")



message("*** .onLoad() ...")
plan("default")
pkgname <- "future"

message("- .onLoad() w/out command-line options ...")
options(future.plan = NULL, future.cmdargs = NULL)
.onLoad(pkgname, pkgname)
strategy <- plan("next")
print(strategy)
stopifnot(all(class(strategy) == class(strategy0)))
plan("default")
message("- .onLoad() w/out command-line options ... DONE")

message("- .onLoad() w/ -p 1 ...")
options(future.plan = NULL, future.cmdargs = c("-p", 1))
.onLoad(pkgname, pkgname)
strategy <- plan("next")
print(strategy)
## future.plan can be either a string or a future function
default <- getOption("future.plan", "sequential")
if (is.function(default)) default <- class(default)
stopifnot(inherits(strategy, default))
plan("default")
message("- .onLoad() w/ -p 1 ... DONE")

message("- .onLoad() w/ --parallel=1 ...")
plan("default")
options(future.plan = NULL, future.cmdargs = "-parallel=1")
.onLoad(pkgname, pkgname)
strategy <- plan("next")
print(strategy)
## future.plan can be either a string or a future function
default <- getOption("future.plan", "sequential")
if (is.function(default)) default <- class(default)
stopifnot(inherits(strategy, default))
plan("default")
message("- .onLoad() w/ --parallel=1 ... DONE")

message("- .onLoad() w/ -p 2 ...")
options(future.plan = NULL, future.cmdargs = c("-p", 2))
.onLoad(pkgname, pkgname)
strategy <- plan("next")
print(strategy)
if (maxCores >= 2) {
  stopifnot(inherits(strategy, "multisession"))
} else {
  stopifnot(all(class(strategy) == class(strategy0)))
}
plan("default")
message("- .onLoad() w/ -p 2 ... DONE")

message("- .onLoad() w/ -p 0 ...")
options(future.plan = NULL, future.cmdargs = c("-p", 0))
.onLoad(pkgname, pkgname)
strategy <- plan("next")
print(strategy)
stopifnot(all(class(strategy) == class(strategy0)))
plan("default")
message("- .onLoad() w/ -p 0 ... DONE")

message("- .onLoad() w/ -p -1 ...")
options(future.plan = NULL, future.cmdargs = c("-p", -1))
.onLoad(pkgname, pkgname)
strategy <- plan("next")
print(strategy)
stopifnot(all(class(strategy) == class(strategy0)))
plan("default")
message("- .onLoad() w/ -p -1 ... DONE")

message("- .onLoad() w/ -p foo ...")
options(future.plan = NULL, future.cmdargs = c("-p", "foo"))
.onLoad(pkgname, pkgname)
strategy <- plan("next")
print(strategy)
stopifnot(all(class(strategy) == class(strategy0)))
plan("default")
message("- .onLoad() w/ -p foo ... DONE")

message("- .onLoad() w/ R_FUTURE_PLAN = 'multisession' ...")
Sys.setenv(R_FUTURE_PLAN = "multisession")
options(future.plan = NULL, future.cmdargs = NULL)
.onLoad(pkgname, pkgname)
strategy <- plan("next")
print(strategy)
stopifnot(inherits(strategy, "multisession"))
plan("default")
Sys.setenv(R_FUTURE_PLAN = "")
message("- .onLoad() w/ R_FUTURE_PLAN = 'multisession' ... DONE")

message("- .onLoad() w/ future.plan = 'multisession' ...")
options(future.plan = NULL, future.plan = 'multisession', future.cmdargs = NULL)
.onLoad(pkgname, pkgname)
strategy <- plan("next")
print(strategy)
stopifnot(inherits(strategy, "multisession"))
plan("default")
message("- .onLoad() w/ future.plan = 'multisession' ... DONE")

message("- .onLoad() w/ R_FUTURE_PLAN = 'multisession' & -p 1 ...")
Sys.setenv(R_FUTURE_PLAN = "multisession")
options(future.plan = NULL, future.cmdargs = c("-p", 1))
.onLoad(pkgname, pkgname)
strategy <- plan("next")
print(strategy)
stopifnot(inherits(strategy, "multisession"))
plan("default")
Sys.setenv(R_FUTURE_PLAN = "")
message("- .onLoad() w/ R_FUTURE_PLAN = 'multisession' & -p 1 ... DONE")

message("- .onLoad() w/ future.plan = 'multisession' & -p 1 ...")
options(future.plan = 'multisession', future.cmdargs = c("-p", "1"))
.onLoad(pkgname, pkgname)
strategy <- plan("next")
print(strategy)
stopifnot(inherits(strategy, "multisession"))
plan("default")
message("- .onLoad() w/ future.plan = 'multisession' & -p 1 ... DONE")

message("- .onLoad() w/ future.plan = 'multisession' & -p 1 ...")
options(future.plan = multisession, future.cmdargs = c("-p", "1"))
.onLoad(pkgname, pkgname)
strategy <- plan("next")
print(strategy)
stopifnot(inherits(strategy, "multisession"))
plan("default")
message("- .onLoad() w/ future.plan = 'multisession' & -p 1 ... DONE")

options(future.plan = NULL, future.cmdargs = NULL, future.availableCores.system = NULL, future.availableCores.fallback = NULL)

message("*** .onLoad() ... DONE")


message("*** .onAttach() ...")

pkgname <- "future"

message("- .onAttach() w/ option future.startup.loadScript ...")

for (value in list(NULL, FALSE, TRUE)) {
  options(future.startup.loadScript = value)
  .onAttach(pkgname, pkgname)
}

message("- .onAttach() w/ option future.startup.loadScript ... DONE")

message("- .onAttach() with ./.future.R ...")

pathname <- ".future.R"
xyz <- 0L
cat("xyz <- 42L; cat('ping\n')\n", file = pathname)
.onAttach(pkgname, pkgname)
print(xyz)
stopifnot(is.integer(xyz), xyz >= 0, xyz == 42L)
file.remove(pathname)

message("- .onAttach() with ./.future.R ... DONE")

message("*** .onAttach() ... DONE")


source("incl/end.R")
