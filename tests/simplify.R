library("future")
library("listenv")

message("*** simplify() ...")

x <- as.list(1:6)
dim(x) <- c(2,3)
dimnames(x) <- list(c("A", "B"), c("A", "B", "C"))
names(x) <- letters[seq_along(x)]
print(x)
y <- simplify(x)
print(y)

x <- as.listenv(x)
print(x)
z <- simplify(x)
print(z)
stopifnot(identical(z, y))


message("*** simplify() ... DONE")
