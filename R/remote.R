#' Create a remote future whose value will be resolved asynchroneously in a remote process
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
remote <- function(expr, envir=parent.frame(), substitute=TRUE, globals=TRUE, persistent=TRUE, workers=NULL, user=NULL, revtunnel=TRUE, gc=FALSE, earlySignal=FALSE, myip=NULL, label=NULL, ...) {
  if (substitute) expr <- substitute(expr)

  stopifnot(length(workers) >= 1L, is.character(workers), !anyNA(workers))

  if (is.character(workers)) {
    homogeneous <- FALSE ## Calls plain 'Rscript'

    if (revtunnel) {
      ## Default is that reverse tunnel uses 127.0.0.1 / localhost.
      if (is.null(myip)) myip <- "127.0.0.1"
    } else if (is.null(myip)) {
      ## Guess what type of IP to use
    
      if (all(workers %in% c("localhost", "127.0.0.1"))) {
        ## For conveniency, if all workers are on the localhost,
        ## then we know that only the local machine will be used.
	
	## (a) We use 127.0.0.1 because it's slightly more generic 
	##     than localhost.
        myip <- "127.0.0.1"
	
	## (b) We can also use the pathname of the currently running
	##     R session, file.path(R.home("bin"), "Rscript"), rather
	##     than 'Rscript' which is the best guess we can make for
	##     a remote machine.  This is controlled by 'homogeneous'.
        homogeneous <- TRUE
      } else {
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

  future <- ClusterFuture(expr=expr, envir=envir, substitute=FALSE, globals=globals, persistent=persistent, workers=workers, user=user, master=myip, revtunnel=revtunnel, homogeneous=homogeneous, gc=gc, earlySignal=earlySignal, label=label, ...)
  run(future)
}
class(remote) <- c("remote", "multiprocess", "future", "function")
