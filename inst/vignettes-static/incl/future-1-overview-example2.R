pid <- Sys.getpid()
pid
a %<-% {
  pid <- Sys.getpid()
  cat("Resolving 'a' ...\n")
  3.14
}
b %<-% {
  rm(pid)
  cat("Resolving 'b' ...\n")
  Sys.getpid()
}
c %<-% {
  cat("Resolving 'c' ...\n")
  2 * a
}
b
c
a
pid
