source("incl/start.R")
options(future.debug = FALSE)
plan(sequential)

message("Overriding reserved keyword functions ...")

## Identify globals used by the expanded future expression
...names <- sort(globals::findGlobals(getExpression(future(NULL))))
...names <- ...names[sapply(...names, FUN = exists, mode = "function")]

## Skip test with '<-' because it causes issues for at least R 3.2.0 & 3.3.0
if (getRversion() < "3.4.0") ...names <- setdiff(...names, "<-")

print(...names)
boom <- function(...) stop("Boom!")

base_tryCatch <- base::tryCatch

fails <- logical(length(...names))
names(fails) <- ...names
for (kk in seq_along(...names)) {
  name <- ...names[kk]
  message(sprintf(" - %s: ", sQuote(name)), appendLF = FALSE)
  
  res <- local({
    assign(name, boom)
    base_tryCatch(suppressWarnings({
      future(NULL)
    }), error = identity)
  })
  
  if (inherits(res, "error")) {
    stopifnot(conditionMessage(res) == "Boom!")
    fails[kk] <- TRUE
    message("FAIL")
  } else {
    message("OK")
  }
}

message("Reserved keyword functions that must not be overridden:")
print(names(fails)[fails])

## future 1.15.1:
##  [1] "{"                  "<-"                 "Sys.time"          
##  [4] "options"            "requireNamespace"   "if"                
##  [7] "packageVersion"     "||"                 "!"                 
## [10] "<"                  "::"                 "is.na"             
## [13] "rawConnection"      "raw"                "sink"              
## [16] "on.exit"            "is.null"            "close"             
## [19] "sys.nframe"         "list"               "tryCatch"          
## [22] "$<-"                "rawToChar"          "rawConnectionValue"

message("Overriding reserved keyword functions ... done")

source("incl/end.R")
