library("future")

message("*** availableSessions() ...")

n <- availableSessions()
message(sprintf("n=%d", n))

print(availableSessions())
print(availableSessions("PBS"))
print(availableSessions("system"))

message("*** availableSessions() ... DONE")

