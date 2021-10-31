#' Create a remote future whose value will be resolved asynchronously in a remote process
#'
#' A remote future is a future that uses remote cluster evaluation,
#' which means that its _value is computed and resolved
#' remotely in another process_.
#'
#' @details
#' This function is _not_ meant to be called directly.  Instead, the
#' typical usages are:
#'
#' ```r
#' # Evaluate futures on remote machine 'server.example.org', and
#' # any nested ones sequentially (default) on that remote machine
#' plan(remote, workers = "server.example.org")
#'
#' # Evaluate futures on remote machine 'server.example.org', and
#' # nested ones in parallel on that remote machine
#' plan(list(
#'    tweak(remote, workers = "server.example.org"),
#'    multisession
#' ))
#'
#' # Evaluate futures on remote machine 'server.example.org', and
#' # nested ones in parallel on the remote machines n1, n2, and n3.
#' plan(list(
#'   tweak(remote, workers = "server.example.org"),
#'   tweak(cluster, workers = c("n1", "n2", "n3"))
#' ))
#' ```
#'
#' @inheritParams ClusterFuture-class
#' @inheritParams multiprocess
#' @inheritParams Future-class
#' @inheritParams future
#' 
#' @param myip The external IP address of this machine.
#' If NULL, then it is inferred using an online service (default).
#'
#' @return A \link{ClusterFuture}.
#'
#' @example incl/remote.R
#'
#' @section 'remote' versus 'cluster':
#' The `remote` plan is a very similar to the [`cluster`] plan, but provides
#' more convenient default argument values when connecting to remote machines.  #' Specifically, `remote` uses `persistent = TRUE` by default, and it sets
#' `homogeneous`, `revtunnel`, and `myip` "wisely" depending on the value of
#' `workers`.
#' ' See below for example on how `remote` and `cluster` are related.
#'
#' @export
remote <- function(..., workers = NULL, revtunnel = TRUE, myip = NULL, persistent = TRUE, homogeneous = TRUE, envir = parent.frame()) {
  if (is.function(workers)) workers <- workers()
  stop_if_not(length(workers) >= 1L, !anyNA(workers))

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

      ## (c) We use myip = '127.0.0.1' because it's slightly more
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
    stop_if_not(length(myip) == 1, is.character(myip), !is.na(myip))
    
    if (myip == "<external>") {
      myip <- myExternalIP()
    } else if (myip == "<internal>") {
      myip <- myInternalIP()
    }
  } else if (!inherits(workers, "cluster")) {
    stopf("Argument 'workers' is not of class 'cluster': %s", class(workers)[1])
  }

  future <- ClusterFuture(..., workers = workers, master = myip, revtunnel = revtunnel, homogeneous = homogeneous, persistent = persistent, envir = envir)
  if (!future$lazy) future <- run(future)
  invisible(future)
}
class(remote) <- c("remote", "cluster", "multiprocess", "future", "function")
attr(remote, "init") <- TRUE
