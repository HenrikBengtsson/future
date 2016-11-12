source("incl/start.R")

message("*** Session details ...")

x <- sessionDetails()
print(x)

x <- sessionDetails(env = FALSE)
print(x)

x <- sessionDetails(env = TRUE)
print(x)

y <- x[1:3]
print(y)
stopifnot(all(class(y) == class(x)))

message("*** Session details ... DONE")

source("incl/end.R")
