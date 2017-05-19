pid <- Sys.getpid()

a %<-% {
  cat("Resolving 'a' ...\n")
  Sys.getpid()
}

b %<-% {
  cat("Resolving 'b' ...\n")
  b1 %<-% {
    cat("Resolving 'b1' ...\n")
    Sys.getpid()
  }
  b2 %<-% {
    cat("Resolving 'b2' ...\n")
    Sys.getpid()
  }
  c(b.pid = Sys.getpid(), b1.pid = b1, b2.pid = b2)
}
