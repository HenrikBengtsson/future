## https://en.wikipedia.org/wiki/Pearson_hashing
hash_pearson <- local({
  ## Generated using: set.seed(42); T <- sample.int(256)
  T <- c(235L, 239L, 73L, 211L, 162L, 131L, 185L, 34L, 163L, 175L, 113L, 
         177L, 229L, 63L, 112L, 227L, 256L, 29L, 114L, 133L, 214L, 33L, 
         232L, 221L, 20L, 119L, 90L, 208L, 102L, 190L, 167L, 183L, 87L, 
         153L, 1L, 250L, 2L, 46L, 198L, 237L, 82L, 94L, 9L, 244L, 92L, 
         203L, 187L, 134L, 202L, 129L, 69L, 72L, 216L, 160L, 8L, 151L, 
         136L, 35L, 52L, 228L, 217L, 192L, 148L, 110L, 164L, 37L, 218L, 
         157L, 251L, 45L, 213L, 26L, 40L, 88L, 36L, 188L, 220L, 68L, 212L, 
         222L, 103L, 28L, 243L, 242L, 209L, 97L, 184L, 16L, 15L, 51L, 
         111L, 245L, 199L, 223L, 150L, 231L, 54L, 204L, 118L, 98L, 189L, 
         249L, 155L, 60L, 144L, 146L, 166L, 193L, 80L, 165L, 89L, 122L, 
         109L, 65L, 77L, 76L, 147L, 50L, 85L, 238L, 49L, 56L, 142L, 79L, 
         95L, 241L, 120L, 125L, 30L, 93L, 137L, 141L, 196L, 116L, 104L, 
         71L, 99L, 14L, 91L, 254L, 18L, 10L, 53L, 201L, 83L, 158L, 19L, 
         176L, 32L, 169L, 172L, 195L, 81L, 41L, 70L, 124L, 149L, 3L, 161L, 
         66L, 230L, 126L, 57L, 100L, 139L, 17L, 152L, 255L, 11L, 252L, 
         174L, 182L, 105L, 170L, 138L, 12L, 171L, 47L, 62L, 248L, 197L, 
         143L, 24L, 127L, 253L, 205L, 75L, 55L, 115L, 234L, 13L, 226L, 
         236L, 64L, 5L, 4L, 108L, 7L, 44L, 42L, 178L, 246L, 101L, 74L, 
         86L, 23L, 200L, 132L, 194L, 48L, 25L, 128L, 168L, 130L, 117L, 
         84L, 207L, 156L, 21L, 154L, 123L, 59L, 215L, 106L, 225L, 233L, 
         179L, 6L, 180L, 96L, 210L, 61L, 186L, 140L, 22L, 224L, 247L, 
         38L, 31L, 135L, 67L, 181L, 173L, 43L, 27L, 206L, 107L, 159L, 
         219L, 145L, 121L, 39L, 58L, 191L, 78L, 240L)

  function(x, n = 16L) {
    x <- as.integer(x)
    hh <- T[(x[1] - 1L + 1:n) %% 256L + 1L]
    for (ii in 2:length(x)) hh <- T[bitwXor(hh, x[ii]) %% 256L + 1L]
    hh
  }
})


serialize_to_raw <- function(x) {
  con <- rawConnection(raw(0L), open = "wb")
  on.exit(close(con))
  serialize(x, connection = con, ascii = FALSE)
  raw <- rawConnectionValue(con)
  ## The first 14 bytes are "useless", cf. digest::digest()
  raw[-(1:14)]
}

## This is ~5-10 times slower than digest::digest(info) for below 'info'
## because of hash_pearson(). Bigger 'info' will be slower as processing
## time of hash_pearson() is a function of length of serialized 'info'.
simple_checksum <- function(x, mode = "hex", length = 16L, collapse = FALSE) {
  raw <- serialize_to_raw(x)
  hash <- hash_pearson(raw)
  if (mode == "raw") {
    hash <- as.raw(hash)
  } else if (mode == "hex") {
    hash <- sprintf("%02x", hash)
    if (collapse) hash <- paste(hash, collapse = "")
  } else if (mode != "int") {
    stop("Unknown mode: ", sQuote(mode))
  }
  hash
}

## Create a universally unique identifier (UUID) for an R object
uuid <- function(x, keep_source = FALSE) {
  x <- simple_checksum(x)
  uuid <- paste(c(x[1:4], "-", x[5:6], "-", x[7:8], "-",
                  x[9:10], "-", x[11:16]), collapse = "")
  if (keep_source) attr(uuid, "source") <- source
  uuid
}

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
      pid  = pid,
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
