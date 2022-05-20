#' @importFrom environments prune_fcn
prune_one_fcn <- function(fcn, name = "<unamed function>", debug = FALSE) {
  ## Not a function
  if (!is.function(fcn)) return(fcn)

  if (debug) mdebugf("Pruning function %s() ...", name)

  ## Primitive functions don't have environments,
  ## and they cannot have globals
  if (is.primitive(fcn)) {
    if (debug) mdebug(" - primitive function: skip pruning")
    return(fcn)
  } else if (inherits_from_namespace(environment(fcn))) {
    if (debug) mdebug(" - a package function: skip pruning")
    return(fcn)
  }
  
  if (debug) {
    mdebugf(" - scanning function %s() from environment(%s)", name, name)
    mprint(fcn)
  }
  
  gp <- getGlobalsAndPackages(fcn, envir = environment(fcn), tweak = tweakExpression, globals = TRUE, locals = TRUE)
  globals <- gp$globals
  gp <- NULL
  if (debug) {
    mdebugf("Globals in %s():", name)
    mstr(globals)
  }
  
  ## In case an anonymous function was specified
  if (identical(environment(fcn), environment())) {
    if (debug) mdebugf(" - scanning function %s() from parent.frame()", name)
    gp <- getGlobalsAndPackages(fcn, envir = parent.frame(), tweak = tweakExpression, globals = TRUE, locals = TRUE)
    globals <- unique(c(globals, gp$globals))
    gp <- NULL
    if (debug) {
      mdebugf("Globals in %s():", name)
      mstr(globals)
    }
  }
  
  ## Prune function 'fcn'
  if (debug) {
    mdebugf("Pruning function %s() ...", name)
    mdebug("Globals:")
    mstr(globals)
  }
  fcn <- prune_fcn(fcn, search = environment(fcn), depth = 9L, globals = globals)
  
  globals <- NULL
  
  if (debug) mdebugf("Pruning function %s() ... done", name)
  
  fcn
} ## prune_one_fcn()
