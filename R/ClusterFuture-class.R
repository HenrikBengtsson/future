#' A cluster future is a future whose value will be resolved asynchronously in a parallel process
#'
#' @inheritParams MultiprocessFuture-class
#' @inheritParams Future-class
#' 
#' @param persistent If FALSE, the evaluation environment is cleared
#' from objects prior to the evaluation of the future.
#' 
#' @param workers A \code{\link[parallel:makeCluster]{cluster}} object,
#' a character vector of host names, a positive numeric scalar,
#' or a function.
#' If a character vector or a numeric scalar, a \code{cluster} object
#' is created using \code{\link{makeClusterPSOCK}(workers)}.
#' If a function, it is called without arguments \emph{when the future
#' is created} and its value is used to configure the workers.
#' The function should return any of the above types.
#' 
#' @param revtunnel If TRUE, reverse SSH tunneling is used for the
#' PSOCK cluster nodes to connect back to the master \R process.  This
#' avoids the hassle of firewalls, port forwarding and having to know
#' the internal / public IP address of the master \R session.
#' 
#' @param user (optional) The user name to be used when communicating
#' with another host.
#' 
#' @param master (optional) The hostname or IP address of the master
#' machine running this node.
#' 
#' @param homogeneous If TRUE, all cluster nodes is assumed to use the
#' same path to \file{Rscript} as the main \R session.  If FALSE, the
#' it is assumed to be on the PATH for each node.
#'
#' @return
#' \code{ClusterFuture()} returns an object of class \code{ClusterFuture}.
#'
#' @seealso
#' To evaluate an expression using "cluster future", see function
#' \code{\link{cluster}()}.
#'
#' @aliases MultisessionFuture MultisessionFuture-class
#' @export
#' @export MultisessionFuture
#' @importFrom digest digest
#' @name ClusterFuture-class
#' @keywords internal
ClusterFuture <- function(expr = NULL, envir = parent.frame(), substitute = FALSE, globals = TRUE, packages = NULL, local = !persistent, gc = FALSE, persistent = FALSE, workers = NULL, user = NULL, master = NULL, revtunnel = TRUE, homogeneous = TRUE, ...) {
  if (substitute) expr <- substitute(expr)

  if (is.function(workers)) workers <- workers()
  if (is.null(workers)) {
    getDefaultCluster <- importParallel("getDefaultCluster")
    workers <- getDefaultCluster()
  } else if (is.character(workers) || is.numeric(workers)) {
    workers <- ClusterRegistry("start", workers = workers, user = user, master = master, revtunnel = revtunnel, homogeneous = homogeneous)
  } else {
    workers <- as.cluster(workers)
  }
  if (!inherits(workers, "cluster")) {
    stop("Argument 'workers' is not of class 'cluster': ", paste(sQuote(class(workers)), collapse = ", "))
  }
  stop_if_not(length(workers) > 0)

  ## Attached workers' session information, unless already done.
  ## FIXME: We cannot do this here, because it introduces a race condition
  ## where multiple similar requests may appear at the same time bringing
  ## the send/receive data to be out of sync and therefore corrupt the
  ## futures' values.
  ##  workers <- add_cluster_session_info(workers)
  
  ## Attach name to cluster?
  name <- attr(workers, "name", exact = TRUE)
  if (is.null(name)) {
    name <- digest(workers)
    stop_if_not(length(name) > 0, nzchar(name))
    attr(workers, "name") <- name
  }

  ## Global objects
  gp <- getGlobalsAndPackages(expr, envir = envir, persistent = persistent, globals = globals)
  globals <- gp$globals
  packages <- unique(c(packages, gp$packages))
  expr <- gp$expr
  gp <- NULL

  f <- MultiprocessFuture(expr = expr, envir = envir, substitute = FALSE, globals = globals, packages = packages, local = local, gc = gc, persistent = persistent, workers = workers, node = NA_integer_, version = "1.8", ...)
  f$.callResult <- TRUE
  structure(f, class = c("ClusterFuture", class(f)))
}



#' @importFrom parallel clusterCall clusterExport
#' @export
run.ClusterFuture <- function(future, ...) {
  debug <- getOption("future.debug", FALSE)
  
  if (future$state != 'created') {
    label <- future$label
    if (is.null(label)) label <- "<none>"
    stop(FutureError(sprintf("A future ('%s') can only be launched once.", label), future = future))
  }
  
  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(future)

  sendCall <- importParallel("sendCall")
  workers <- future$workers
  expr <- getExpression(future)
  persistent <- future$persistent

  ## FutureRegistry to use
  reg <- sprintf("workers-%s", attr(workers, "name", exact = TRUE))


  ## Next available cluster node
  node_idx <- requestNode(await = function() {
    FutureRegistry(reg, action = "collect-first", earlySignal = TRUE)
  }, workers = workers)
  future$node <- node_idx

  ## Cluster node to use
  cl <- workers[node_idx]


  ## WORKAROUND: When running covr::package_coverage(), the
  ## package being tested may actually not be installed in
  ## library path used by covr.  We here add that path iff
  ## covr is being used. /HB 2016-01-15
  if (is.element("covr", loadedNamespaces())) {
    if (debug) mdebug("covr::package_coverage() workaround ...")
    libPath <- .libPaths()[1]
    clusterCall(cl, fun = function() .libPaths(c(libPath, .libPaths())))
    if (debug) mdebug("covr::package_coverage() workaround ... DONE")
  }


  ## (i) Reset global environment of cluster node such that
  ##     previous futures are not affecting this one, which
  ##     may happen even if the future is evaluated inside a
  ##     local, e.g. local({ a <<- 1 }).
  if (!persistent) {
    clusterCall(cl, fun = grmall)
  }


  ## (ii) Attach packages that needs to be attached
  ##      NOTE: Already take care of by getExpression() of the Future class.
  ##      However, if we need to get an early error about missing packages,
  ##      we can get the error here before launching the future.
  packages <- packages(future)
  if (future$earlySignal && length(packages) > 0) {
    if (debug) mdebugf("Attaching %d packages (%s) on cluster node #%d ...",
                      length(packages), hpaste(sQuote(packages)), node_idx)

    clusterCall(cl, fun = requirePackages, packages)

    if (debug) mdebugf("Attaching %d packages (%s) on cluster node #%d ... DONE",
                      length(packages), hpaste(sQuote(packages)), node_idx)
  }
  

  ## (iii) Export globals
  globals <- globals(future)
  if (length(globals) > 0) {
    if (debug) {
      total_size <- asIEC(objectSize(globals))
      mdebugf("Exporting %d global objects (%s) to cluster node #%d ...", length(globals), total_size, node_idx)
    }
    for (name in names(globals)) {
      ## For instance sendData.SOCKnode(...) may generate warnings
      ## on packages not being available after serialization, e.g.
      ##  In serialize(data, node$con) :
      ## package:future' may not be available when loading
      ## Here we'll suppress any such warnings.
      value <- globals[[name]]
      if (debug) {
        size <- asIEC(objectSize(value))
        mdebugf("Exporting %s (%s) to cluster node #%d ...", sQuote(name), size, node_idx)
      }
      suppressWarnings({
        clusterCall(cl, fun = gassign, name, value)
      })
      if (debug) mdebugf("Exporting %s (%s) to cluster node #%d ... DONE", sQuote(name), size, node_idx)
      value <- NULL
    }
    if (debug) mdebugf("Exporting %d global objects (%s) to cluster node #%d ... DONE", length(globals), total_size, node_idx)
  }
  ## Not needed anymore
  globals <- NULL


  ## Add to registry
  FutureRegistry(reg, action = "add", future = future, earlySignal = FALSE)

  ## (iv) Launch future
  sendCall(cl[[1L]], fun = geval, args = list(expr))

  future$state <- 'running'

  if (debug) mdebugf("%s started", class(future)[1])
  
  invisible(future)
}

#' @export
resolved.ClusterFuture <- function(x, timeout = 0.2, ...) {
  ## Is future even launched?
  if (x$state == 'created') return(FALSE)

  ## Is value already collected?
  if (!is.null(x$result)) {
    ## Signal conditions early?
    signalEarly(x, ...)
    return(TRUE)
  }

  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(x)

  workers <- x$workers
  node_idx <- x$node
  cl <- workers[node_idx]

  ## Check if workers socket connection is available for reading
  node <- cl[[1]]

  if (!is.null(con <- node$con)) {
    ## AD HOC/SPECIAL CASE: Skip if connection has been serialized and lacks internal representation. /HB 2018-10-27
    connId <- connectionId(con)
    if (!is.na(connId) && connId < 0L) return(FALSE)

    isValid <- isValidConnection(con)
    if (!isValid) {
      label <- x$label
      if (is.null(label)) label <- "<none>"
      stop(FutureError(sprintf("Cannot resolve %s (%s), because the connection to the worker is corrupt: %s", class(x)[1], label, attr(isValid, "reason", exact = TRUE)), future = future))
    }

    ## WORKAROUND: Non-integer timeouts (at least < 2.0 seconds) may result in
    ## infinite waiting (PR17203).  Fixed in R devel r73470 (2017-10-05)
    ## and R 3.4.3 (https://github.com/HenrikBengtsson/Wishlist-for-R/issues/35)
    if (.Platform$OS.type != "windows" && getRversion() < "3.4.3") {
      timeout <- round(timeout, digits = 0L)
    }
    res <- socketSelect(list(con), write = FALSE, timeout = timeout)
  } else if (inherits(node, "MPInode")) {
    res <- resolveMPI(x)
  } else {
    ## stop("Not yet implemented: ", paste(sQuote(class(node)), collapse = ", "))
    warning(sprintf("resolved() is not yet implemented for workers of class %s. Will use value() instead and return TRUE", sQuote(class(node)[1])))
    value(x, stdout = FALSE, signal = FALSE)
    res <- TRUE
  }

  ## Signal conditions early? (happens only iff requested)
  if (res) signalEarly(x, ...)

  res
}

#' @export
result.ClusterFuture <- function(future, ...) {
  debug <- getOption("future.debug", FALSE)
  if (debug) mdebug("result() for ClusterFuture ...")
  
  ## Has the result already been collected?
  result <- future$result
  if (!is.null(result)) {
    if (debug) mdebugf("- result already collected: %s", class(result)[1])
    if (inherits(result, "FutureError")) stop(result)
    if (debug) mdebug("result() for ClusterFuture ... done")
    return(result)
  }

  if (future$state == "created") {
    if (debug) mdebug("- starting non-launched future")
    future <- run(future)
  }

  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(future)

  recvResult <- importParallel("recvResult")

  workers <- future$workers
  node_idx <- future$node
  cl <- workers[node_idx]
  node <- cl[[1]]

  if (!is.null(con <- node$con)) {
    if (debug) mdebugf("- Validating connection of %s", class(future)[1])
    isValid <- isValidConnection(con)
    if (!isValid) {
      label <- future$label
      if (is.null(label)) label <- "<none>"
      stop(FutureError(sprintf("Cannot receive results for %s (%s), because the connection to the worker is corrupt: %s", class(future)[1], label, attr(isValid, "reason", exact = TRUE)), future = future))
    }
  }

  ## If not, wait for process to finish, and
  ## then collect and record the value
  ack <- tryCatch({
    result <- recvResult(node)
    TRUE
  }, simpleError = function(ex) ex)

  if (debug) mdebugf("- class(result): %s", class(result)[1])

  if (inherits(ack, "simpleError")) {
    if (debug) mdebugf("- parallel:::recvResult() produced an error: %s", conditionMessage(ack))
    label <- future$label
    if (is.null(label)) label <- "<none>"
    
    pid <- node$session_info$process$pid
    pid_info <- if (is.numeric(pid)) sprintf("PID %g", pid) else NULL

    ## AD HOC: This assumes that the worker has a hostname, which is not
    ## the case for MPI workers. /HB 2017-03-07
    host <- node$host
    localhost <- isTRUE(attr(host, "localhost", exact = TRUE))
    host_info <- if (!is.null(host)) {
      sprintf("on %s%s", if (localhost) "localhost " else "", sQuote(host))
    } else NULL
    
    info <- paste(c(pid_info, host_info), collapse = " ")
    msg <- sprintf("Failed to retrieve the value of %s (%s) from cluster %s #%d (%s).",
                   class(future)[1], label, class(node)[1], node_idx, info)
    msg <- sprintf("%s The reason reported was %s", msg, sQuote(ack$message))
    
    ## POST-MORTEM ANALYSIS:
    postmortem <- list()
    
    ## (a) Did the worker use a connection that changed?
    if (inherits(node$con, "connection")) {
      postmortem$connection <- check_connection_details(node, future = future)
    }

    ## (b) Did a localhost worker process terminate?
    if (!is.null(host)) {
      if (localhost && is.numeric(pid)) {
        alive <- pid_exists(pid)
        if (is.na(alive)) {
          msg2 <- "Failed to determined whether a process with this PID exists or not, i.e. cannot infer whether localhost worker is alive or not."
        } else if (alive) {
          msg2 <- "A process with this PID exists, which suggests that the localhost worker is still alive."
        } else {
          msg2 <- "No process exists with this PID, i.e. the localhost worker is no longer alive."
        }
        postmortem$alive <- msg2
      }
    }

    postmortem <- unlist(postmortem, use.names = FALSE)
    if (!is.null(postmortem)) {
       postmortem <- sprintf("Post-mortem diagnostic: %s",
                             paste(postmortem, collapse = ". "))
       msg <- paste0(msg, ". ", postmortem)
    }

    ex <- FutureError(msg, call = ack$call, future = future)
    future$result <- ex
    stop(ex)          
  }
  stop_if_not(isTRUE(ack))

  future$result <- result
  
  if (!inherits(result, "FutureResult")) {
    str(list(node_idx = node_idx, node = node))
    hint <- sprintf("This suggests that the communication with %s worker (%s #%d) is out of sync.",
                    class(future)[1], sQuote(class(node)[1]), node_idx)
    ex <- UnexpectedFutureResultError(future, hint = hint)
    future$result <- ex
    stop(ex)
  }

  future$state <- "finished"

  ## FutureRegistry to use
  reg <- sprintf("workers-%s", attr(workers, "name", exact = TRUE))

  ## Remove from registry
  FutureRegistry(reg, action = "remove", future = future, earlySignal = FALSE)

  ## Always signal immediateCondition:s and as soon as possible.
  ## They will always be signaled if they exist.
  signalImmediateConditions(future)

  ## Garbage collect cluster worker?
  if (future$gc) {
    ## Cleanup global environment while at it
    if (!future$persistent) clusterCall(cl[1], fun = grmall)
    
    ## WORKAROUND: Need to clear cluster worker before garbage collection,
    ## cf. https://github.com/HenrikBengtsson/Wishlist-for-R/issues/27
    ## UPDATE: This has been fixed in R (>= 3.3.2) /HB 2016-10-13
    ## Return a value identifiable for troubleshooting purposes
    clusterCall(cl[1], function() "future-clearing-cluster-worker")
    
    clusterCall(cl[1], gc, verbose = FALSE, reset = FALSE)
  }

  if (debug) mdebug("result() for ClusterFuture ... done")

  result
}


requestNode <- function(await, workers, timeout = getOption("future.wait.timeout", as.numeric(Sys.getenv("R_FUTURE_WAIT_TIMEOUT", 30 * 24 * 60 * 60))), delta = getOption("future.wait.interval", as.numeric(Sys.getenv("R_FUTURE_WAIT_INTERVAL", "0.2"))), alpha = getOption("future.wait.alpha", as.numeric(Sys.getenv("R_FUTURE_WAIT_ALPHA", "1.01")))) {
  debug <- getOption("future.debug", FALSE)
  
  stop_if_not(inherits(workers, "cluster"))
  stop_if_not(is.function(await))
  stop_if_not(is.finite(timeout), timeout >= 0)
  stop_if_not(is.finite(alpha), alpha > 0)

  ## Maximum number of nodes available
  total <- length(workers)

  ## FutureRegistry to use
  name <- attr(workers, "name", exact = TRUE)
  stop_if_not(is.character(name), length(name) == 1L)
  reg <- sprintf("workers-%s", name)
  
  usedNodes <- function() {
    ## Number of unresolved cluster futures
    length(FutureRegistry(reg, action = "list", earlySignal = FALSE))
  }


  t0 <- Sys.time()
  dt <- 0
  iter <- 1L
  interval <- delta
  finished <- FALSE
  while (dt <= timeout) {
    ## Check for available nodes
    used <- usedNodes()
    finished <- (used < total)
    if (finished) break

    if (debug) mdebugf("Poll #%d (%s): usedNodes() = %d, workers = %d", iter, format(round(dt, digits = 2L)), used, total)

    ## Wait
    Sys.sleep(interval)
    interval <- alpha * interval
    
    ## Finish/close workers, iff possible
    await()

    iter <- iter + 1L
    dt <- difftime(Sys.time(), t0)
  }

  if (!finished) {
    msg <- sprintf("TIMEOUT: All %d cluster nodes are still occupied after %s (polled %d times)", total, format(round(dt, digits = 2L)), iter)
    if (debug) mdebug(msg)
    stop(msg)
  }

  ## Find which node is available
  avail <- rep(TRUE, times = length(workers))
  futures <- FutureRegistry(reg, action = "list", earlySignal = FALSE)
  nodes <- unlist(lapply(futures, FUN = function(f) f$node), use.names = FALSE)
  avail[nodes] <- FALSE

  ## Sanity check
  stop_if_not(any(avail))

  node_idx <- which(avail)[1L]
  stop_if_not(is.numeric(node_idx), is.finite(node_idx), node_idx >= 1)

  node_idx
}
