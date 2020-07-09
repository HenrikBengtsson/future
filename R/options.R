#' Options used for futures
#'
#' Below are the \R options and environment variables that are used by the
#' \pkg{future} package and packages enhancing it.\cr
#' \cr
#' _WARNING: Note that the names and the default values of these options may change in future versions of the package.  Please use with care until further notice._
#'
#' @section Options for controlling futures:
#' \describe{
#'  \item{\option{future.plan}:}{(character string or future function) Default future strategy plan used unless otherwise specified via [plan()]. This will also be the future plan set when calling `plan("default")`.  If not specified, this option may be set when the \pkg{future} package is _loaded_ if command-line option `--parallel=ncores` (short `-p ncores`) is specified; if `ncores > 1`, then option \option{future.plan} is set to `multiprocess` otherwise `sequential` (in addition to option \option{mc.cores} being set to `ncores`, if `ncores >= 1`).  If system environment variable \env{R_FUTURE_PLAN} is set, then that overrides the future plan set by the command-line option. (Default: `sequential`)}
#'
#'  \item{\option{future.globals.maxSize}:}{(numeric) Maximum allowed total size (in bytes) of global variables identified. Used to prevent too large exports. If set of `+Inf`, then the check for large globals is skipped. (Default: `500 * 1024 ^ 2` = 500 MiB)}
#'
#'   \item{\option{future.globals.onReference}: (_beta feature - may change_)}{(character string) Controls whether the identified globals should be scanned for so called _references_ (e.g. external pointers and connections) or not.  It is unlikely that another \R process ("worker") can use a global that uses a internal reference of the master \R process - we call such objects _non-exportable globals_.
#'    If this option is `"error"`, an informative error message is produced if a non-exportable global is detected.
#'    If `"warning"`, a warning is produced, but the processing will continue; it is likely that the future will be resolved with a run-time error unless processed in the master \R process (e.g. `plan(sequential)` and `plan(multicore)`).
#'    If `"ignore"`, no scan is performed.
#'    If the option is not set, then environment variable \env{R_FUTURE_GLOBALS_ONREFERENCE} is used.  
#'    (Default: `"ignore"` but may change)
#'  }
#'
#'  \item{\option{future.resolve.recursive}:}{(integer) An integer specifying the maximum recursive depth to which futures should be resolved. If negative, nothing is resolved.  If `0`, only the future itself is resolved.  If `1`, the future and any of its elements that are futures are resolved, and so on. If `+Inf`, infinite search depth is used. (Default: `0`)}
#'
#'  \item{\option{future.rng.onMisuse}: (_beta feature - may change_)}{(character string) If random numbers are used in futures, then parallel (L'Ecuyer-CMRG) RNG should be used in order to get statistical sound RNGs. The defaults in the future framework assume that _no_ random number generation (RNG) is taken place in the future expression because L'Ecuyer-CMRG RNGs come with an unnecessary overhead if not needed.  To protect against mistakes, the future framework attempts to detect when random numbers are used despite L'Ecuyer-CMRG RNGs are not in place.  If this is detected, and `future.rng.onMisuse = "error"`, then an informative error message is produced.  If `"warning"`, then a warning message is produced.  If `"ignore"`, no check is performed.
#' If the option is not set, then environment variable \env{R_FUTURE_RNG_ONMISUSE} is used. (Default: `"ignore"` but may change)}
#'
#'  \item{\option{future.wait.timeout}:}{(numeric) Maximum waiting time (in seconds) for a free worker before a timeout error is generated.  If the option is not set, then environment variable \env{R_FUTURE_WAIT_TIMEOUT} is used.  (Default: `30 * 24 * 60 * 60` (= 30 days))}
#'
#'  \item{\option{future.wait.interval}:}{(numeric) Initial interval (in seconds) between polls.  If the option is not set, then environment variable \env{R_FUTURE_WAIT_INTERVAL} is used.  (Default: `0.2` = 0.2 seconds)}
#'
#'  \item{\option{future.wait.alpha}:}{(numeric) Positive scale factor used to increase the interval after each poll.  If the option is not set, then environment variable \env{R_FUTURE_WAIT_ALPHA} is used.  (Default: `1.01`)}
#' }
#'
#' @section Options for debugging futures:
#' \describe{
#'  \item{\option{future.debug}:}{(logical) If `TRUE`, extensive debug messages are generated. (Default: `FALSE`)}
#' }
#'
#' @section Options for controlling package startup:
#' \describe{
#'  \item{\option{future.startup.script}:}{(character vector or a logical) Specifies zero of more future startup scripts to be sourced when the \pkg{future} package is _attached_. It is only the first existing script that is sourced. If none of the specified files exist, nothing is sourced - there will be neither a warning nor an error.
#'  If this option is not specified, environment variable \env{R_FUTURE_STARTUP_SCRIPT} is considered, where multiple scripts may be separated by either a colon (`:`) or a semicolon (`;`). If neither is set, or either is set to `TRUE`, the default is to look for a \file{.future.R} script in the current directory and then in the user's home directory.  To disable future startup scripts, set the option or the environment variable to `FALSE`.  _Importantly_, this option is _always_ set to `FALSE` if the \pkg{future} package is loaded as part of a future expression being evaluated, e.g. in a background process. In order words, they are sourced in the main \R process but not in future processes. (Default: `TRUE` in main \R process and `FALSE` in future processes / during future evaluation)}
#'
#'  \item{\option{future.cmdargs}:}{(character vector) Overrides \code{\link[base]{commandArgs}()} when the \pkg{future} package is _loaded_.}
#' }
#'
#' @section Options for configuring low-level system behaviors:
#' \describe{
#'  \item{\option{future.availableCores.methods}:}{(character vector) Default lookup methods for [availableCores()]. (Default: `c("system", "mc.cores", "_R_CHECK_LIMIT_CORES_", "PBS", "SGE", "Slurm", "custom", "fallback")`)}
#'
#'  \item{\option{future.availableCores.custom}:}{(function) If set and a function, then this function will be called (without arguments) by [availableCores()] where its value, coerced to an integer, is interpreted as a number of cores.}
#'
#'  \item{\option{future.availableCores.fallback}:}{(integer) Number of cores to use when no core-specifying settings are detected other than `"system"`. If not specified, this option is set according to system environment variable \env{R_FUTURE_AVAILABLECORES_FALLBACK} when the \pkg{future} package is _loaded_. This options makes it possible to set the default number of cores returned by `availableCores()` / `availableWorkers()` yet allow users and schedulers to override it. In multi-tenant environment, such as HPC clusters, it is useful to set \env{R_FUTURE_AVAILABLECORES_FALLBACK} to `1`.}
#' 
#'  \item{\option{future.availableCores.system}:}{(integer) Number of "system" cores used instead of what is reported by \code{\link{availableCores}(which = "system")}. If not specified, this option is set according to system environment variable \env{R_FUTURE_AVAILABLECORES_SYSTEM} when the \pkg{future} package is _loaded_. This option allows you to effectively override what `parallel::detectCores()` reports the system has.}
#'
#'  \item{\option{future.availableWorkers.methods}:}{(character vector) Default lookup methods for [availableWorkers()]. (Default: `c("mc.cores", "_R_CHECK_LIMIT_CORES_", "PBS", "SGE", "Slurm", "custom", "system", "fallback")`)}
#'
#'  \item{\option{future.availableWorkers.custom}:}{(function) If set and a function, then this function will be called (without arguments) by [availableWorkers()] where its value, coerced to a character vector, is interpreted as hostnames of available workers.}
#'
#'  \item{\option{future.fork.enable}:}{(logical) Enable or disable _forked_ processing.  If `FALSE`, multicore futures becomes sequential futures.  If not specified, this option is set according to environment variable \env{R_FUTURE_FORK_ENABLE}.  If `NA`, or not set (the default), the a set of best-practices rules decide whether should be supported or not.  See [supportsMulticore()] for more details.}
#'  \item{\option{future.fork.multithreading.enable} (_beta feature - may change_):}{(logical) Enable or disable _multi-threading_ while using _forked_ parallel processing.  If `FALSE`, different multi-thread library settings are overridden such that they run in single-thread mode, which requires that the \pkg{RhpcBLASctl} package is installed.  If not specified, this option is set according to environment variable \env{R_FUTURE_FORK_MULTITHREADING_ENABLE}.  If `TRUE`, or not set (the default), multi-threading is allowed.  Parallelization via multi-threaded processing (done in native code by some packages and external libraries) while at the same time using forked (aka "multicore") parallel processing is known to unstable.  Note that this is not only true when using `plan(multicore)` but also when using, for instance, \code{\link[=mclapply]{mclapply}()} of the \pkg{parallel} package.}
#'
#'  \item{\option{future.supportsMulticore.unstable}:}{(character) Controls whether a warning should be produced or not whenever multicore processing is automatically disabled because the environment in which R runs is considered unstable for forked processing, e.g. in the RStudio environment.  If `"warning"` (default), then an informative warning is produces the first time 'multicore' or 'multiprocess' futures are used.  If `"quiet"`, no warning is produced.  If not specified, this option is set according to environment variable \env{R_FUTURE_SUPPORTSMULTICORE_UNSTABLE}.  See [supportsMulticore()] for more details.}
#' }
#'
#' @section Options for demos:
#' \describe{
#'  \item{\option{future.demo.mandelbrot.region}:}{(integer) Either a named list of [mandelbrot()] arguments or an integer in \{1, 2, 3\} specifying a predefined Mandelbrot region. (Default: `1L`)}
#'
#'  \item{\option{future.demo.mandelbrot.nrow}:}{(integer) Number of rows and columns of tiles. (Default: `3L`)}
#' }
#'
#'
#' @section Deprecated of for internal prototyping:
#'
#' The following options exists only for troubleshooting purposes and must not
#' be used in production.  If used, there is a risk that the results are
#' non-reproducible if processed elsewhere.  To lower the risk of them being
#' used by mistake, they are marked as deprecated and will produce warnings
#' if set.
#'
#' \itemize{
#'  \item{\option{future.globals.onMissing}:}{(character string) Action to take when non-existing global variables ("globals" or "unknowns") are identified when the future is created.  If `"error"`, an error is generated immediately.  If `"ignore"`, no action is taken and an attempt to evaluate the future expression will be made.  The latter is useful when there is a risk for false-positive globals being identified, e.g. when future expression contains non-standard evaluation (NSE).  (Default: `"ignore"`)}
#'
#'  \item{\option{future.globals.method}:}{(character string) Method used to identify globals. For details, see \code{\link[globals]{globalsOf}()}. (Default: `"ordered"`)}
#'
#'  \item{\option{future.globals.resolve}:}{(logical) If `TRUE`, globals that are [`Future`] objects (typically created as _explicit_ futures) will be resolved and have their values (using `value()`) collected.  Because searching for unresolved futures among globals (including their content) can be expensive, the default is not to do it and instead leave it to the run-time checks that assert proper ownership when resolving futures and collecting their values. (Default: `FALSE`)}
#' }
#'
#'
#' @seealso
#' To set \R options when \R starts (even before the \pkg{future} package is loaded), see the \link[base]{Startup} help page.  The \href{https://cran.r-project.org/package=startup}{\pkg{startup}} package provides a friendly mechanism for configurating \R's startup process.
#'
#' @aliases
#' future.cmdargs 
#' future.startup.script R_FUTURE_STARTUP_SCRIPT .future.R
#' future.plan R_FUTURE_PLAN
#' future.availableCores.custom
#' future.availableCores.methods
#' future.availableCores.fallback R_FUTURE_AVAILABLECORES_FALLBACK
#' future.availableCores.system R_FUTURE_AVAILABLECORES_SYSTEM
#' future.availableWorkers.methods
#' future.fork.enable R_FUTURE_FORK_ENABLE
#' future.globals.maxSize future.globals.method future.globals.onMissing
#' future.globals.resolve future.globals.onReference
#' future.resolve.recursive
#' future.supportsMulticore.unstable R_FUTURE_SUPPORTSMULTICORE_UNSTABLE
#' future.wait.alpha future.wait.interval future.wait.timeout
#' future.debug
#' future.demo.mandelbrot.region future.demo.mandelbrot.nrow
#'
#' @keywords internal
#' @name future.options
NULL
