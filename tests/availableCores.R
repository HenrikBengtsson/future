library("future")

message("*** availableCores() ...")

n <- availableCores()
message(sprintf("n=%d", n))

print(availableCores())
print(availableCores(methods="PBS"))
print(availableCores(methods="system"))

message("*** availableCores() ... DONE")

