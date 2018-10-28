connection_details <- function(con) {
  if (inherits(con, "connection_details")) return(con)
  details <- summary(con)
  details$opened <- NULL
  details$index <- as.integer(con)
  structure(details, class = "connection_details")
}


connection_info <- function(con) {
  if (inherits(con, "connection_details")) {
    details <- con
  } else {
    details <- attr(con, "details", exact = TRUE)
    if (is.null(details)) {
      stop_if_not(inherits(con, "connection"))
      details <- connection_details(con)
    }
  }
  info <- unlist(lapply(details, FUN = function(x) {
    if (is.character(x)) x <- sprintf('"%s"', x)
    x <- paste0(x, collapse = "+")
  }), use.names = FALSE)
  info <- sprintf("%s=%s", names(details), info)
  info <- paste(info, collapse = ", ")
  info <- sprintf("connection: %s", info)
  stop_if_not(is.character(info), length(info) == 1L, !is.na(info))
  info
}


is_connection_valid <- function(con) {
  details <- attr(con, "details", exact = TRUE)
  stop_if_not(is.list(details))

  res <- TRUE
  index <- as.integer(con)
  avail_indices <- getAllConnections()
  if (!is.element(index, avail_indices)) {
    res <- FALSE
    attr(res, "reason") <- sprintf("Connection (%s) is not part of the currently registed set of R connections: %d not in {%s}", connection_info(con), index, hpaste(avail_indices))
  } else {
    current_con <- getConnection(index)
    current_details <- connection_details(current_con)
    res <- identical(details, current_details)
    if (!isTRUE(res)) {
      attr(res, "reason") <- sprintf("Connection (%s) is different from the currently registered R connection (%s) with the same index: %d", connection_info(con), connection_info(current_details), index)
    }
  }
  
  res
}


## Recording details for each cluster connection.
## This is needed in order to be able to assert that we later
## actually work with the same connection.  See R-devel thread
## 'closeAllConnections() can really mess things up' on 2016-10-30
## (https://stat.ethz.ch/pipermail/r-devel/2016-October/073331.html)
annotate_cluster_connections <- function(cl) {
  stop_if_not(inherits(cl, "cluster"))
  
  for (ii in seq_along(cl)) {
    node <- cl[[ii]]
    if (is.null(node)) next  ## Happens with dryrun = TRUE

    ## For workers with connections, record connection details
    if (!is.null(con <- node$con)) {
      details <- attr(con, "details", exact = TRUE)
      if (is.null(details)) {
        attr(con, "details") <- connection_details(con)
        node$con <- con
        cl[[ii]] <- node
      }
    }
  }
  
  cl
}


## This is needed in order to be able to assert that we later
## actually work with the same connection.  See R-devel thread
## 'closeAllConnections() can really mess things up' on 2016-10-30
## (https://stat.ethz.ch/pipermail/r-devel/2016-October/073331.html)
check_connection_details <- function(worker, future, on_failure = "error") {
  con <- worker$con
  
  ## Not a worker with a connection?
  if (!inherits(con, "connection")) return(NULL)

  ## No recorded connection details?
  details <- attr(con, "details", exact = TRUE)
  if (!inherits(details, "connection_details")) return(NULL)

  is_valid <- is_connection_valid(con)
  if (is_valid) return(NULL)

  label <- future$label
  if (is.null(label)) label <- "<none>"

  msg <- sprintf("The socket connection to the worker of %s future (%s) is lost or corrupted: %s", class(future)[1], label, attr(is_valid, "reason", exact = TRUE))
  msg <- paste(msg, "This suggests that base::closeAllConnections() have been called, for instance via base::sys.save.image() which in turn is called if the R session (pid %s) is forced to terminate.", Sys.getpid())
  msg
}
