## Future assignment via "assign" function
futureAssign("A", {
  x <- 3
  x^2
})
message("Value 'A': ", A)


## Equivalent via infix "assign" operator
A %<=% {
  x <- 3
  x^2
}
message("Value 'A': ", A)


## A global variable
a <- 1

## Three future evaluations
A %<=% { 0.1 }
B %<=% { 0.2 }
C %<=% { z <- a+0.3 }

## Sleep until 'C' is available
message("Value 'C': ", C)

## Sleep until 'A' is available
message("Value 'A': ", A)

## Sleep until 'C' is available
message("Value 'B': ", B)
