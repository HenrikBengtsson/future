propagateErrors <- function(future) {
  onError <- future$onError

  ## Don't propagate errors?
  if (onError == "value") return(future)

  ## Was there an error?
  value <- future$value
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
