source("incl/start,load-only.R")

message("*** utils ...")

message("*** hpaste() ...")

# Some vectors
x <- 1:6
y <- 10:1
z <- LETTERS[x]

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Abbreviation of output vector
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
printf("x = %s.\n", hpaste(x))
## x = 1, 2, 3, ..., 6.

printf("x = %s.\n", hpaste(x, maxHead=2))
## x = 1, 2, ..., 6.

printf("x = %s.\n", hpaste(x), maxHead=3) # Default
## x = 1, 2, 3, ..., 6.

# It will never output 1, 2, 3, 4, ..., 6
printf("x = %s.\n", hpaste(x, maxHead=4))
## x = 1, 2, 3, 4, 5 and 6.

# Showing the tail
printf("x = %s.\n", hpaste(x, maxHead=1, maxTail=2))
## x = 1, ..., 5, 6.

# Turning off abbreviation
printf("y = %s.\n", hpaste(y, maxHead=Inf))
## y = 10, 9, 8, 7, 6, 5, 4, 3, 2, 1

## ...or simply
printf("y = %s.\n", paste(y, collapse=", "))
## y = 10, 9, 8, 7, 6, 5, 4, 3, 2, 1


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Adding a special separator before the last element
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Change last separator
printf("x = %s.\n", hpaste(x, lastCollapse=" and "))
## x = 1, 2, 3, 4, 5 and 6.

message("*** hpaste() ...")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# asIEC()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
message("*** asIEC() ...")

for (size in c(0, 10^(0:20))) {
  cat(sprintf("Size: %.f bytes = %s\n", size, asIEC(size)))
}

message("*** asIEC() ... DONE")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# debug()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
message("*** mdebug() ...")

mdebug("Hello #1")
options(future.debug=TRUE)
mdebug("Hello #2")
options(future.debug=FALSE)
mdebug("Hello #3")

message("*** mdebug() ... DONE")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# geval() et al.
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
message("*** geval() et al. ...")

gls <- function(..., envir=.GlobalEnv) ls(..., envir=envir)

message("- gls() ...")
genv <- new.env(parent=globalenv())
vars <- gls(envir=genv)
print(vars)
stopifnot(length(vars) == 0)

message("- gassign() ...")
gassign("a", 1, envir=genv)
vars <- gls(envir=genv)
print(vars)
stopifnot(length(vars) == 1)

message("- grmall() ...")
grmall(envir=genv)
vars <- gls(envir=genv)
print(vars)
stopifnot(length(vars) == 0)

message("- geval() ...")
gassign("a", 1, envir=genv)
res <- geval(substitute(a), envir=genv)
print(res)
vars <- gls(envir=genv)
print(vars)
stopifnot(length(vars) == 1)


message("*** geval() et al. ... DONE")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# requirePackages()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
message("*** requirePackages() ...")

res <- requirePackages("future")
res <- requirePackages(c("future", "listenv"))

res <- try(requirePackages("<unknown package>"), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** requirePackages() ... DONE")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# importParallel()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
message("*** importParallel() ...")

mclapply <- importParallel("mclapply")
stopifnot(identical(mclapply, parallel::mclapply))

ns <- getNamespace("parallel")
if (exists("sendCall", envir=ns, mode="function")) {
  sendCall <- importParallel("sendCall")
  stopifnot(identical(sendCall, parallel:::sendCall))
} else {
  res <- try(importParallel("sendCall"), silent=TRUE)
  stopifnot(inherits(res, "try-error"))
}

res <- try(importParallel("<unknown function>"), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** importParallel() ... DONE")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# myInternalIP() and myExternalIP()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
message("*** myInternalIP() ...")
ips <- myInternalIP(mustWork=FALSE)
message("myInternalIP(): ", paste(ips, collapse=", "))
message("*** myInternalIP() ... DONE")

ips <- myInternalIP(force=TRUE, which="first", mustWork=FALSE)
message("myInternalIP(which='first'): ", paste(ips, collapse=", "))
message("*** myInternalIP() ... DONE")

ips <- myInternalIP(force=TRUE, which="last", mustWork=FALSE)
message("myInternalIP(which='last'): ", paste(ips, collapse=", "))
message("*** myInternalIP() ... DONE")

ips <- myInternalIP(force=TRUE, which="all", mustWork=FALSE)
message("myInternalIP(which='all'): ", paste(ips, collapse=", "))
message("*** myInternalIP() ... DONE")

message("*** myExternalIP() ...")
ip <- myExternalIP(mustWork=FALSE)
message("myExternalIP(): ", ip)
message("*** myExternalIP() ... DONE")


message("*** utils ... DONE")

source("incl/end.R")
