## Future assignment via "assign" function
futureAssign("A", {
  x <- 3
  x^2
})
cat("Value 'A': ", A, sep="")


## Equivalent via infix "assign" operator
A %<-% {
  x <- 3
  x^2
}
cat("Value 'A': ", A, sep="")


## A global variable
a <- 1

## Three future evaluations
A %<-% { 0.1 }
B %<-% { 0.2 }
C %<-% { z <- a+0.3 }

## Sleep until 'C' is available
cat("Value 'C': ", C, sep="")

## Sleep until 'A' is available
cat("Value 'A': ", A, sep="")

## Sleep until 'C' is available
cat("Value 'B': ", B, sep="")
