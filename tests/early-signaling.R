library("future")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)


message("*** Early signaling of conditions ...")

message("*** Early signaling of conditions with eager futures ...")

plan(eager)
f <- future({ stop("bang!") })
r <- resolved(f)
stopifnot(r)
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

plan(eager, earlySignal=TRUE)
f <- try(future({ stop("bang!") }), silent=TRUE)
stopifnot(inherits(f, "try-error"))

message("*** Early signaling of conditions with eager futures ... DONE")


message("*** Early signaling of conditions with lazy futures ...")

plan(lazy)
f <- future({ stop("bang!") })
r <- resolved(f)
stopifnot(r)
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

plan(lazy, earlySignal=TRUE)
f <- future({ stop("bang!") })
r <- try(resolved(f), silent=TRUE)
stopifnot(inherits(r, "try-error"))
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

message("*** Early signaling of conditions with lazy futures ... DONE")

message("Number of available cores: ", availableCores())

message("*** Early signaling of conditions with multisession futures ...")

plan(multisession)
f <- future({ stop("bang!") })
r <- resolved(f)
stopifnot(r)
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

plan(multisession, earlySignal=TRUE)
f <- future({ stop("bang!") })
print(f)
r <- try(resolved(f), silent=TRUE)
stopifnot(inherits(r, "try-error") || inherits(f, "UniprocessFuture"))
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))


message("*** Early signaling of conditions with multisession futures ... DONE")


message("*** Early signaling of conditions with multiprocess futures ...")

plan(multiprocess)
f <- future({ stop("bang!") })
r <- resolved(f)
stopifnot(r)
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

plan(multiprocess, earlySignal=TRUE)
f <- future({ stop("bang!") })
print(f)
r <- try(resolved(f), silent=TRUE)
stopifnot(inherits(r, "try-error") || inherits(f, "UniprocessFuture"))
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

message("*** Early signaling of conditions with multiprocess futures ... DONE")


message("*** Early signaling of conditions ... DONE")

plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
