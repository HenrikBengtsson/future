library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.globals.resolve=FALSE, future.debug=TRUE)

message("*** future() - invalid nesting of unresolved futures ...")

plan(multisession)

f1 <- future({ Sys.getpid() })
f2 <- future({ value(f1) })
res <- try(value(f2), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))


message("*** future() - invalid nesting of unresolved futures ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
