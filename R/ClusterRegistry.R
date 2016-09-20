#' @importFrom parallel makeCluster stopCluster
#' @importFrom utils capture.output
ClusterRegistry <- local({
  last <- NULL
  cluster <- NULL

  .makeCluster <- function(workers, ...) {
    if (is.null(workers)) return(NULL)

    ## Arguments to be passed to parallel::makeCluster()
    args <- list(workers, ...)
    ## Drop 'user' if NULL
    if (is.null(args$user)) args$user <- NULL
    
    capture.output({
      cluster <- do.call(makeCluster, args=args)
    })
    cluster
  }

  function(action=c("get", "start", "stop"), workers=NULL, ...) {
    action <- match.arg(action)

    if (is.null(workers)) {
    } else if (is.numeric(workers)) {
      workers <- as.integer(workers)
      stopifnot(length(workers) == 1, is.finite(workers))
    } else if (is.character(workers)) {
      stopifnot(length(workers) >= 1, !anyNA(workers))
      workers <- sort(workers)
    } else {
      stop("Unknown mode of argument 'workers': ", mode(workers))
    }

    if (is.null(cluster) && action != "stop") {
      cluster <<- .makeCluster(workers, ...)
      last <<- workers
    }

    if (action == "get") {
      return(cluster)
    } else if (action == "start") {
      ## Already setup?
      if (!identical(workers, last)) {
        ClusterRegistry(action="stop")
        cluster <<- .makeCluster(workers, ...)
        last <<- workers
      }
    } else if (action == "stop") {
      if (!is.null(cluster)) try(stopCluster(cluster), silent=TRUE)
      cluster <<- NULL
      last <<- NULL
    }

    invisible(cluster)
  }
}) ## ClusterRegistry()
