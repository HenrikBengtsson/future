## Create a universally unique identifier (UUID) for an R object
#' @importFrom digest digest
uuid <- function(source, keep_source = FALSE) {
  uuid <- digest(source)
  uuid <- strsplit(uuid, split = "")[[1]]
  uuid <- paste(c(uuid[1:8], "-", uuid[9:12], "-", uuid[13:16], "-", uuid[17:20], "-", uuid[21:32]), collapse = "")
  if (keep_source) attr(uuid, "source") <- source
  uuid
} ## uuid()

uuid_of_connection <- function(con, ..., must_work = TRUE) {
  stopifnot(inherits(con, "connection"))
  if (must_work) {
    info <- summary(con)
    info$opened <- NULL
    uuid <- uuid(info, ...)
  } else {
    uuid <- tryCatch({
      info <- summary(con)
      info$opened <- NULL
      uuid(info, ...)
    }, error = function(ex) {
      attr(con, "uuid")
    })
  }
  uuid
} ## uuid_of_connection()

## A universally unique identifier (UUID) for the current
## R process UUID. Generated only once per process ID 'pid'.
## The 'pid' may differ when using forked processes.
session_uuid <- local({
  uuids <- list()

  function(pid = Sys.getpid(), attributes = FALSE) {
    pidstr <- as.character(pid)
    uuid <- uuids[[pidstr]]
    if (!is.null(uuid)) {
      if (!attributes) attr(uuid, "source") <- NULL
      return(uuid)
    }

    info <- Sys.info()
    host <- Sys.getenv(c("HOST", "HOSTNAME", "COMPUTERNAME"))
    host <- host[nzchar(host)][1]
    info <- list(
      host = host,
      info = info,
      pid = pid,
      time = Sys.time(),
      ## NOTE: This will set/update .GlobalEnv$.Random.seed
      random = sample.int(.Machine$integer.max, size = 1L)
    )
    uuid <- uuid(info, keep_source = TRUE)
    uuids[[pidstr]] <<- uuid
    if (!attributes) attr(uuid, "source") <- NULL
    uuid
  }
})
