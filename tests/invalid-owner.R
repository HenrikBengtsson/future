library("future")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.globals.resolve=FALSE, future.debug=TRUE)

## Local functions
usedNodes <- function(future) {
  ## Number of unresolved cluster futures
  cluster <- future$cluster
  reg <- sprintf("cluster-%s", attr(cluster, "name"))
  c(used=length(future:::FutureRegistry(reg, action="list")), total=length(cluster))
}

## This test requires at least two background processes
plan(multisession, maxCores=3L)

message("*** future() - invalid ownership ...")

## This R process
uuid <- future:::uuid()
cat(sprintf("Main R process: %s\n", uuid))

message("- Asserting ownership ...")

message("Creating future #1:")
f1 <- future({ future:::uuid() })
stopifnot(inherits(f1, "MultisessionFuture"))
cat(sprintf("Future #1 session: %d\n", f1$node))
v1 <- value(f1)
cat(sprintf("Future #1 R process: %s\n", v1))
stopifnot(v1 != uuid)

message("Creating future #2:")
f2 <- future({ future:::uuid() })
stopifnot(inherits(f2, "MultisessionFuture"))
cat(sprintf("Future #2 session: %d\n", f2$node))
v2 <- value(f2)
cat(sprintf("Future #2 R process: %s\n", v2))
stopifnot(v2 != uuid)

message("Creating future #3:")
f3 <- future({ f1$owner })
stopifnot(inherits(f3, "MultisessionFuture"))
cat(sprintf("Future #3 session: %d\n", f3$node))
v3 <- value(f3)
cat(sprintf("Future #3 owner: %s\n", v3))
stopifnot(v3 == uuid)

message("Creating future #4:")
f4 <- future({ f1$owner })
stopifnot(inherits(f4, "MultisessionFuture"))
cat(sprintf("Future #4 session: %d\n", f4$node))
v4 <- value(f4)
cat(sprintf("Future #4 owner: %s\n", v4))
stopifnot(v4 == uuid)

message("Creating future #5:")
f5 <- future({ stopifnot(f1$owner != future:::uuid()); "not-owner" })
stopifnot(inherits(f5, "MultisessionFuture"))
v5 <- value(f5)
stopifnot(v5 == "not-owner")

message("- Asserting ownership ... DONE")


message("- Trying with invalid ownership ...")

message("Creating future #1:")
f1 <- future({ Sys.sleep(5); 42L })
print(f1)
cat(sprintf("Future #1 session: %d\n", f1$node))
stopifnot(identical(f1$owner, uuid))
print(usedNodes(f1))

message("Creating future #2:")
f2 <- future({ value(f1) })
print(f2)
cat(sprintf("Future #2 session: %d\n", f2$node))
stopifnot(identical(f2$owner, uuid))
print(usedNodes(f2))

message("Getting value of future #2:")
res <- try(value(f2), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

v1 <- value(f1)
print(v1)
stopifnot(v1 == 42L)

message("- Trying with invalid ownership ... DONE")

message("*** future() - invalid ownership ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
