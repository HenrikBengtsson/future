## Formula #1:
##   expression: ~ rhs
##   AST: (~ rhs)
##   tweaked expression: rhs; ~ rhs
##
## Formula #2:
##   expression: lhs ~ rhs
##   AST: (~ lhs rhs)
##   tweaked expression: rhs; lhs ~ rhs
tweakFormulaCall <- function(expr) {
  if (!is.call(expr)) return(expr)
  op <- expr[[1]]
  if (!is.symbol(op)) return(expr)
  op <- as.character(op)
  if (op != "~") return(expr)
  n <- length(expr)
  if (n != 2 && n != 3) return(expr)
  
  if (n == 2) {
    lhs <- NULL
    rhs <- expr[[2]]
  } else if (n == 3) {
    lhs <- expr[[2]]
    rhs <- expr[[3]]
  }
  
  ## covr: skip=1
  substitute({ lhs; rhs; e }, list(lhs=lhs, rhs=rhs, e=expr))
} ## tweakFormulaCall()



## Future assignment #1:
##   expression: lhs %<-% rhs
##   AST: (%<-% lhs rhs)
##   tweaked expression: lhs <- rhs; lhs %<-% rhs
tweakFutureAssignmentCall <- function(expr) {
  if (!is.call(expr)) return(expr)
  op <- expr[[1]]
  if (!is.symbol(op)) return(expr)
  n <- length(expr)
  if (n != 3) return(expr)
  
  op <- as.character(op)
  if (op %in% c("<<-", "%<-%", "%<=%")) {
    lhs <- expr[[2]]
    rhs <- expr[[3]]
    ## covr: skip=1
    expr <- substitute({a <- b; e}, list(a=lhs, b=rhs, e=expr))
  } else if (op %in% c("->>", "%->%", "%=>%")) {
    lhs <- expr[[3]]
    rhs <- expr[[2]]
    ## covr: skip=1
    expr <- substitute({a <- b; e}, list(a=lhs, b=rhs, e=expr))
  }
  expr
} ## tweakFutureAssignmentCall()


## DEPRECATED: This will go away when globals (> 0.6.1) is on CRAN
## /HB 2016-09-06
tweakFutureAssignments <- function(expr) {
  if (!is.language(expr)) return(expr)

  ## 1. Tweak future assignment operators
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
} # tweakFutureAssignments()


tweakExpression <- function(expr) {
  if (!is.language(expr)) return(expr)
  ns <- getNamespace("globals")
  if (exists("walkAST", mode="function", envir=ns)) {
    mdebug("tweakExpression() w/ walkAST() ...")
    walkAST <- get("walkAST", mode="function", envir=ns)
    expr <- walkAST(expr, call=tweakFutureAssignmentCall)
    expr <- walkAST(expr, call=tweakFormulaCall)
    mdebug("tweakExpression() w/ walkAST() ... DONE")
  } else {
    mdebug("tweakExpression() - legacy ...")
    expr <- tweakFutureAssignments(expr)
    mdebug("tweakExpression() - legacy ... DONE")
  }
  expr
} # tweakExpression()
