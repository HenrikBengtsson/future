#' A cluster future is a future whose value will be resolved asynchronously in a parallel process
#'
#' @inheritParams MultiprocessFuture-class
#' 
#' @param globals (optional) a logical, a character vector,
#' or a named list for controlling how globals are handled.
#' For details, see section 'Globals used by future expressions'
#' in the help for \code{\link{future}()}.
#' 
#' @param persistent If FALSE, the evaluation environment is cleared
#' from objects prior to the evaluation of the future.
#' 
#' @param workers A \code{\link[parallel:makeCluster]{cluster}}.
#' Alternatively, a character vector of host names or a numeric scalar,
#' for creating a cluster via \code{\link[parallel]{makeCluster}(workers)}.
#' 
#' @param revtunnel If TRUE, reverse SSH tunneling is used for the
#' PSOCK cluster nodes to connect back to the master R process.  This
#' avoids the hassle of firewalls, port forwarding and having to know
#' the internal / public IP address of the master R session.
#' 
#' @param user (optional) The user name to be used when communicating
#' with another host.
#' 
#' @param master (optional) The hostname or IP address of the master
#' machine running this node.
#' 
#' @param homogeneous If TRUE, all cluster nodes is assumed to use the
#' same path to \file{Rscript} as the main R session.  If FALSE, the
#' it is assumed to be on the PATH for each node.
#'
#' @param sessioninfo If TRUE, session information is collected for each
#' cluster node, otherwise not.  This also servers as testing that each
#' node is working properly.
#' 
#' @return An object of class \code{ClusterFuture}.
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
  stopifnot(length(workers) > 0)

  ## Attaching UUID for each cluster connection, unless already done.
  workers <- add_cluster_uuid(workers)

  ## Attached workers' session information, unless already done.
  ## FIXME: We cannot do this here, because it introduces a race condition
  ## where multiple similar requests may appear at the same time bringing
  ## the send/receive data to be out of sync and therefore corrupt the
  ## futures' values.
  ##  workers <- add_cluster_session_info(workers)
  
  ## Attach name to cluster?
  name <- attr(workers, "name")
  if (is.null(name)) {
    name <- digest(workers)
    stopifnot(length(name) > 0, nzchar(name))
    attr(workers, "name") <- name
  }

  ## Global objects
  gp <- getGlobalsAndPackages(expr, envir = envir, persistent = persistent, globals = globals)
  globals <- gp$globals
  packages <- unique(c(packages, gp$packages))
  expr <- gp$expr
  gp <- NULL

  f <- MultiprocessFuture(expr = expr, envir = envir, substitute = FALSE, globals = globals, packages = packages, local = local, gc = gc, persistent = persistent, workers = workers, node = NA_integer_, ...)
  structure(f, class = c("ClusterFuture", class(f)))
}



#' @importFrom parallel clusterCall clusterExport
#' @export
run.ClusterFuture <- function(future, ...) {
  debug <- getOption("future.debug", FALSE)
  
  if (future$state != 'created') {
    label <- future$label
    if (is.null(label)) label <- "<none>"
    stop(sprintf("A future ('%s') can only be launched once.", label))
  }
  
  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(future)

  sendCall <- importParallel("sendCall")
  workers <- future$workers
  expr <- getExpression(future)
  persistent <- future$persistent

  ## FutureRegistry to use
  reg <- sprintf("workers-%s", attr(workers, "name"))


  ## Next available cluster node
  node_idx <- requestNode(await = function() {
    FutureRegistry(reg, action = "collect-first")
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
    if (debug) mdebug("Attaching %d packages (%s) on cluster node #%d ...",
                      length(packages), hpaste(sQuote(packages)), node_idx)

    clusterCall(cl, fun = requirePackages, packages)

    if (debug) mdebug("Attaching %d packages (%s) on cluster node #%d ... DONE",
                      length(packages), hpaste(sQuote(packages)), node_idx)
  }
  

  ## (iii) Export globals
  globals <- globals(future)
  if (length(globals) > 0) {
    if (debug) {
      total_size <- asIEC(objectSize(globals))
      mdebug("Exporting %d global objects (%s) to cluster node #%d ...", length(globals), total_size, node_idx)
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
        mdebug("Exporting %s (%s) to cluster node #%d ...", sQuote(name), size, node_idx)
      }
      suppressWarnings({
        clusterCall(cl, fun = gassign, name, value)
      })
      if (debug) mdebug("Exporting %s (%s) to cluster node #%d ... DONE", sQuote(name), size, node_idx)
      value <- NULL
    }
    if (debug) mdebug("Exporting %d global objects (%s) to cluster node #%d ... DONE", length(globals), total_size, node_idx)
  }
  ## Not needed anymore
  globals <- NULL


  ## Add to registry
  FutureRegistry(reg, action = "add", future = future, earlySignal = FALSE)

  ## (iv) Launch future
  sendCall(cl[[1L]], fun = geval, args = list(expr))

  future$state <- 'running'

  if (debug) mdebug("%s started", class(future)[1])
  
  invisible(future)
}

#' @export
resolved.ClusterFuture <- function(x, timeout = 0.2, ...) {
  ## Is future even launched?
  if (x$state == 'created') return(FALSE)

  ## Is value already collected?
  if (x$state %in% c('finished', 'failed', 'interrupted')) return(TRUE)

  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(x)

  workers <- x$workers
  node_idx <- x$node
  cl <- workers[node_idx]

  ## Check if workers socket connection is available for reading
  node <- cl[[1]]

  ## FIXME: This assumes that the worker has a connection, which
  ## is _not_ the case for MPI clusters.  /HB 2017-03-06
  con <- node$con
  if (!is.null(con)) {
    ## WORKAROUND: Non-integer timeouts (at least < 2.0 seconds) may result in
    ## infinite waiting (PR17203).  Fixed in R devel r73470 (2017-10-05)
    ## and R 3.4.3 (https://github.com/HenrikBengtsson/Wishlist-for-R/issues/35)
    if (.Platform$OS.type != "windows" && getRversion() < "3.4.3") {
      timeout <- round(timeout, digits = 0L)
    }
    res <- socketSelect(list(con), write = FALSE, timeout = timeout)
  } else {
    ## stop("Not yet implemented: ", paste(sQuote(class(node)), collapse = ", "))
    warning(sprintf("resolved() is not yet implemented for workers of class %s. Will use value() instead and return TRUE", sQuote(class(node)[1])))
    value(x, signal = FALSE)
    res <- TRUE
  }

  ## Signal conditions early? (happens only iff requested)
  if (res) signalEarly(x, ...)

  res
}

#' @export
value.ClusterFuture <- function(future, ...) {
  ## Has the value already been collected?
  if (future$state %in% c('finished', 'failed', 'interrupted')) {
    return(NextMethod("value"))
  }

  if (future$state == 'created') {
    future <- run(future)
  }

  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(future)

  recvResult <- importParallel("recvResult")

  workers <- future$workers
  node_idx <- future$node
  cl <- workers[node_idx]

  ## If not, wait for process to finish, and
  ## then collect and record the value
  ack <- tryCatch({
    res <- recvResult(cl[[1]])
    TRUE
  }, simpleError = function(ex) ex)

  if (inherits(ack, "simpleError")) {
  
    ## If the worker uses a connection and that has changed, report on that!
    node <- cl[[1]]
    if (inherits(node$con, "connection")) {
      msg <- check_connection_uuid(node, future = future)
      if (!is.null(msg)) {
        on_failure <- getOption("future.cluster.invalidConnection", "error")
        if (on_failure == "error") {
          stop(FutureEvaluationError(msg, future = future))
        }
        warning(msg)
        return(sprintf("EXCEPTIONAL ERROR: %s", msg))
      }
    }

    ## AD HOC: This assumes that the worker has a hostname, which is not
    ## the case for MPI workers. /HB 2017-03-07
    info <- node$host
    info <- if (is.null(info)) NA_character_ else sprintf("on %s", sQuote(info))
    msg <- sprintf("Failed to retrieve the value of %s from cluster node #%d (%s). ", class(future)[1], node_idx, info)
    msg <- sprintf("%s The reason reported was %s", msg, sQuote(ack$message))
    ex <- FutureError(msg, call = ack$call, future = future)
    stop(ex)
  }
  stopifnot(isTRUE(ack))

  ## An error?
  if (inherits(res, "try-error")) {
    msg <- simpleError(res)
    mdebug("Received error on future: %s", sQuote(msg))
    attr(res, "condition") <- msg
  }

  ## Update value and state
  condition <- attr(res, "condition")
  if (inherits(condition, "simpleError")) {
    future$state <- 'failed'
    future$value <- condition
  } else {
    future$value <- res
    future$state <- 'finished'
  }
  res <- NULL ## Not needed anymore

  ## FutureRegistry to use
  reg <- sprintf("workers-%s", attr(workers, "name"))

  ## Remove from registry
  FutureRegistry(reg, action = "remove", future = future, earlySignal = FALSE)

  ## Garbage collect cluster worker?
  if (future$gc) {
    ## Cleanup global environment while at it
    if (!future$persistent) clusterCall(cl[1], fun = grmall)
    
    ## WORKAROUND: Need to clear cluster worker before garbage collection,
    ## cf. https://github.com/HenrikBengtsson/Wishlist-for-R/issues/27
    ## UPDATE: This has been fixed in R (>= 3.3.2) /HB 2016-10-13
    clusterCall(cl[1], function() NULL)
    
    clusterCall(cl[1], gc, verbose = FALSE, reset = FALSE)
  }

  NextMethod("value")
}


requestNode <- function(await, workers, timeout = getOption("future.wait.timeout", 30 * 24 * 60 * 60), delta = getOption("future.wait.interval", 0.2), alpha = getOption("future.wait.alpha", 1.01)) {
  debug <- getOption("future.debug", FALSE)
  
  stopifnot(inherits(workers, "cluster"))
  stopifnot(is.function(await))
  stopifnot(is.finite(timeout), timeout >= 0)
  stopifnot(is.finite(alpha), alpha > 0)

  ## Maximum number of nodes available
  total <- length(workers)

  ## FutureRegistry to use
  name <- attr(workers, "name")
  stopifnot(is.character(name), length(name) == 1L)
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

    if (debug) mdebug("Poll #%d (%s): usedNodes() = %d, workers = %d", iter, format(round(dt, digits = 2L)), used, total)

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
  stopifnot(any(avail))

  node_idx <- which(avail)[1L]
  stopifnot(is.numeric(node_idx), is.finite(node_idx), node_idx >= 1)

  node_idx
}


## This is needed in order to be able to assert that we later
## actually work with the same connection.  See R-devel thread
## 'closeAllConnections() can really mess things up' on 2016-10-30
## (https://stat.ethz.ch/pipermail/r-devel/2016-October/073331.html)
check_connection_uuid <- function(worker, future, on_failure = "error") {
  con <- worker$con
  ## Not a worker with a connection
  if (!inherits(con, "connection")) return(NULL)
  
  uuid <- attr(con, "uuid")
  uuid_now <- uuid_of_connection(con, keep_source = TRUE, must_work = FALSE)
  if (uuid_now == uuid) return(NULL) 
  sprintf("Failed to retrieve the value of %s from cluster node #%d on %s.  The reason is that the socket connection to the worker has been lost.  Its original UUID was %s (%s with description %s), but now it is %s (%s with description %s). This suggests that base::closeAllConnections() have been called, for instance via base::sys.save.image() which in turn is called if the R session (pid %s) is forced to terminate.", class(future)[1], future$node, sQuote(worker$host), uuid, sQuote(attr(uuid, "source")$class), sQuote(attr(uuid, "source")$description), uuid_now, sQuote(attr(uuid_now, "source")$class), sQuote(attr(uuid_now, "source")$description), Sys.getpid())
} ## check_connection_uuid()
