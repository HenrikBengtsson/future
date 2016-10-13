#' Create a Parallel Socket Cluster
#'
#' Creates a set of copies of \R running in parallel and communicating over sockets.
#'
#' @param spec Specification of the workers, e.g. number of background sessions or a vector of host names.
#' @param user The SSH user name.  If NULL, then it is not specified.
#' @param rshopts A character vector of optional SSH options.
#' @param revtunnel If TRUE, reverse SSH tunneling is used.
#' @param master The host name or the IP number of the master, as known to the workers.  If NULL, then it defaults to \code{Sys.info()[["nodename"]]} unless \code{revtunnel = TRUE} in case it defaults to \code{"localhost"}.
#' @param ... Additional parameters passed to \code{\link[parallel:makeCluster]{makeCluster}()}.
#' @param verbose If TRUE, informative messages are outputted.
#'
#' @return An object of class \code{c("SOCKcluster", "cluster")}.
#'
#' @example incl/makeCluster2.R
#'
#' @importFrom parallel makeCluster
#' @importFrom utils capture.output
#'
#' @export
makeCluster2 <- function(spec, user=NULL, rshopts=NULL, master=NULL, revtunnel=FALSE, ..., verbose=FALSE) {
  if (is.null(spec)) return(NULL)

  if (verbose) message("makeCluster2() ...")

  ## HACKS:
  ## 1. Don't pass ssh option `-l <user>` unless `user` is specified
  ## 2. Connect via reverse SSH tunneling.
  if (verbose) {
    message(sprintf("tweak_parallel_PSOCK(user=%s, revtunnel=%s, rshopts=%s)",
           is.null(user), revtunnel, is.null(rshopts)))
  }
  on.exit(tweak_parallel_PSOCK(reset=TRUE), add=TRUE)
  tweak_parallel_PSOCK(user=is.null(user), revtunnel=revtunnel, rshopts=is.null(rshopts), use127.0.0.1=FALSE, multirscript=TRUE)

  if (verbose) {
    on.exit(suppressMessages(untrace(system)), add=TRUE)
    suppressMessages(
      trace(system, print=FALSE, tracer=quote(message(command)))
    )
  }

  if (verbose) {
    on.exit(message("makeCluster2() ... DONE"), add=TRUE)
  }

  if (is.null(master)) {
    if (revtunnel) {
      master <- "localhost"
    } else {
      master <- Sys.info()[["nodename"]]
    }
  }
  
  args <- list(spec=spec, user=user, rshopts=rshopts, revtunnel=revtunnel, master=master, ...)
  
  if (isTRUE(args$manual)) {
    cluster <- do.call(makeCluster, args=args)
  } else {
    capture.output({
      cluster <- do.call(makeCluster, args=args)
    })
  }

  cluster
}
