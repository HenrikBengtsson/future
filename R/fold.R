#' Efficient fold / reduce / accumulate / combine of a vector
#'
#' @param x A vector.
#' 
#' @param f A binary function, i.e. a function take takes two arguments.
#'
#' @param left If `TRUE`, vector is combined from the left (the first element),
#' otherwise the right (the last element).
#'
#' @param unname If `TRUE`, function `f` is called as `f(unname(y), x[[ii]])`,
#' otherwise as `f(y, x[[ii]])`, which may introduce name `"y"`.
#'
#' @param threshold An integer (>= 2) specifying the length where the
#' recursive divide'and'conquer call will stop and incremental building of
#' the partial value is performed.  Using `threshold = +Inf` will disable
#' recursive folding.
#'
#' @return A vector.
#' 
#' @details
#' In order for recursive folding to give the same results as non-recursive
#' folding, binary function `f` must be _associative_ with itself, i.e.
#' `f(f(x[[1]], x[[2]]), x[[3]])` equals `f(x[[1]], f(x[[2]]), x[[3]])`.
#' 
#' This function is a more efficient (memory and speed) of
#' [`base::Reduce(f, x, right = !left, accumulate = FALSE)`][base::Reduce],
#' especially when `x` is long.
fold <- function(x, f, left = TRUE, unname = TRUE, threshold = 1000L) {
  f <- match.fun(f)
  n <- length(x)
  if (n == 0L) return(NULL)
  if (!is.vector(x) || is.object(x)) x <- as.list(x)
  if (n == 1L) return(x[[1]])
  stopifnot(length(left) == 1, is.logical(left), !is.na(left))
  stopifnot(length(threshold) == 1, is.numeric(threshold), !is.na(threshold),
            threshold >= 2)

  if (n >= threshold) {
    ## Divide and conquer, i.e. split, build the two parts, and merge
    n_mid <- n %/% 2
    y_left  <- Recall(f = f, x = x[     1:n_mid], left = left,
                      threshold = threshold)
    y_right <- Recall(f = f, x = x[(n_mid+1L):n], left = left,
                      threshold = threshold)
    y <- f(y_left, y_right)
    y_left <- y_right <- NULL
  } else {
    ## Incrementally build result vector
    if (left) {
      y <- x[[1L]]
      if (unname) {
        for (ii in 2:n)
          y <- forceAndCall(n = 2L, FUN = f, unname(y), x[[ii]])
      } else {
        for (ii in 2:n)
          y <- forceAndCall(n = 2L, FUN = f,         y, x[[ii]])
      }
    } else {
      y <- x[[n]]
      if (unname) {
        for (ii in (n-1):1)
          y <- forceAndCall(n = 2L, FUN = f, x[[ii]], unname(y))
      } else {
        for (ii in (n-1):1)
          y <- forceAndCall(n = 2L, FUN = f, x[[ii]],         y)
      }
    }
  }

  y
}
