#' Coerce an object to a cluster object
#'
#' @param x An object to be coerced.
#' @param \dots Additional arguments passed to the underlying coercion method.
#'            For `c(...)`, the clusters and cluster nodes to be combined.
#'
#' @return An object of class `cluster`.
#'
#' @export
#' @keywords internal
as.cluster <- function(x, ...) {
  UseMethod("as.cluster")
}

#' @rdname as.cluster
#' @export
as.cluster.cluster <- function(x, ...) x

#' @rdname as.cluster
#' @export
as.cluster.list <- function(x, ...) {
  x <- lapply(x, FUN = as.cluster, ...)
  x <- Reduce(c, x)
}

#' @rdname as.cluster
#' @export
as.cluster.SOCKnode <- function(x, ...) {
  cl <- structure(list(x), class = c("SOCKcluster", "cluster"))
}

#' @rdname as.cluster
#' @export
as.cluster.SOCK0node <- as.cluster.SOCKnode


#' @param recursive Not used.
#'
#' @return `c(...)` combine multiple clusters and / or cluster nodes into one cluster returned as an of class `cluster`.
#'
#' @rdname as.cluster
#' @export
c.cluster <- function(..., recursive = FALSE) {
  x <- list(...)
  x <- lapply(x, FUN = as.cluster)

  ## AD HOC: Use common demonator class as new class
  class <- lapply(x, FUN = class)
  class <- Reduce(intersect, class)
  stop_if_not(is.element("cluster", class))

  ## Combine list of clusters
  x <- lapply(x, FUN = unclass)
  x <- Reduce(c, x)
  class(x) <- class
  
  x  
}
