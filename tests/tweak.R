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


message("*** Tweaking future strategies ... DONE")
options(oopts)
rm(list="oopts")
