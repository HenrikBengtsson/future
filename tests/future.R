library("future")

ovars <- ls()
oopts <- options(warn=1)
plan(lazy)

f <- future({
  42L
})

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
