pid <- Sys.getpid()
pid
a %<-% {
  pid <- Sys.getpid()
  cat("Future 'a' ...\n")
  3.14
}
b %<-% {
  rm(pid)  ## no effect on global 'pid'
  cat("Future 'b' ...\n")
  Sys.getpid()
}
c %<-% {
  cat("Future 'c' ...\n")
  2 * a
}
b
c
a
pid
