#' Check If Future Strategy Supports Specified Resources
#'
#' @param strategy A future strategy class `future`.
#'
#' @param resources A resources formula or NULL.
#'
#' @param \ldots For internal use only.
#'
#' @return (logical) TRUE if `resources` are supported, otherwise FALSE.
#'
#' @details
#' This function is intended for internal use and developing additional
#' future backends.
#'
#' @export
supportsResources <- function(strategy, resources, ...) {
  UseMethod("supportsResources")
}

#' @export
supportsResources.future <- function(strategy, resources, localhost = NA, fork = NA, ...) {
  if (is.null(resources)) return(TRUE)
  stop_if_not(
    inherits(resources, "formula"),
    length(resources) == 2L
  )

  res <- eval(resources[[2]])
  stop_if_not(is.logical(res), length(res) == 1L)

  ## BACKWARD COMPATIBILITY: If unknown, assume strategy supports resources
  if (is.na(res)) {
    res <- TRUE
  }

  res
}

#' @export
supportsResources.sequential <- function(strategy, resources, localhost = TRUE, fork = FALSE, ...) {
  NextMethod(localhost = localhost, fork = fork)
}

#' @export
supportsResources.cluster <- function(strategy, resources, localhost = NA, fork = FALSE, ...) {
  ## Infer 'localhost' from cluster inspection?
  if (is.na(localhost)) {
    workers <- formals(strategy)$workers
    workers <- eval(workers)
    if (is.numeric(workers)) {
      localhost <- TRUE
    }
  }
  NextMethod(localhost = localhost, fork = fork)
}

#' @export
supportsResources.multisession <- function(strategy, resources, localhost = TRUE, ...) {
  NextMethod(localhost = localhost)
}

#' @export
supportsResources.multicore <- function(strategy, resources, localhost = TRUE, fork = TRUE, ...) {
  NextMethod(localhost = localhost, fork = fork)
}
