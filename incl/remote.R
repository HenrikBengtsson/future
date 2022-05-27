\dontrun{\donttest{

## DEPRECATED: 'remote' is deprecated in favor of 'cluster' with
## persistent = TRUE.  Note however, that argument 'persistent'
## will eventually be deprecated too when there is an alternative
## for users and developers to handle "sticky" globals

## Use a remote machine
plan(cluster, workers = "remote.server.org", persistent = TRUE)

## Evaluate expression remotely
host %<-% { Sys.info()[["nodename"]] }
host
[1] "remote.server.org"


## The following setups are equivalent:
plan(remote, workers = "localhost")  ## DEPRECATED in future (>= 1.24.0)
plan(cluster, workers = "localhost", persistent = TRUE)
plan(cluster, workers = 1, persistent = TRUE)

## The following setups are equivalent:
plan(remote, workers = "remote.server.org")  ## DEPRECATED in future (>= 1.24.0)
plan(cluster, workers = "remote.server.org", persistent = TRUE, homogeneous = FALSE)

## The following setups are equivalent:
cl <- makeClusterPSOCK("remote.server.org")
plan(remote, workers = cl)  ## DEPRECATED in future (>= 1.24.0)
plan(cluster, workers = cl, persistent = TRUE)

}}
