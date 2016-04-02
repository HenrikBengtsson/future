message("*** Tweaking future strategies ...")
oopts <- options(warn=1)

message("*** y <- tweak(future::lazy) ...")
lazy2 <- future::tweak(future::lazy)
print(args(lazy2))
stopifnot(identical(lazy2, future::lazy))
stopifnot(!inherits(lazy2, "tweaked"))


message("*** y <- tweak(future::lazy, local=FALSE) ...")
lazy2 <- future::tweak(future::lazy, local=FALSE)
print(args(lazy2))
stopifnot(!identical(lazy2, future::lazy))
stopifnot(inherits(lazy2, "tweaked"))
stopifnot(identical(formals(lazy2)$local, FALSE))


message("*** y <- tweak('lazy', local=FALSE) ...")
lazy2 <- future::tweak("lazy", local=FALSE)
print(args(lazy2))
stopifnot(!identical(lazy2, future::lazy))
stopifnot(inherits(lazy2, "tweaked"))
stopifnot(identical(formals(lazy2)$local, FALSE))


library("future")

message("*** y <- tweak(lazy, local=FALSE) ...")
lazy2 <- future::tweak(lazy, local=FALSE)
print(args(lazy2))
stopifnot(!identical(lazy2, future::lazy))
stopifnot(inherits(lazy2, "tweaked"))
stopifnot(identical(formals(lazy2)$local, FALSE))

message("*** y <- tweak('lazy', local=FALSE) ...")
lazy2 <- future::tweak('lazy', local=FALSE)
print(args(lazy2))
stopifnot(!identical(lazy2, future::lazy))
stopifnot(inherits(lazy2, "tweaked"))
stopifnot(identical(formals(lazy2)$local, FALSE))

message("*** y <- tweak('lazy', local=FALSE, abc=1, def=TRUE) ...")
res <- tryCatch({
  lazy2 <- future::tweak('lazy', local=FALSE, abc=1, def=TRUE)
}, warning=function(w) {
  w
})
stopifnot(inherits(res, "warning"))
lazy2 <- future::tweak('lazy', local=FALSE, abc=1, def=TRUE)
print(args(lazy2))
stopifnot(!identical(lazy2, future::lazy))
stopifnot(inherits(lazy2, "tweaked"))
stopifnot(identical(formals(lazy2)$local, FALSE))


message("*** y %<-% { expr } %tweak% tweaks ...")

plan(eager)
a <- 0

x %<-% { a <- 1; a }
print(x)
stopifnot(a == 0, x == 1)

x %<-% { a <- 2; a } %tweak% list(local=FALSE)
print(x)
stopifnot(a == 2, x == 2)


plan(eager, local=FALSE)
a <- 0

x %<-% { a <- 1; a }
print(x)
stopifnot(a == 1, x == 1)

x %<-% { a <- 2; a } %tweak% list(local=TRUE)
print(x)
stopifnot(a == 1, x == 2)


# Preserve nested futures
plan(list(A=eager, B=tweak(eager, local=FALSE)))
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
} %tweak% list(local=FALSE)
print(x)
stopifnot(a == 2, x == 2)


message("*** y %<-% { expr } %tweak% tweaks ... DONE")


message("*** Tweaking future strategies ... DONE")
options(oopts)
rm(list="oopts")
