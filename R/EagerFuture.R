#' A eager future represents a \link{Future} whose value will be resolved immediately
#'
#' @param object An R \link[base]{environment}.
#' @param ... Not used.
#'
#' @return An object of class \code{EagerFuture}.
#'
#' @seealso
#' To evaluate an expression using "eager future", see function
#' \code{\link{eager}()}.
#'
#' @export
#' @name EagerFuture-class
EagerFuture <- function(object=new.env(parent=emptyenv()), ...) {
  if (!is.environment(object)) {
    stop(sprintf("Argument 'object' is not an environment: ", class(object)))
  }
  Future(structure(object, class=c("EagerFuture", class(object))))
}


#' @export
value.EagerFuture <- function(future, onCondition=c("signal", "return"), ...) {
  get("value", envir=future, inherits=FALSE)
}

#' @export
isResolved.EagerFuture <- function(future, ...) {
  TRUE
}
