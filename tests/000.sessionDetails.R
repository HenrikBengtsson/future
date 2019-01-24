library("future")

sd <- sessionDetails()
print(sd)
print(sd, output = "message")
rm(list = "sd")

si <- future:::session_info()
print(si)

si <- future:::session_info(pkgs = TRUE)
print(si)

rm(list = "si")
