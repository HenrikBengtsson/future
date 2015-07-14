library("future")

message("*** availableCores() ...")

print(availableCores())
print(availableCores("PBS"))
print(availableCores("system"))

message("*** availableCores() ... DONE")

