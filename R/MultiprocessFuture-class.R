#' A multiprocess future is a future whose value will be resolved asynchronously in a parallel process
#'
#' @inheritParams Future-class
#' 
#' @param \dots Additional named elements passed to [Future()].
#'
#' @return An object of class `MultiprocessFuture`.
#'
#' @seealso
#' To evaluate an expression using "multiprocess future", see function
#' [multiprocess()].
#'
#' @export
#' @name MultiprocessFuture-class
#' @keywords internal
MultiprocessFuture <- function(expr = NULL, substitute = TRUE, envir = parent.frame(), ...) {
  if (substitute) expr <- substitute(expr)

  future <- Future(expr = expr, envir = envir, substitute = FALSE, ...)
  future <- structure(future, class = c("MultiprocessFuture", class(future)))
  future
}
