setFutureHook <- function(fcn, generic, class, event, action = c("append", "prepend", "replace")) {
  stop_if_not(is.function(fcn))
  action <- match.arg(action)
  hookName <- paste("futureEvent", generic, class, event, sep = "-")
  setHook(hookName, value = fcn, action = action)
}

getFutureHooks <- function(generic, class, event) {
  hookName <- paste("futureEvent", generic, class, event, sep = "-")
  getHook(hookName)
}


callFutureHook <- function(future, generic, class, event, package) {
  debug <- getOption("future.debug", FALSE)
  hooks <- getFutureHooks(generic = generic, class = class, event = event)
  
  t <- Sys.time()
  if (debug) {
    msg <- sprintf("Calling %d hook functions for event %s in generic %s for class %s of package = %s ...", length(hooks), sQuote(event), sQuote(generic), sQuote(class), sQuote(package))
    message(sprintf("[%s] %s", format(t, format = "%FT%T%z"), msg))
    on.exit({
      t <- Sys.time()
      message(sprintf("[%s] %s done", format(t, format = "%FT%T%z"), msg))
    })
  }
  
  for (kk in seq_along(hooks)) {
    hook <- hooks[[kk]]
    stop_if_not(is.function(hook))
    hook(future, generic = generic, class = class, event = event, package = package, time = t)
  }
}


injectFutureHooks <- function(envir = topenv(), package = environmentName(envir), debug = getOption("future.debug", FALSE)) {
  if (debug) {
    mdebug("Adding hook functions to future methods ...")
    on.exit(mdebug("Adding hook functions to future methods ... done"))
  }
  
  names <- ls(envir = envir, all.names = TRUE)
  pattern <- "^(.*)[.](([A-Z][a-z]*)*Future)$"
  methods <- grep(pattern, names, value = TRUE)
  if (debug) mdebug(" - methods: ", paste(sQuote(methods), collapse = ", "))
  for (kk in seq_along(methods)) {
    method <- methods[kk]
    if (!exists(method, mode = "function", envir = envir, inherits = FALSE))
      next
    fcn <- get(method, mode = "function", envir = envir, inherits = FALSE)
    generic <- unique(gsub(pattern, "\\1", method))
    class <- unique(gsub(pattern, "\\2", method))
    body <- body(fcn)
   ## Is first argument named 'future'?  If not, workaround it
    args <- formals(fcn)
    if (length(args) == 0L) next ## Shouldn't really happen
    first <- names(args)[1]
    if (first == "...") {
      first <- substitute(...future <- ..1)
    } else {
      first <- bquote(...future <- .(as.symbol(first)))
    }
    body <- bquote({
      .(first)
      callFutureHook(future = ...future, generic = .(generic), class = .(class), event = "onEnter", package = .(package))
      res <- withVisible(.(body))
      callFutureHook(future = ...future, generic = .(generic), class = .(class), event = "onExit", package = .(package))
      if (res$visible) res$value else invisible(res$value)
    })
    body(fcn) <- body
    assign(method, value = fcn, envir = envir, inherits = FALSE)
    body <- fcn <- NULL
    if (debug) mdebug(" - added hook functions to ", sQuote(method))
  }
}
