tweakExpression <- function(expr) {
  if (!is.language(expr)) return(expr)

  for (ii in seq_along(expr)) {
    # If expr[[ii]] is "missing", ignore the error.  This
    # happens with for instance expressions like x[,1].
    # FIXME: Is there a better way?!? /HB 2014-05-08
    tryCatch({
      exprI <- expr[[ii]]
      op <- exprI[[1]]
      if (!is.symbol(op)) next
      op <- as.character(op)
      if (op %in% c("<<-", "%<-%", "%<=%")) {
        lhs <- exprI[[2]]
        rhs <- exprI[[3]]
        ## covr: skip=1
        expr[[ii]] <- substitute({a <- b; e}, list(a=lhs, b=rhs, e=exprI))
      } else if (op %in% c("->>", "%->%", "%=>%")) {
        lhs <- exprI[[3]]
        rhs <- exprI[[2]]
        ## covr: skip=1
        expr[[ii]] <- substitute({a <- b; e}, list(a=lhs, b=rhs, e=exprI))
      }
    }, error=function(ex) {})
  }
  expr
} # tweakExpression()


#' @importFrom globals globalsOf packagesOf cleanup
exportGlobals <- function(expr, envir, target=envir, tweak=NULL) {
  ## Identify and retrieve globals
  globals <- globalsOf(expr, envir=envir, tweak=tweak,
                       dotdotdot="return",
                       primitive=FALSE, base=FALSE, unlist=TRUE)

  ## Nothing do to?
  if (length(globals) == 0) return(invisible(globals))


  ## Tweak expression to be called with global ... arguments?
  if (inherits(globals$`...`, "DotDotDotList")) {
    ## Missing global '...'?
    if (!is.list(globals$`...`)) {
      stop("Did you mean to create the future within a function?  Invalid future expression tries to use global '...' variables that do not exist: ", paste(deparse(expr), collapse="; "))
    }
   globals$`<future-call-arguments>` <- globals$`...`
    globals$`...` <- NULL
   ## To please R CMD check
    a <- `<future-call-arguments>` <- NULL
    rm(list=c("a", "<future-call-arguments>"))
   expr <- substitute({
      do.call(function(...) a, args=`<future-call-arguments>`)
    }, list(a=expr))
  }

  ## Nothing do to?
  if (length(globals) == 0) return(invisible(globals))


  ## Append packages associated with globals
  pkgs <- packagesOf(globals)
  ## Drop all globals which are already part of one of
  ## the packages in 'pkgs'.  They will be available
  ## when those packages are attached.
  pkgsG <- sapply(globals, FUN=function(obj) {
    environmentName(environment(obj))
  })
  keep <- !is.element(pkgsG, pkgs)
  globals <- globals[keep]
  pkgsG <- keep <- NULL ## Not needed anymore
  ## Now drop globals that are primitive functions or
  ## that are part of the base packages, which now are
  ## part of 'pkgs' if needed.
  globals <- cleanup(globals)

  ## Nothing do to?
  if (length(globals) == 0) return(invisible(globals))


  ## Inject global objects?
  if (!is.null(target)) {
    for (name in names(globals)) {
      target[[name]] <- globals[[name]]
    }
  }

  invisible(globals)
} # exportGlobals()
