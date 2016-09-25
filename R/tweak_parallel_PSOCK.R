#' Tweak PSOCK backend of the parallel package
#'
#' @param user If TRUE, parallel is tweaked to only pass username to SSH if it is specified via argument \code{user}.
#' @param revtunnel If TRUE, parallel is tweaked to make use of reverse SSH tunneling.
#' @param rshopts A character vector of additional command-line options passed to the \code{rshcmd} executable.
#' @param reset If TRUE, all tweaks are undone.
#'
#' @return Nothing.
#'
#' @examples
#' \donttest{\dontrun{
#' ## Tweak the 'parallel' package
#' future:::tweak_parallel_PSOCK()
#'
#' ## An illustration that it works
#' trace(system, tracer=quote(stop("Command: ", command)))
#' try(cl <- parallel::makeCluster("remote.myserver.org", revtunnel=TRUE, master="localhost", homogeneous=FALSE))
#' ## Tracing system(cmd, wait = FALSE) on entry
#' ## Error in eval(expr, envir, enclos) : 
#' ##   Command: ssh -R 11061:localhost:11061 remote.myserver.org "Rscript --default-packages=datasets,utils,grDevices,graphics,stats,methods -e 'parallel:::.slaveRSOCK()' MASTER=localhost PORT=11061 OUT=/dev/null TIMEOUT=2592000 XDR=TRUE"
#'
#' ## Undo tweaks
#' untrace(system)
#' future:::tweak_parallel_PSOCK(reset=TRUE)
#' }}
#'
#' @references
#' \url{https://github.com/HenrikBengtsson/Wishlist-for-R/issues/32}\cr
#'
#' @importFrom utils assignInNamespace
#' @keywords internal
tweak_parallel_PSOCK <- local({
  parallel <- getNamespace("parallel")

  ## The original newPSOCKnode() and defaultClusterOptions of parallel
  newPSOCKnode_org <- get("newPSOCKnode", mode="function", envir=parallel)
  defaultClusterOptions_org <- get("defaultClusterOptions", envir=parallel)

  gsub_body <- function(pattern, replacement, fun, ...) {
    stopifnot(is.function(fun))
    expr <- body(fun)
    code <- deparse(expr)
    code <- gsub(pattern=pattern, replacement=replacement, x=code, ...)
    expr <- parse(text=code)
    body(fun) <- expr
    fun
  } ## gsub_body()

  ## HACK: Trick assignInNamespace() to not complain
  .assignInNamespace <- gsub_body("nf <- sys.nframe()", "nf <- 1L", assignInNamespace, fixed=TRUE)


  ## tweak_parallel_PSOCK()
  function(user=TRUE, revtunnel=TRUE, rshopts=TRUE, reset=FALSE) {
    ## Original parallel setup
    newPSOCKnode <- newPSOCKnode_org
    defaultClusterOptions <- defaultClusterOptions_org

    if (!reset) {
      defaultClusterOptions <- as.environment(as.list(defaultClusterOptions))
      
      pattern <- 'cmd <- paste(rshcmd, "-l", user, machine, cmd)'
      replacement <- 'opts <- NULL'
    
      ## Only pass '-l <user>' if explicitly specified
      ## https://github.com/HenrikBengtsson/Wishlist-for-R/issues/31
      if (user) {
        ## Drop default 'user' (clone to avoid overwriting the original environment)
        defaultClusterOptions$user <- NULL

        ## newPSOCKnode() tweaks
        replacement <- c(replacement, 'if (!is.null(user)) opts <- c(opts, paste("-l", user))')
      }
    
      ## Reverse SSH tunneling (avoids all NAT / firewall issues)
      ## https://github.com/HenrikBengtsson/Wishlist-for-R/issues/32
      if (revtunnel) {
        defaultClusterOptions$revtunnel <- FALSE
	
        ## newPSOCKnode() tweaks
	replacement <- c(replacement, 'revtunnel <- getClusterOption("revtunnel", options)')
        replacement <- c(replacement, 'if (revtunnel) opts <- c(opts, sprintf("-R %d:%s:%d", port, master, port))')
      }

      ## Support for any type of command-line options (advanced usage)
      ## https://github.com/HenrikBengtsson/Wishlist-for-R/issues/32
      if (rshopts) {
        defaultClusterOptions$rshopts <- NULL
	
        ## newPSOCKnode() tweaks
        replacement <- c(replacement, 'opts <- c(opts, getClusterOption("rshopts", options))')
      }

      replacement <- c(replacement, 'opts <- paste(opts, collapse = " ")')
      replacement <- c(replacement, 'cmd <- paste(rshcmd, opts, machine, cmd)')
      replacement <- paste(replacement, collapse="\n")
  
      newPSOCKnode <- gsub_body(pattern, replacement, fun=newPSOCKnode, fixed=TRUE)
    }

    ## Update newPSOCKnode() and defaultClusterOptions of parallel
    .assignInNamespace("newPSOCKnode", newPSOCKnode, ns=parallel)
    .assignInNamespace("defaultClusterOptions", defaultClusterOptions, ns=parallel)
  } ## tweak_parallel_PSOCK()
}) ## local()
