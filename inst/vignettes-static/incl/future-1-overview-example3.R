pid <- Sys.getpid()

a %<-% {
  cat("Resolving 'a' ...\n")
  Sys.getpid()
}

b %<-% {
  cat("Resolving 'b' ...\n")
  b.1 %<-% {
    cat("Resolving 'b.1' ...\n")
    Sys.getpid()
  }
  b.2 %<-% {
    cat("Resolving 'b.2' ...\n")
    Sys.getpid()
  }
  c(b.pid=Sys.getpid(), b.1.pid=b.1, b.2.pid=b.2)
}
