#' Tweak PSOCK backend of the parallel package
#'
#' @param user If TRUE, parallel is tweaked to only pass username to ssh if it is specified via argument \code{user}.
#' @param reverse_tunnel If TRUE, parallel is tweaked to make use of reverse SSH tunneling.
#' @param reset If TRUE, all tweaks are undone.
#'
#' @return Nothing.
#'
#' @references
#' \url{https://github.com/HenrikBengtsson/Wishlist-for-R/issues/31}\cr
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

  ## HACK
  .assignInNamespace <- gsub_body("nf <- sys.nframe()", "nf <- 1L", assignInNamespace, fixed=TRUE)

  function(user=TRUE, reverse_tunnel=TRUE, reset=FALSE) {
    ## Original parallel setup
    newPSOCKnode <- newPSOCKnode_org
    defaultClusterOptions <- defaultClusterOptions_org
    
    if (!reset) {
      pattern <- 'cmd <- paste(rshcmd, "-l", user, machine, cmd)'
      
      replacement <- NULL
      replacement <- c(replacement, 'cmdopts <- NULL')
    
      ## Only pass '-l <user>' if explicitly specified
      ## https://github.com/HenrikBengtsson/Wishlist-for-R/issues/31
      if (user) {
        replacement <- c(replacement, 'if (!is.null(user)) cmdopts <- paste("-l", user)')

        ## Drop default 'user' (clone to avoid overwriting the original environment)
        defaultClusterOptions <- as.environment(as.list(defaultClusterOptions))
        defaultClusterOptions$user <- NULL
      }
    
      ## Reverse SSH tunneling (avoids all NAT / firewall issues)
      ## Useful answers / explainations in
      ## http://unix.stackexchange.com/questions/46235/how-does-reverse-ssh-tunneling-work
      if (reverse_tunnel) {
        replacement <- c(replacement, 'cmdopts <- sprintf("-R %d:127.0.0.1:%d", port, port)')
        replacement <- c(replacement, 'cmd <- gsub("MASTER=[^ ]*", "MASTER=127.0.0.1", cmd)')
      }
      
      replacement <- c(replacement, 'cmd <- paste(rshcmd, cmdopts, machine, cmd)')
      replacement <- paste(replacement, collapse="\n")
  
      newPSOCKnode <- gsub_body(pattern, replacement, fun=newPSOCKnode, fixed=TRUE)
    }

    ## Update newPSOCKnode() and defaultClusterOptions of parallel
    .assignInNamespace("newPSOCKnode", newPSOCKnode, ns=parallel)
    .assignInNamespace("defaultClusterOptions", defaultClusterOptions, ns=parallel)
  } ## tweak_parallel_PSOCK()
}) ## local()


## EXAMPLE:
## > future:::tweak_parallel_PSOCK()
## > trace(system, tracer=quote(stop("Command: ", command)))
## > cl <- parallel::makeCluster("remote.myserver.org", homogeneous=FALSE)
## Tracing system(cmd, wait = FALSE) on entry 
## Error in eval(expr, envir, enclos) : 
##   Command: ssh -R 11974:127.0.0.1:11974 remote.myserver.org "Rscript --default-packages=datasets,utils,grDevices,graphics,stats,methods -e 'parallel:::.slaveRSOCK()' MASTER=127.0.0.1 PORT=11974 OUT=/dev/null TIMEOUT=2592000 XDR=TRUE"
