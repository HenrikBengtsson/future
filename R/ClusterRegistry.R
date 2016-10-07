#' @importFrom parallel makeCluster stopCluster
#' @importFrom utils capture.output
ClusterRegistry <- local({
  last <- NULL
  cluster <- NULL

  .makeCluster <- function(workers, user=NULL, master=NULL, revtunnel=FALSE, ...) {
    if (is.null(workers)) return(NULL)

    debug <- getOption("future.debug", FALSE)
    if (debug) mdebug("ClusterRegister:::.makeCluster() ...")

    ## HACKS:
    ## 1. Don't pass ssh option `-l <user>` unless `user` is specified
    ## 2. Connect via reverse SSH tunneling.
    if (debug) {
      mdebug("tweak_parallel_PSOCK(user=%s, revtunnel=%s, rshopts=TRUE)",
             is.null(user), revtunnel)
    }
    on.exit(tweak_parallel_PSOCK(reset=TRUE), add=TRUE)
    tweak_parallel_PSOCK(user=is.null(user), revtunnel=revtunnel, rshopts=TRUE)

    if (debug) {
      on.exit(suppressMessages(untrace(system)), add=TRUE)
      suppressMessages(
        trace(system, print=FALSE, tracer=quote(message(command)))
      )
    }

    if (debug) {
      on.exit(mdebug("ClusterRegister:::.makeCluster() ... DONE"), add=TRUE)
    }

    ## This will _not_ pass `master` iff master=NULL
    args <- list(workers, revtunnel=revtunnel, ...)
    args$master <- master
    
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
