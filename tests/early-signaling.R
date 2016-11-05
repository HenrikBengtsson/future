source("incl/start.R")

options(future.debug=FALSE)

message("*** Early signaling of conditions ...")

message("*** Early signaling of conditions with uniprocess futures ...")

plan(uniprocess)
f <- future({ stop("bang!") })
Sys.sleep(1.0)
r <- resolved(f)
stopifnot(r)
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

plan(uniprocess, earlySignal=TRUE)
f <- try(future({ stop("bang!") }), silent=TRUE)
stopifnot(inherits(f, "try-error"))

message("*** Early signaling of conditions with uniprocess futures ... DONE")


message("*** Early signaling of conditions with lazy futures ...")

plan(lazy)
f <- future({ stop("bang!") })
Sys.sleep(1.0)
r <- resolved(f)
stopifnot(r)
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

plan(lazy, earlySignal=TRUE)

## Errors
f <- future({ stop("bang!") })
Sys.sleep(1.0)
r <- try(resolved(f), silent=TRUE)
stopifnot(inherits(r, "try-error"))
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

## Warnings
f <- future({ warning("careful!") })
Sys.sleep(1.0)
res <- tryCatch({
  r <- resolved(f)
}, condition = function(w) w)
stopifnot(inherits(res, "warning"))

## Messages
f <- future({ message("hey!") })
Sys.sleep(1.0)
res <- tryCatch({
  r <- resolved(f)
}, condition = function(w) w)
stopifnot(inherits(res, "message"))

## Condition
f <- future({ signalCondition(simpleCondition("hmm")) })
Sys.sleep(1.0)
res <- tryCatch({
  r <- resolved(f)
}, condition = function(w) w)
stopifnot(inherits(res, "condition"))

message("*** Early signaling of conditions with lazy futures ... DONE")

message("Number of available cores: ", availableCores())

message("*** Early signaling of conditions with multisession futures ...")

plan(multisession)
f <- future({ stop("bang!") })
Sys.sleep(1.0)
r <- resolved(f)
stopifnot(r)
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

plan(multisession, earlySignal=TRUE)
f <- future({ stop("bang!") })
Sys.sleep(1.0)
print(f)
r <- try(resolved(f), silent=TRUE)
stopifnot(inherits(r, "try-error") || inherits(f, "UniprocessFuture"))
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))


message("*** Early signaling of conditions with multisession futures ... DONE")


message("*** Early signaling of conditions with multiprocess futures ...")

plan(multiprocess)
f <- future({ stop("bang!") })
Sys.sleep(1.0)
r <- resolved(f)
stopifnot(r)
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

plan(multiprocess, earlySignal=TRUE)
f <- future({ stop("bang!") })
Sys.sleep(1.0)
print(f)
r <- try(resolved(f), silent=TRUE)
stopifnot(inherits(r, "try-error") || inherits(f, "UniprocessFuture"))
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

message("*** Early signaling of conditions with multiprocess futures ... DONE")

message("*** Early signaling of conditions ... DONE")

source("incl/end.R")
