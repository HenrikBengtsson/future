pid <- Sys.getpid()

a %<-% {
  cat("Future 'a' ...\n")
  Sys.getpid()
}

b %<-% {
  cat("Future 'b' ...\n")
  b1 %<-% {
    cat("Future 'b1' ...\n")
    Sys.getpid()
  }
  b2 %<-% {
    cat("Future 'b2' ...\n")
    Sys.getpid()
  }
  c(b.pid = Sys.getpid(), b1.pid = b1, b2.pid = b2)
}
