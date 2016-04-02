library("future")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L)


message("*** Error propagation ...")

message("*** Error propagation with eager futures ...")

plan(eager)
f <- future({ stop("bang!") })
r <- resolved(f)
stopifnot(r)
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

plan(eager, onError="stop")
f <- try(future({ stop("bang!") }), silent=TRUE)
stopifnot(inherits(f, "try-error"))

for (onError in c("warning", "message")) {
  plan(eager, onError=onError)
  f <- future({ stop("bang!") })
  r <- try(resolved(f), silent=TRUE)
  stopifnot(inherits(r, "try-error"))
  v <- try(value(f), silent=TRUE)
  stopifnot(inherits(v, "try-error"))
}

message("*** Error propagation with eager futures ... DONE")


message("*** Error propagation with lazy futures ...")

plan(lazy)
f <- future({ stop("bang!") })
r <- resolved(f)
stopifnot(r)
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

for (onError in c("stop", "warning", "message")) {
  plan(lazy, onError=onError)
  f <- future({ stop("bang!") })
  r <- try(resolved(f), silent=TRUE)
  stopifnot(inherits(r, "try-error"))
  v <- try(value(f), silent=TRUE)
  stopifnot(inherits(v, "try-error"))
}

message("*** Error propagation with lazy futures ... DONE")


message("*** Error propagation with multisession futures ...")

plan(multisession)
f <- future({ stop("bang!") })
r <- resolved(f)
stopifnot(r)
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

for (onError in c("stop", "warning", "message")) {
  plan(multisession, onError=onError)
  f <- future({ stop("bang!") })
  r <- try(resolved(f), silent=TRUE)
  stopifnot(inherits(r, "try-error"))
  v <- try(value(f), silent=TRUE)
  stopifnot(inherits(v, "try-error"))
}

message("*** Error propagation with multisession futures ... DONE")


message("*** Error propagation with multiprocess futures ...")

plan(multiprocess)
f <- future({ stop("bang!") })
r <- resolved(f)
stopifnot(r)
v <- try(value(f), silent=TRUE)
stopifnot(inherits(v, "try-error"))

for (onError in c("stop", "warning", "message")) {
  plan(multiprocess, onError=onError)
  f <- future({ stop("bang!") })
  r <- try(resolved(f), silent=TRUE)
  stopifnot(inherits(r, "try-error"))
  v <- try(value(f), silent=TRUE)
  stopifnot(inherits(v, "try-error"))
}

message("*** Error propagation with multiprocess futures ... DONE")


message("*** Error propagation ... DONE")

plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))

