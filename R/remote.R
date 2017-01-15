#' Create a remote future whose value will be resolved asynchronously in a remote process
#'
#' A remote future is a future that uses remote cluster evaluation,
#' which means that its \emph{value is computed and resolved
#' remotely in another process}.
#'
#' @inheritParams future
#' @inheritParams multiprocess
#' @inheritParams cluster
#' @param myip The external IP address of this machine.
#' If NULL, then it is inferred using an online service (default).
#'
#' @return A \link{ClusterFuture}.
#'
#' @example incl/remote.R
#'
#' @details
#' Note that remote futures use \code{persistent=TRUE} by default.
#'
#' @export
remote <- function(expr, envir=parent.frame(), substitute=TRUE, lazy=FALSE, seed=NULL, globals=TRUE, persistent=TRUE, workers=NULL, user=NULL, revtunnel=TRUE, gc=FALSE, earlySignal=FALSE, myip=NULL, label=NULL, ...) {
  if (substitute) expr <- substitute(expr)

  stopifnot(length(workers) >= 1L, is.character(workers), !anyNA(workers))

  if (is.character(workers)) {
    homogeneous <- FALSE ## Calls plain 'Rscript'

    if (all(workers %in% c("localhost", "127.0.0.1"))) {
      ## For conveniency, if all workers are on the localhost,
      ## then we know that only the local machine will be used.

      ## (a) We can use the pathname of the currently running R
      ##     session, file.path(R.home("bin"), "Rscript"), rather
      ##     than 'Rscript' which is the best guess we can make for
      ##     a remote machine.  This is controlled by 'homogeneous'.
      homogeneous <- TRUE

      ## (b) No need to request reverse SSH tunnel (won't happen
      ##     for 'localhost' anyways, but just in case)
      revtunnel <- FALSE

      ## (c) We use myip='127.0.0.1' because it's slightly more
      ##     generic than 'localhost'.
      myip <- "127.0.0.1"
    } else {
      if (revtunnel) {
        ## Default is that reverse tunnel uses 127.0.0.1 / localhost.
        if (is.null(myip)) myip <- "127.0.0.1"
      } else if (is.null(myip)) {
        ## The best guess we can make here is that the workers need
        ## to connect back using our exernal IP address.
        myip <- "<external>"
      }
    }
    stopifnot(length(myip) == 1, is.character(myip), !is.na(myip))
    
    if (myip == "<external>") {
      myip <- myExternalIP()
    } else if (myip == "<internal>") {
      myip <- myInternalIP()
    }
  } else if (!inherits(workers, "cluster")) {
    stop("Argument 'workers' is not of class 'cluster': ", class(workers)[1])
  }

  future <- ClusterFuture(expr=expr, envir=envir, substitute=FALSE, lazy=lazy, seed=seed, globals=globals, persistent=persistent, workers=workers, user=user, master=myip, revtunnel=revtunnel, homogeneous=homogeneous, gc=gc, earlySignal=earlySignal, label=label, ...)
  if (!future$lazy) future <- run(future)
  invisible(future)
}
class(remote) <- c("remote", "multiprocess", "future", "function")
attr(remote, "init") <- TRUE
