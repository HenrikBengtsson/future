#' @importFrom utils capture.output
connectionId <- function(con) {
  stop_if_not(inherits(con, "connection"))
  
  ## stdin, stdout, or stderr?
  index <- as.integer(con)
  if (index <= 2) return(index)

  id <- attr(con, "conn_id")
  if (is.null(id)) return(NA_integer_)
  
  id <- capture.output(print(id))
  
  ## Has the connection been serialized?
  if (id == "<pointer: (nil)>") return(-1L)
  
  id <- gsub("(<pointer:| |>)", "", id)
  id <- strtoi(id, base = 16L)
  
  id
}

connectionInfo <- function(con) {
  index <- as.integer(con)
  if (is.element(index, getAllConnections())) {
    details <- summary(con)
  } else {
    details <- as.list(rep(NA_character_, times = 7L))
    names(details) <- c("description", "class", "mode", "text", "opened", "can read", "can write")
  }
  details$id <- connectionId(con)
  info <- unlist(lapply(details, FUN = function(x) {
    if (is.character(x)) paste0('"', x, '"') else x
  }), use.names = FALSE)
  info <- sprintf("%s=%s", names(details), info)
  info <- paste(info, collapse = ", ")
  info <- sprintf("connection: %s", info)
  info
}


isValidConnection <- function(con) {
  stop_if_not(inherits(con, "connection"))
  index <- as.integer(con)
  
  ## stdin, stdout, or stderr?
  if (index <= 2) return(TRUE)

  ## No such connection index?
  if (!is.element(index, getAllConnections())) {
    res <- FALSE
    attr(res, "reason") <- sprintf("Connection (%s) is no longer valid. There is currently no registered R connection with that index %d", connectionInfo(con), index)
    return(res)
  }

  ## That connection is no longer registered?
  current_con <- getConnection(index)
  res <- identical(attr(con, "conn_id"), attr(current_con, "conn_id"))
  if (!isTRUE(res)) {
    attr(res, "reason") <- sprintf("Connection (%s) is no longer valid. It differ from the currently registered R connection with the same index %d (%s)", connectionInfo(con), index, connectionInfo(current_con))
    return(res)
  }

  ## A valid connection
  TRUE
}


## This is needed in order to be able to assert that we later
## actually work with the same connection.  See R-devel thread
## 'closeAllConnections() can really mess things up' on 2016-10-30
## (https://stat.ethz.ch/pipermail/r-devel/2016-October/073331.html)
check_connection_details <- function(worker, future) {
  con <- worker$con
  
  ## Not a worker with a connection?
  if (!inherits(con, "connection")) return(NULL)

  isValid <- isValidConnection(con)
  if (isValid) return(NULL)

  label <- future$label
  if (is.null(label)) label <- "<none>"

  msg <- sprintf("The socket connection to the worker of %s future (%s) is lost or corrupted: %s", class(future)[1], label, attr(isValid, "reason", exact = TRUE))
  msg <- paste(msg, "This suggests that base::closeAllConnections() have been called, for instance via base::sys.save.image() which in turn is called if the R session (pid %s) is forced to terminate.", Sys.getpid())
  msg
}
