## This is needed in order to be able to assert that we later
## actually work with the same connection.  See R-devel thread
## 'closeAllConnections() can really mess things up' on 2016-10-30
## (https://stat.ethz.ch/pipermail/r-devel/2016-October/073331.html)
#' @importFrom parallelly isConnectionValid
check_connection_details <- function(worker, future) {
  con <- worker$con
  
  ## Not a worker with a connection?
  if (!inherits(con, "connection")) return(NULL)

  isValid <- isConnectionValid(con)
  if (isValid) return(NULL)

  label <- future$label
  if (is.null(label)) label <- "<none>"

  msg <- sprintf("The socket connection to the worker of %s future (%s) is lost or corrupted: %s", class(future)[1], label, attr(isValid, "reason", exact = TRUE))
  msg <- paste(msg, "This suggests that base::closeAllConnections() have been called, for instance via base::sys.save.image() which in turn is called if the R session (pid %s) is forced to terminate.", Sys.getpid())
  msg
}
