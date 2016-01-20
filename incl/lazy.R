## Use lazy futures
plan(lazy)

## A global variable
a <- 0

## Create lazy future (implicitly)
f <- future({
  b <- 3
  c <- 2
  a * b * c
})

## Although 'f' is a _lazy_ future and therefore
## resolved/evaluates the future expression only
## when the value is requested, any global variables
## identified in the expression (here 'a') are
## "frozen" at the time point when the future is
## created.  Because of this, the 'a' in the
## the future expression preserved the zero value
## although we reassign it in the global environment
a <- 7
print(a)

v <- value(f)
print(v)
stopifnot(v == 0)


## Another example illustrating that lazy futures go
## hand-in-hand with lazy evaluation of arguments

## A function that may or may not touch it's argument
foo <- function(a, use=FALSE) {
  cat("foo() called\n")
  if (use) cat("a=", a, "\n", sep="")
}

## Create a future
x %<=% { cat("Pow!\n"); 1 }

## Lazy evaluation where argument is not used
foo(x, use=FALSE)
# Outputs:
# foo() called

## Lazy evaluation where argument is used
## Hint: 'x' will be resolved
foo(x, use=TRUE)
# Outputs:
# foo() called
# Pow!
# a=1

## Lazy evaluation where argument is used (again)
## Hint: 'x' is already resolved
foo(x, use=TRUE)
# Outputs:
# foo() called
# a=1
