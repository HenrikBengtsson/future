source("incl/start.R")

message("*** futureSessionInfo() ...")

message(" - test = FALSE")
futureSessionInfo(test = FALSE)

message(" - test = TRUE")
futureSessionInfo(test = TRUE)

message("*** futureSessionInfo() ... DONE")

source("incl/end.R")
