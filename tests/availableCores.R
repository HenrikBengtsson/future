library("future")

message("*** availableCores() ...")

n <- availableCores()
message(sprintf("n=%d", n))

print(availableCores())
print(availableCores("PBS"))
print(availableCores("system"))

message("*** availableCores() ... DONE")

