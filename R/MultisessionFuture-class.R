## Currently aliased in ClusterFuture
#' @export
MultisessionFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, local=!persistent, persistent=FALSE, cluster=NULL, ...) {
  if (substitute) expr <- substitute(expr)
  f <- ClusterFuture(expr=expr, envir=envir, substitute=FALSE, local=local, persistent=persistent, cluster=cluster, ...)
  structure(f, class=c("MultisessionFuture", class(f)))
}
