source("incl/start.R")

message("*** future() ...")

f <- future({
  42L
}, lazy = TRUE)

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


message("*** future() w/ gc = TRUE ...")

f <- future(42L, gc = TRUE, lazy = TRUE)
print(f)
y <- value(f)
print(y)
stopifnot(y == 42L)

message("*** future() w/ gc = TRUE ... DONE")
message("*** future() ... DONE")

message("*** future() ...")

f <- future({
  42L
}, lazy = TRUE)

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


message("*** future() w/ gc = TRUE ...")

f <- future(42L, gc = TRUE, lazy = TRUE)
print(f)
y <- value(f)
print(y)
stopifnot(y == 42L)

message("*** future() w/ gc = TRUE ... DONE")


message("*** future() - exceptions ...")

target <- list(name = "<unknown>", envir = new.env(), code = "Yo!", exists = TRUE)
res <- tryCatch(get_future(target, mustExist = TRUE), error = identity)
stopifnot(inherits(res, "error"))

message("*** future() - exceptions ... DONE")


message("*** future() - defunct ...")

res <- tryCatch(future(42L, evaluator = TRUE, lazy = TRUE), error = identity)
stopifnot(inherits(res, "error"))

message("*** future() - defunct ... DONE")


message("*** future() ... DONE")

source("incl/end.R")
