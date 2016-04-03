propagateErrors <- function(future, collect=TRUE) {
  onError <- future$onError

  ## Don't propagate errors?
  if (onError == "value") return(future)

  ## Collect value?
  if (collect) {
    value <- value(future, signal=FALSE)
  } else {
    value <- future$value
  }

  ## Was there an error?
  if (!inherits(value, "error")) return(future)

  ## How should errors be propagated?
  if (onError == "stop") {
    stop(value)
  } else if (onError == "warning") {
    warning(value)
  } else if (onError == "message") {
    value$message <- sprintf("%s\n", value$message)
    message(value)
  }

  future
}
