\donttest{\dontrun{
cl <- makeCluster2("remote.server.org", rshopts = "-v", user = NULL,
                   revtunnel = TRUE, master = "localhost", port = 11001)
}}
