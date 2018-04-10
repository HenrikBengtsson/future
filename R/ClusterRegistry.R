#' @importFrom parallel stopCluster
ClusterRegistry <- local({
  last <- NULL
  cluster <- NULL

  function(action = c("get", "start", "stop"), workers = NULL, ...) {
    action <- match.arg(action)

    if (is.null(workers)) {
    } else if (is.numeric(workers)) {
      workers <- as.integer(workers)
      stop_if_not(length(workers) == 1, is.finite(workers))
    } else if (is.character(workers)) {
      stop_if_not(length(workers) >= 1, !anyNA(workers))
      workers <- sort(workers)
    } else {
      stop("Unknown mode of argument 'workers': ", mode(workers))
    }

    if (length(cluster) == 0L && action != "stop") {
      cluster <<- .makeCluster(workers, ...)
      last <<- workers
    }

    if (action == "get") {
      return(cluster)
    } else if (action == "start") {
      ## Already setup?
      if (!identical(workers, last)) {
        ClusterRegistry(action = "stop")
        cluster <<- .makeCluster(workers, ...)
        last <<- workers
      }
    } else if (action == "stop") {
      if (length(cluster) > 0L) try(stopCluster(cluster), silent = TRUE)
      cluster <<- NULL
      last <<- NULL
    }

    invisible(cluster)
  }
}) ## ClusterRegistry()


.makeCluster <- function(workers, ...) {
  if (length(workers) == 0L) return(NULL)
  makeClusterPSOCK(workers, ...)
} ## .makeCluster()
