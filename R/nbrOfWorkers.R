#' Get the number of workers available
#'
#' @param evaluator A future evaluator function.
#' If NULL (default), the current evaluator as returned
#' by [plan()] is used.
#'
#' @param free If FALSE (default), the total number of workers available
#' to resolve futures is returned.  If TRUE, then the number of _free_
#' workers are returned.  Note that `free = TRUE` will _not_ attempt to
#' collect results from active futures, which means that, in order to free up
#' workers, functions such as `value()` must be called on active futures.
#' Importantly, since `free = FALSE` was introduced in \pkg{future} 1.21.0, it
#' will take some time before all future backends support it.  A backend that
#' supports it should ideally declare that it depends on `future (>= 1.21.0)`.
#'
#' @return A positive number in \eqn{{1, 2, 3, ...}}.
#' If `free = TRUE`, then it \eqn{0} (zero) may also be returned.
#' Note, it may also be `+Inf` for certain types of backends.
#'
#' @example incl/nbrOfWorkers.R
#'
#' @export
nbrOfWorkers <- function(evaluator = NULL, free = FALSE) {
  UseMethod("nbrOfWorkers")
}


#' @export
nbrOfWorkers.cluster <- function(evaluator, free = FALSE) {
  assert_no_positional_args_but_first()
  
  expr <- formals(evaluator)$workers
  workers <- eval(expr, enclos = baseenv())
  if (is.function(workers)) workers <- workers()
  if (is.character(workers)) {
    stop_if_not(!anyNA(workers))
    workers <- length(workers)
  } else if (is.numeric(workers)) {
  } else if (inherits(workers, "cluster")) {
    workers <- length(workers)
  } else {
    stop(sprintf("Unsupported type of 'workers' for evaluator of class %s: %s", paste(sQuote(class(evaluator)), collapse = ", "), class(workers)[1]))
  }
  stop_if_not(length(workers) == 1L, !is.na(workers), workers >= 1L, is.finite(workers))

  if (isTRUE(free)) {
    ## Create a dummy, lazy future
    f <- future(NULL, lazy = TRUE)
    name <- attr(f$workers, "name", exact = TRUE)
    stop_if_not(is.character(name), length(name) == 1L)
    reg <- sprintf("workers-%s", name)
    ## Number of unresolved cluster futures
    usedNodes <- length(FutureRegistry(reg, action = "list", earlySignal = FALSE))
    workers <- workers - usedNodes
    stop_if_not(length(workers) == 1L, !is.na(workers), workers >= 0L, is.finite(workers))
  }
  
  workers
}

#' @export
nbrOfWorkers.uniprocess <- function(evaluator, free = FALSE) {
  assert_no_positional_args_but_first()
  
  1L
}

#' @export
nbrOfWorkers.multicore <- function(evaluator, free = FALSE) {
  assert_no_positional_args_but_first()
  
  workers <- NextMethod(free = FALSE)
  if (isTRUE(free)) {
    workers <- workers - usedCores()
    stop_if_not(length(workers) == 1L, !is.na(workers), workers >= 0L, is.finite(workers))
  }
  workers
}

#' @export
nbrOfWorkers.multiprocess <- function(evaluator, free = FALSE) {
  assert_no_positional_args_but_first()
  
  if (isTRUE(free)) {
    stop("nbrOfWorkers(free = TRUE) is not implemented for this type of future backend (please contacts the maintainer of that backend): ", paste(sQuote(class(evaluator)), collapse = ", "))
  }
  
  expr <- formals(evaluator)$workers
  workers <- eval(expr, enclos = baseenv())
  if (is.function(workers)) workers <- workers()
  if (is.numeric(workers)) {
  } else {
    stop(sprintf("Unsupported type of 'workers' for evaluator of class %s: %s", paste(sQuote(class(evaluator)), collapse = ", "), class(workers)[1]))
  }
  stop_if_not(length(workers) == 1L, !is.na(workers), workers >= 1L, is.finite(workers))

  workers
}

#' @export
nbrOfWorkers.future <- function(evaluator, free = FALSE) {
  assert_no_positional_args_but_first()
  
  if (isTRUE(free)) {
    stop("nbrOfWorkers(free = TRUE) is not implemented for this type of future backend (please contacts the maintainer of that backend): ", paste(sQuote(class(evaluator)), collapse = ", "))
  }
  
  expr <- formals(evaluator)$workers
  workers <- eval(expr, enclos = baseenv())
  if (is.function(workers)) workers <- workers()
  if (is.numeric(workers)) {
  } else if (is.null(workers)) {
    workers <- Inf
  } else {
    stop(sprintf("Unsupported type of 'workers' for evaluator of class %s: %s", paste(sQuote(class(evaluator)), collapse = ", "), class(workers)[1]))
  }
  stop_if_not(length(workers) == 1L, !is.na(workers), workers >= 1L)

  if (isTRUE(free)) {
    ## If we reach this point, we have failed to infer how many free workers
    ## there are.  Unless there is an infinite number of workers available,
    ## we have no option but producing an error here.
    if (is.finite(workers)) {
      stop("nbrOfWorkers(free = TRUE) is not implemented for this type of future backend (please contacts the maintainer of that backend): ", paste(sQuote(class(evaluator)), collapse = ", "))
    }
  }
  
  workers
}

#' @export
nbrOfWorkers.NULL <- function(evaluator, free = FALSE) {
  assert_no_positional_args_but_first()
  
  free <- force(free)
  if (!isTRUE(free)) return(nbrOfWorkers(plan("next")))

  ## This will produce an error on "unused argument (free = TRUE)"
  ## for backends that does not yet support a 'free' argument
  nbrOfWorkers(plan("next"), free = TRUE)
}


#' @export
nbrOfWorkers.logical <- function(evaluator, free = FALSE) {
  assert_no_positional_args_but_first()
  nbrOfWorkers(NULL, free = force(free))
}
