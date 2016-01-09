library("future")

message("*** availableSessions() ...")

print(availableSessions())
print(availableSessions("PBS"))
print(availableSessions("system"))

message("*** availableSessions() ... DONE")

