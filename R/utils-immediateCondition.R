#' @importFrom utils file_test
#' @keywords internal
immediateConditionsPath <- local({
  path <- NULL
  
  function(path = tempdir()) {
    if (is.null(path)) {
      tpath <- file.path(path, ".future", "immediateConditions")
      dir.create(tpath, recursive = TRUE, showWarnings = FALSE)
      stop_if_not(file_test("-d", tpath))
      path <<- tpath
    }
    path
  }
})


#' Read All 'immediateCondition' RDS Files
#'
#' @param path (character string) The folder where the RDS files are.
#'
#' @param pattern (character string) A regular expression selecting
#' the RDS files to be read.
#'
#' @param include (character vector) The class or classes of the objects
#' to be kept.
#'
#' @param signal (logical) If TRUE, the condition read are signaled.
#'
#' @param remove (logical) If TRUE, the RDS files used are removed on exit.
#'
#' @return Returns a [base::list] of immediateCondition objects.
#'
#' @keywords internal
readImmediateConditions <- function(path = immediateConditionsPath(), pattern = "[.]rds$", include = getOption("future.relay.immediate", "immediateCondition"), signal = FALSE, remove = TRUE) {
  stop_if_not(is.character(include), !anyNA(include))
  stop_if_not(is.logical(remove), length(remove) == 1L, !is.na(remove))
  
  files <- dir(path = path, pattern = "[.]rds$", full.names = TRUE)

  ## Nothing to do?
  if (length(files) == 0L) return(list())

  ## Read objects from file
  objs <- lapply(files, FUN = tryCatch(readRDS, error = identity))

  ## Drop the ones that failed to be read
  keep <- !vapply(objs, FUN = inherits, "error", FUN.VALUE = FALSE)
  objs <- objs[keep]        
  files <- files[keep]

  ## Nothing to do?
  if (length(files) == 0L) return(list())

  ## Drop the ones that does not contain 'time' and 'condition' of the
  ## required class 'include'
  keep <- vapply(objs, FUN = function(x) {
    if (!all(is.element(c("time", "condition"), names(x)))) return(FALSE)
    if (length(include) == 0L) return(TRUE)
    inherits(x[["condition"]], include)
  }, FUN.VALUE = FALSE)
  objs <- objs[keep]        
  files <- files[keep]
  
  ## Nothing to do?
  if (length(files) == 0L) return(list())

  ## Re-order by timestamp
  times <- vapply(objs, FUN = .subset2, "time", FUN.VALUE = NA_real_)
  objs <- objs[order(times, na.last = TRUE)]
  times <- NULL

  ## Get conditions
  conds <- lapply(objs, FUN = .subset2, "condition")
  objs <- NULL

  ## Resignal conditions
  conds <- lapply(conds, FUN = function(condition) {
    signalCondition(condition)
    ## Increment signal count
    signaled <- condition$signaled
    if (is.null(signaled)) signaled <- 0L
    condition$signaled <- signaled + 1L
    condition
  })

  ## Remove files?
  if (remove && length(files) > 0L) file.remove(files)

  conds
}



#' Robustly Saves an Object to RDS File Atomically
#'
#' @param object The \R object to be save.
#'
#' @param pathname RDS file to written.
#'
#' @param \ldots (optional) Additional arguments passed to [base::saveRDS()].
#'
#' @return (invisible) The pathname of the RDS written.
#'
#' @details
#' Uses [base::saveRDS] internally but writes the object atomically by first
#' writing to a temporary file which is then renamed.
#'
#' @importFrom utils file_test
#' @keywords internal
save_rds <- function(object, pathname, ...) {
  pathname_tmp <- sprintf("%s.tmp", pathname)
  if (file_test("-f", pathname_tmp)) {
    fi_tmp <- file.info(pathname_tmp)
    stop(sprintf("Cannot save RDS file because a temporary save file already exists: %s (%0.f bytes; last modified on %s)", sQuote(pathname_tmp), fi_tmp[["size"]], fi_tmp[["mtime"]]))
  }
  
  tryCatch({
    saveRDS(object, file = pathname_tmp, ...)
  }, error = function(ex) {
    msg <- conditionMessage(ex)
    fi_tmp <- file.info(pathname_tmp)
    msg <- sprintf("saveRDS() failed to save to temporary file %s (%.0f bytes; last modified on %s). The reason was: %s", sQuote(pathname_tmp), fi_tmp[["size"]], fi_tmp[["mtime"]], msg)
    ex$message <- msg
    stop(ex)
  })
  stopifnot(file_test("-f", pathname_tmp))

  file.rename(from = pathname_tmp, to = pathname)
  if (file_test("-f", pathname_tmp) || !file_test("-f", pathname)) {
    fi_tmp <- file.info(pathname_tmp)
    fi <- file.info(pathname)
    msg <- sprintf("save_rds() failed to rename temporary save file %s (%0.f bytes; last modified on %s) to %s (%0.f bytes; last modified on %s)", sQuote(pathname_tmp), fi_tmp[["size"]], fi_tmp[["mtime"]], sQuote(pathname), fi[["size"]], fi[["mtime"]])
    stop(msg)
  }
  
  invisible(pathname)
}
