#' Functions Moved to 'parallelly'
#'
#' The following function used to be part of \pkg{future} but has since
#' been migrated to \pkg{parallelly}.  The migration started with
#' \pkg{future} 1.20.0 (November 2020).  They were moved because they
#' are also useful outside of the \pkg{future} framework.
#'
#' * [parallelly::as.cluster()]
#' * [parallelly::autoStopCluster()]
#' * [parallelly::availableCores()]
#' * [parallelly::availableWorkers()]
#' * [parallelly::makeClusterMPI()]
#' * [parallelly::makeClusterPSOCK()]
#' * [parallelly::makeNodePSOCK()]
#' * [parallelly::supportsMulticore()]
#' 
#' For backward-compatible reasons, these functions remain available as
#' exact copies also from this package (as re-exports).  For example,
#'
#' ```r
#' cl <- parallelly::makeClusterPSOCK(2)
#' ```
#'
#' can still be accessed as:
#'
#' ```r
#' cl <- future::makeClusterPSOCK(2)
#' ```
#'
#' @importFrom parallelly as.cluster
#' @export as.cluster
#' @aliases as.cluster
#'
#' @importFrom parallelly autoStopCluster
#' @export autoStopCluster
#' @aliases autoStopCluster
#'
#' @importFrom parallelly availableCores
#' @export availableCores
#' @aliases availableCores
#'
#' @importFrom parallelly availableWorkers
#' @export availableWorkers
#' @aliases availableWorkers
#'
#' @importFrom parallelly makeClusterMPI
#' @export makeClusterMPI
#' @aliases makeClusterMPI
#'
#' @importFrom parallelly makeClusterPSOCK
#' @export makeClusterPSOCK
#' @aliases makeClusterPSOCK
#'
#' @importFrom parallelly makeNodePSOCK
#' @export makeNodePSOCK
#' @aliases makeNodePSOCK
#'
#' @importFrom parallelly supportsMulticore
#' @export supportsMulticore
#' @aliases supportsMulticore
#'
#' @name re-exports
NULL
