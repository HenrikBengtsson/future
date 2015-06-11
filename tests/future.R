library("future")

ovars <- ls()
oopts <- options("future"=lazy)

f <- future({
  42L
})

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


## Cleanup
options(oopts)
rm(list=setdiff(ls(), ovars))
