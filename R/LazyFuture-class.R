#' A lazy future represents a \link{Future} whose value will be resolved at the time when it is requested
#'
#' @param object An R \link[base]{environment}.
#' @param ... Not used.
#'
#' @return An object of class \code{LazyFuture}.
#'
#' @seealso
#' To evaluate an expression using "lazy future", see function
#' \code{\link{lazy}()}.
#' %% Alternatively, use the infix assignment operator \code{\link{\%<-\%}}.
#'
#' @export
#' @name LazyFuture-class
LazyFuture <- function(object=new.env(parent=emptyenv()), ...) {
  if (!is.environment(object)) {
    stop(sprintf("Argument 'object' is not an environment: ", class(object)))
  }
  Future(structure(object, class=c("LazyFuture", class(object))))
}


#' @export
value.LazyFuture <- function(future, onCondition=c("signal", "return"), ...) {
  get("value", envir=future, inherits=FALSE)
}

#' @export
isResolved.LazyFuture <- function(future, ...) {
  value(future, onCondition="return")
  TRUE
}
