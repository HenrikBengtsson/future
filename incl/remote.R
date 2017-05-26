\dontrun{\donttest{

## Use a remote machine
plan(remote, workers = "remote.server.org")

## Evaluate expression remotely
host %<-% { Sys.info()[["nodename"]] }
host
[1] "remote.server.org"

}}
