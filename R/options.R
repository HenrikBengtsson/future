#' Options used for futures
#'
#' Below are all \R options that are currently used by the \pkg{future} package and packages enhancing it.\cr
#' \cr
#' \emph{WARNING: Note that the names and the default values of these options may change in future versions of the package.  Please use with care until further notice!}
#'
#' @section Options for controlling futures:
#' \describe{
#'  \item{\code{future.plan:}}{Default future strategy/strategies used unless otherwise specified via \code{\link{plan}()}. This is the future set when calling \code{plan("default")}. (Default: \code{eager})}
#'  \item{\code{future.globals.onMissing:}}{Action to take when non-existing global variables ("globals" or "unknowns") are identified when the future is created.  If \code{"error"}, an error is generated as soon as possible.  If \code{"ignore"}, no action is taken and an attemp to evaluate the future expression will be made.  The latter is useful when future expression contains non-standard evaluation (NSE).  (Default: \code{"error"}; likely to change in the near future)}
#'  \item{\code{future.globals.method:}}{Method used to identify globals. For details, see \code{\link[globals]{globalsOf}()}. (Default: \code{"ordered"})}
#'  \item{\code{future.globals.maxSize:}}{Maximum allowed total size (in bytes) of global variables identified. Used to prevent too large exports. (Default: \code{500*1024^2} = 500 MiB)}
#'  \item{\code{future.globals.resolve:}}{If \code{TRUE}, globals that are \code{\link{Future}} objects will be resolved and have their values (using \code{value()}) collected. (Default: \code{FALSE})}
#'  \item{\code{future.resolve.recursive:}}{An integer specifying the maximum recursive depth to which futures should be resolved. If negative, nothing is resolved.  If \code{0}, only the future itself is resolved.  If \code{1}, the future and any of it's elements that are futures are resolved, and so on. If \code{+Inf}, infinite search depth is used. (Default: \code{0})}
#'  \item{\code{future.wait.times:}}{Maximum number of times a future is polled waiting for it to be resolved.}
#'  \item{\code{future.wait.interval:}}{Initial interval (in seconds) between polls.}
#'  \item{\code{future.wait.alpha:}}{Positive scale factor used to increase the interval after each poll. (Default: \code{0.01})}
#' }
#'
#' @section Options for debugging futures:
#' \describe{
#'  \item{\code{future.debug:}}{If \code{TRUE}, extensive debug messages are generated. (Default: \code{FALSE})}
#'  \item{\code{future.progress:}}{If \code{TRUE}, progress is displayed while blocked waiting for futures to be resolved. (Default: \code{FALSE})}
#' }
#'
#' @section Options for configurating low-level system behaviors:
#' \describe{
#'  \item{\code{future.startup.script:}}{If \code{FALSE}, any \code{.future.R} startup scripts, which may exist in the current directory and / or the user's home directory, are ignored. (Default: \code{TRUE})}
#'  \item{\code{future.availableCores.methods:}}{Default lookup methods for \code{\link{availableCores}()}. (Default: \code{c("system", "mc.cores+1", "_R_CHECK_LIMIT_CORES_", "Slurm", "PBS", "SGE")})}
#'  \item{\code{future.cores:}}{Number of "system" cores used instead of what is reported by \code{\link[parallel]{detectCores}()}.}
#'  \item{\code{future.cmdargs:}}{Overrides \code{\link[base]{commandArgs}()} when the \pkg{future} package is loaded.}
#' }
#'
#'
#' @keywords internal
#' @name future.options
NULL
