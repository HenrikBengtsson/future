source("incl/start.R")

message("*** availableWorkers() ...")

## The default
w <- availableWorkers()
print(w)
stopifnot(is.character(w), length(w) >= 1)

## Minimium of all known settings (default)
print(availableWorkers(which="min"))

## Maximum of all known settings (should never be used)
print(availableWorkers(which="max"))

## All known settings
print(availableWorkers(na.rm=FALSE, which="all"))

## System settings
w <- availableWorkers(methods="system")
print(w)
stopifnot(is.character(w), length(w) >= 1)

## Predefined ones for known cluster schedulers
print(availableWorkers(methods="PBS"))
print(availableWorkers(methods="SGE"))
print(availableWorkers(methods="Slurm"))



message("*** HPC related ...")

expand_nodes <- future:::expand_nodes
read_pbs_nodefile <- future:::read_pbs_nodefile
read_pe_hostfile <- future:::read_pe_hostfile

workers0 <- c("n1", "n2", "n3", "n1", "n6", "n3", "n3", "n5")
data0 <- as.data.frame(table(workers0), stringsAsFactors = FALSE)
colnames(data0) <- c("node", "count")
data0 <- data0[order(data0$node, data0$count), ]

message("*** read_pbs_nodefile() ...")

workers <- workers0
pathname <- tempfile()
writeLines(workers, con = pathname)

data <- read_pbs_nodefile(pathname)
str(data)
stopifnot(
  c("node") %in% colnames(data),
  is.character(data$node),
  !anyNA(data$node),
  nrow(data$node) == length(workers),
  all(sort(data$node) == sort(workers))
)

Sys.setenv(PBS_NODEFILE = pathname)
Sys.setenv(PBS_NP = length(workers),
           PBS_NUM_NODES = length(workers) / 2,
           PBS_NUM_PPN = 2)
workers <- availableWorkers(methods = "PBS")
print(workers)
stopifnot(length(workers) == length(workers0), all(workers == sort(workers0)))


## Exceptions
workersE <- c(workers, "n 3")
pathname <- tempfile()
writeLines(workersE, con = pathname)
res <- tryCatch(read_pbs_nodefile(pathname), error = identity)
print(res)
stopifnot(inherits(res, "error"))

message("*** read_pbs_nodefile() ... DONE")


message("*** read_pe_hostfile() ...")

workers <- workers0
pathname <- tempfile()
write.table(data0, file = pathname, quote = FALSE, row.names = FALSE, col.names = FALSE)
lines <- readLines(pathname)
print(lines)
data <- read_pe_hostfile(pathname)
print(data)
stopifnot(
  is.character(data$node),
  !anyNA(data$node),
  is.integer(data$count),
  !anyNA(data$count),
  all(is.finite(data$count)),
  all(data$count > 0),
  nrow(data) == nrow(data0),
  all.equal(data[,c("node", "count")], data0[,c("node", "count")])
)

workers <- expand_nodes(data)
stopifnot(length(workers) == length(workers0), all(workers == sort(workers0)))

Sys.setenv(PE_HOSTFILE = pathname)
Sys.setenv(NSLOTS = length(workers0))  ## Use to validate results
workers <- availableWorkers(methods = "SGE")
print(workers)
stopifnot(length(workers) == length(workers0), all(workers == sort(workers0)))

## Test validation
Sys.setenv(NSLOTS = length(workers0) + 1L)
workers <- tryCatch(availableWorkers(methods = "SGE"), warning = identity)
print(workers)
stopifnot(inherits(workers, "warning"))

message("*** read_pe_hostfile() ... DONE")


message("*** HPC related ... DONE")


## Any R options and system environment variable
print(availableWorkers(methods=c("width", "FOO_BAR_ENV"),
                     na.rm=FALSE, which="all"))

## Exception handling
Sys.setenv("FOO_BAR_ENV"="0")
res <- try(availableWorkers(methods="FOO_BAR_ENV"), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** availableWorkers() ... DONE")

source("incl/end.R")

