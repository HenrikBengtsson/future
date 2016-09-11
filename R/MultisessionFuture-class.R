#' @inheritParams ClusterFuture-class
#'
## Currently aliased in ClusterFuture
#' @export
MultisessionFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, local=!persistent, globals=TRUE, persistent=FALSE, workers=NULL, ...) {
  if (substitute) expr <- substitute(expr)
  f <- ClusterFuture(expr=expr, envir=envir, substitute=FALSE, local=local, globals=globals, persistent=persistent, workers=workers, ...)
  structure(f, class=c("MultisessionFuture", class(f)))
}


#' @export
getExpression.MultisessionFuture <- function(future, mc.cores=0L, ...) {
  NextMethod("getExpression", mc.cores=mc.cores)
}
