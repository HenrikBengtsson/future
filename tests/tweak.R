source("incl/start,load-only.R")

message("*** Tweaking future strategies ...")

message("*** y <- tweak(future::sequential) ...")
sequential2 <- future::tweak(future::sequential)
print(args(sequential2))
stopifnot(identical(sequential2, future::sequential))
stopifnot(!inherits(sequential2, "tweaked"))


message("*** y <- tweak(future::sequential, local = FALSE) ...")
sequential2 <- future::tweak(future::sequential, local = FALSE)
print(args(sequential2))
stopifnot(!identical(sequential2, future::sequential))
stopifnot(inherits(sequential2, "tweaked"))
stopifnot(identical(formals(sequential2)$local, FALSE))


message("*** y <- tweak('sequential', local = FALSE) ...")
sequential2 <- future::tweak("sequential", local = FALSE)
print(args(sequential2))
stopifnot(!identical(sequential2, future::sequential))
stopifnot(inherits(sequential2, "tweaked"))
stopifnot(identical(formals(sequential2)$local, FALSE))


library("future")

message("*** y <- tweak(sequential, local = FALSE) ...")
sequential2 <- future::tweak(sequential, local = FALSE)
print(args(sequential2))
stopifnot(!identical(sequential2, future::sequential))
stopifnot(inherits(sequential2, "tweaked"))
stopifnot(identical(formals(sequential2)$local, FALSE))

message("*** y <- tweak('sequential', local = FALSE) ...")
sequential2 <- future::tweak('sequential', local = FALSE)
print(args(sequential2))
stopifnot(!identical(sequential2, future::sequential))
stopifnot(inherits(sequential2, "tweaked"))
stopifnot(identical(formals(sequential2)$local, FALSE))

message("*** y <- tweak('sequential', local = FALSE, abc = 1, def = TRUE) ...")
res <- tryCatch({
  sequential2 <- future::tweak('sequential', local = FALSE, abc = 1, def = TRUE)
}, warning = function(w) {
  w
})
stopifnot(inherits(res, "warning"))
sequential2 <- future::tweak('sequential', local = FALSE, abc = 1, def = TRUE)
print(args(sequential2))
stopifnot(!identical(sequential2, future::sequential))
stopifnot(inherits(sequential2, "tweaked"))
stopifnot(identical(formals(sequential2)$local, FALSE))


message("*** y %<-% { expr } %tweak% tweaks ...")

plan(sequential)
a <- 0

x %<-% { a <- 1; a }
print(x)
stopifnot(a == 0, x == 1)

x %<-% { a <- 2; a } %tweak% list(local = FALSE)
print(x)
stopifnot(a == 2, x == 2)


plan(sequential, local = FALSE)
a <- 0

x %<-% { a <- 1; a }
print(x)
stopifnot(a == 1, x == 1)

x %<-% { a <- 2; a } %tweak% list(local = TRUE)
print(x)
stopifnot(a == 1, x == 2)


# Preserve nested futures
plan(list(A = sequential, B = tweak(sequential, local = FALSE)))
a <- 0

x %<-% {
  stopifnot(identical(names(plan("list")), "B"))
  a <- 1
  a
}
print(x)
stopifnot(a == 0, x == 1)

x %<-% {
  stopifnot(identical(names(plan("list")), "B"))
  a <- 2
  a
} %tweak% list(local = FALSE)
print(x)
stopifnot(a == 2, x == 2)


message("*** y %<-% { expr } %tweak% tweaks ... DONE")


message("*** tweak() - gc = TRUE ...")

res <- tryCatch(tweak(multisession, gc = TRUE), condition = identity)
stopifnot(inherits(res, "tweaked"))

## Argument 'gc' is unknown
res <- tryCatch(tweak(sequential, gc = TRUE), condition = identity)
stopifnot(inherits(res, "warning"))

res <- tryCatch(tweak(multicore, gc = TRUE), condition = identity)
stopifnot(inherits(res, "warning"))

message("*** tweak() - gc = TRUE ... DONE")



message("*** tweak() - exceptions ...")

res <- try(tweak("<unknown-future-strategy>"), silent = TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(tweak(sequential, "unnamed-argument"), silent = TRUE)
stopifnot(inherits(res, "try-error"))

## Arguments that must not be tweaked
res <- try(tweak(sequential, lazy = TRUE), silent = TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(tweak(sequential, asynchronous = FALSE), silent = TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(tweak(sequential, seed = 42L), silent = TRUE)
stopifnot(inherits(res, "try-error"))

message("*** tweak() - exceptions ... DONE")


message("*** Tweaking future strategies ... DONE")

source("incl/end.R")
