## Currently aliased in ClusterFuture
#' @export
MultisessionFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, local=TRUE, cluster=NULL, ...) {
  if (substitute) expr <- substitute(expr)
  f <- ClusterFuture(expr=expr, envir=envir, substitute=FALSE, local=local, cluster=cluster, ...)
  structure(f, class=c("MultisessionFuture", class(f)))
}
