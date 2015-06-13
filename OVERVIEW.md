Copyright Henrik Bengtsson, 2015

## Introduction
I programming, a _future_ is an abstraction for a _value_ that may available at some point in the future.  A future can either be
_unresolved_ or _resolved_.  As soon as it is resolved, the value is available immediately.  If the value is queried while the future is still unresolved, the current process is _blocked_ until the future is resolved and the value can be obtained.  Exactly how and when futures are resolved, depends on what strategy is used to evaluate them.  For instance, a future can resolved using a "lazy" strategy, which means it is resolved only when the value is requested, if at all.  Another aproach is an "eager" strategy, which means that it is starts to resolve the future as soon as it is created.  Alternative strategies is to resolve futures asynchroneously, for instance, by evaluating expressions concurrently on a compute cluster.

### Futures in R

The [future] package in R defines a minimalistic Future API.  The package itself only provides mechanisms for evaluating expressions _synchroneously_ via "lazy" and "eager" futures.  More advanced strategies can be implemented by other packages extending the future package.  For instance, the [async] package resolves futures _asynchroneously_ via any of the backends that the [BatchJobs] framework provides, e.g. processing using multiple cores on a single machine, on a compute cluster via a job queue and so on.

Here is an example illustrating how to create a future:

```r
> library(future)
> f <- future({
+   message("Resolving...")
+   3.14
+ })
Resolving...
> v <- value(f)
> v
[1] 3.14
```
Note how the future is resolved as soon as we create it using `future()`.  This is because the default strategy for resolving futures in the [future] package is to evaluate them in an "eager" and synchroneous manner, which emulates R itself in _when_ it evaluates expressions.

We can switch to using a "lazy" evaluation strategy using the `plan()` function, e.g.

```r
> plan(lazy)
> f <- future({
+   message("Resolving...")
+   3.14
+ })
> v <- value(f)
> v
Resolving...
[1] 3.14
```

Note how the future is unresolved until the point where we as for its value (which also means that a lazy future many never be resolved).


### Future evaluation and promises
An important part of a future is the fact that although we do not necessarily control _when_ a future is resolved, it provides a "promise" of resolving its value if requested.  In other words, if we ask for the value of a future, we are guaranteed that its expression will be evaluated and a value will be returned (or an error will be generated if evaluation caused an error).  An alternative to a `future-value` pair of function calls is to use the `%<=%` infix operator (also provided by the [future] package).  For example,

```r
> plan(lazy)
> v %<=% {
+   message("Resolving...")
+   3.14
+ }
> v
Resolving...
[1] 3.14
```

This works by (i) creating a future and (ii) assigning its value to variable `v` as a _promise_.   Promises are constructs that are built-in in R (see `help(delayedAssign)`).  Specifally, the expression/value assigned to variable `v` is promised to be evaluated/resolved (no later than) when it is requested.



### About the built-in "eager" and "lazy" futures
The [future] package provides two evaluation strategies of futures, namely "lazy" and "eager", implemented by functions `lazy()` and `eager()`.  Other strategies such as asynchroneous evaluation on a computer cluster are implemented by other R packages, e.g. [async].  Since the asynchroneous strategies are more likely to be used in practice, the built-in eager and lazy mechanisms tries to emulate those as far as possible while still evaluating them in a synchroneous way.

For instance, the default is that the future expression is evaluated in _a local environment_ (cf. `help("local")`), which means that any assignments are done to local variable such that the global environment of the main/calling process is unaffected.  Here is an example:

```r
> a <- 2.71
> x %<=% { a <- 3.14 }
> x
[1] 3.14
> a
[1] 2.71
```
This shows that `a` in the global environment is unaffected by the expression evaluated by the future.  For anyone interested, it is possible to evaluate both lazy and eager futures in the calling environment.  For instance,
```r
> plan(lazy, local=FALSE)
> a <- 2.71
> x %<=% { a <- 3.14 }
> a
[1] 2.71
> x
[1] 3.14
> a
[1] 3.14
```

### Different evaluation strategies for different futures
Sometimes one wish to use a different evaluation strategy for a specific future.  Although one can use `old <- plan(new)` and and then `plan(old)` to temporarily switch strategy, a simpler approach is to use the `%plan%` operator, e.g.
```r
> plan(eager) # The default
> a <- 0
> x %<=% { 3.14 }
> y %<=% { a <- 2.71 } %plan% lazy(local=FALSE)
> x
[1] 3.14
> a
[1] 0
> y
[1] 2.71
> a
[1] 2.71
```


### Nested futures
It is possible to nest futures in multiple levels and each of the nested future may be resolved using a different strategy, e.g.
```r
> plan(lazy)
> c %<=% {
+   message("Resolving 'c'")
+   a %<=% { 
+     message("Resolving 'a'")
+   } %plan% eager
+   b %<=% {
+     message("Resolving 'b'")
+     -9 * a 
+   }
+   message("Local variable 'x'")
+   x <- b / 3
+   abs(x)
+ }
> d <- 42
> d
[1] 42
>
> c
Resolving 'c'
Local variable 'x'
Resolving 'b'
Resolving 'a'
[1] 6
```

## Assigning futures to environments and list environments
The `%<=%` assignment operator _cannot_ be used in all cases where regular `<-` assignment operator can be used.  For instance, it is not possible to assign future value to a _list_, e.g.

```r
> x <- list()
> x$a %<=% { 2.71 }
Error: Subsetting can not be done on a 'list'; only to an environment: 'x$a'
```

This is because _promises_ themselves cannot be assigned to lists.  More precisely, the limitation of future assignments are the same as those for assignments using the `assign()` function, which means you can only assign futures to environment (defaulting to the current environment) but nothing else, i.e. not to elements of a vector, matrix, list or a data.frame and so on.  To assign to a future value to an environment, do:

```r
> env <- new.env()
> env$a %<=% { 1 }
> env[["b"]] %<=% { 2 }
> name <- "c"
> env[[name]] %<=% { 3 }
> as.list(env)
$a
[1] 1

$b
[1] 2

$c
[1] 3
```

If _indexed subsetting_ is needed for assignments, the [listenv] package provides _"list environments"_, which technically are environments, but also emulates how lists are subsetted using indices.  For example,
```r
> library(listenv)
 x <- listenv()
 for (ii in 1:3) {
  x[[ii]] %<=% { rnorm(ii) }
}
> names(x) <- c("a", "b", "c")
```
The future values of a list environment can be retrieved individually as `x[["b"]]` and `x$b` just as with regular environments, but also as `x[[2]]`, e.g.
```r
> x[[2]]
[1] -0.6735019  0.9873067
> x$b
[1] -0.6735019  0.9873067
```
Just as for any type of environment, all the value of a list environment can be retrieved as a list using `as.list(x)`.  Remember though that future assignments are used, which means that until they are all resolved, the calling process will be blocked until all values are available.


## Exception handling
If an error occurs during the evaluation of an asynchronous
expression, that error is thrown when the asynchronous value is
retrieved.  For example:
```r
> e %<=% { stop("Whoops!") }
> 1+2
[1] 3
> e
Error: BatchJobError: 'Error in eval(expr, envir = envir) : Whoops! '
```
This error is rethrown each time `e` is retrieved, so it is not
possible to "inspect" `e` any further using standard R functions such
as `print()` and `str()`.
In order to troubleshoot an error, one can use the `inspect()` function
to retrieve the underlying asynchronous "task" object, e.g.
```r
> inspect(e)
AsyncTask:
Expression:
  {
      stop("Whoops!")
  }
Status: 'error', 'started', 'submitted'
Error: 'Error in eval(expr, envir = envir) : Whoops! '
Backend:
Job registry:  async1189072551
  Number of jobs:  1
  Files dir: T:/async1189072551-files
  Work dir: T:/
  Multiple result files: FALSE
  Seed: 544948890
  Required packages: BatchJobs
```

### Interrupts
Interrupts such as user interrupts ("Ctrl-C") will only interrupt any
evaluation running in the same R session.  They will not interrupts
the evaluation of asynchronous expressions running in separate R
processes such as those pushed out on a cluster.  This can be useful
when one tries to get the value of a asynchronous evaluation that
took longer than expected causing R to pause.  By hitting Ctrl-C one
can get back to the main prompt and do other tasks while waiting for
the long-running evaluation to complete.


## Choosing backend
The asynchronous evaluation done by the [async] package uses the [BatchJobs] package as a backend for effectuating the computations.  This can be configured using the `backend()` function.  Examples:

* `backend("default")` - use `.BatchJobs.R` configuration file,
   if available. If not, use `"multicore-1"` if supported,
   otherwise use `"local"`
* `backend("multicore")` - parallel processing using all available
   cores on the local machine.
* `backend("multicore-1")` - parallel processing using all but one
   of the available cores on the local machine.
* `backend("local")` - non-parallel processing in a separate R process.
* `backend("interactive")` - non-parallel processing in the
   current R session.
* `backend(".BatchJobs.R")` - use `.BatchJobs.R` configuration file.

It is possible to specify a set of possible backends,
e.g. `backend(c("multicore", "local"))`.  The first
available/supported backend will be used.

If none of the requested backends work/are supported, the fallback is
always to use the `"local"` which is available on all systems.

To see what the most recently set backend was, use `backend()`.
To reset, use `backend("reset")`
(which is equivalent to `backend("default")`).



### Multi-core processing
Multi-core processing is when multiple R processes are used (instead of the
default single-thread single-process R session we are all used to).
Note that multi-core processing is not available on Windows (this is a
limitation of the R core package `parallel`).
When specifying `backend("multicore")`, all available cores are used on the
machine.  For heavy computations, this might render the machine very slow and
useless for other things.  To avoid this, one can specify how many cores to
"spare", e.g. `backend("multicore-2")` will use all but two cores.
Note how the default (see above) is `backend("multicore-1")`.
As an alternative, it is also possible to specify the exact number of cores
to be used, e.g. `backend("multicore=3")`.


### Advanced configuration
For more complicated backends (e.g. clusters), one has to use
BatchJobs-specific configuration files as explained in the Appendix.
The default is to use such configuration files, if available.  To
explicitly use such backend configurations, use `backend(".BatchJobs.R")`.


### Backend aliases
It is possible to create aliases for favorite sets of backends.  For instance,
```r
backend(cluster=c(".BatchJobs.R", "multicore", "local"))
```
creates backend alias `"cluster"` using whatever BatchJobs
configuration file is available with fallback to `"multicore"`
and `"local"`.  After setting an alias it can be specified as:
```r
backend("cluster")
```


### Evaluate asynchronous expression on specific backend
Asynchronous expressions are processed by the default backend as given by `backend()`.  If another backend should be used to evaluate for a particular expression, operator `%backend%` can be used.  For example,
```r
a %<=% { Sys.sleep(7); runif(1) } %backend% "multicore-2"
b %<=% { Sys.sleep(2); rnorm(1) } %backend% "cluster"
c %<=% { x <- a*b; Sys.sleep(2); abs(x) }
d <- runif(1)
```
In this case expression `a` will be processed by the `multicore-2` backend, expression `c` by the `cluster` backend, and expression `c` by the default backend.

Backend specifications can also be used in nested asynchronous evaluations:
```r
backend("cluster")
a %<=% { Sys.sleep(7); runif(1) }
c %<=% {
  b %<=% { Sys.sleep(2); rnorm(1) } %backend% "multicore=2"
  x <- a*b; Sys.sleep(2); abs(x)
}
d <- runif(1)
```

## Examples

### Download files in parallel
```r
library('async')
library('R.utils')
repos <- c(CRAN="http://cran.r-project.org",
           Bioc="http://www.bioconductor.org/packages/release/bioc")
urls <- sapply(repos, file.path, "src/contrib/PACKAGES", fsep="/")
files <- new.env()
for (name in names(urls)) {
  files[[name]] %<=% downloadFile(urls[[name]], path=name)
}
str(as.list(files))
```


## Availability
This package is only available via GitHub.  Install in R as:

```s
source('http://callr.org/install#listenv,globals')
source('http://callr.org/install#UCSF-CBC/future')
source('http://callr.org/install#UCSF-CBC/async')
```


## Future directions
The above, which is a fully functional prototype, relies 100% on
[BatchJobs] as the backend.  Unfortunately, BatchJobs has some
limitations as it stands.  The most important one is the fact that [all
machines, including the head machine, have to share the same file
system](https://github.com/tudo-r/BatchJobs/issues/71).  This means
that it is, for instance, not possible to do asynchronous evaluation
on remote hosts, e.g. over ssh.  If that would be possible, then one
can imagine doing things such as:
```r
# The world's computer resources at your R prompt
tasks %<=% {
  update.packages()
} %backends% c("local", "cluster", "AmazonEC2", "GoogleCompEngine")

tcga %<=% {
  backend("cluster")

  a %<=% {
    doCRMAv2("BreastCancer", chipType="GenomeWideSNP_6")
  }

  b %<=% {
    doCRMAv2("ProstateCancer", chipType="Mapping250K_Nsp")
  }

  list(a=a, b=b)
} %backend% "AmazonEC2"

hapmap %<=% {
  backend("cluster")

  normals %<=% {
    doCRMAv2("HapMap2", chipType="GenomeWideSNP_6")
  }

  normals
} %backend% "GoogleCompEngine"
```
Obviously great care needs to be taken in order to minimize the amount
of data sent back and forth, e.g. returning really large objects.

In order for the above to work, one would have to extend the
BatchJobs Registry framework to work across file systems, which
would requiring serialization and communicating over sockets.
A better approach is probably to instead use the [BiocParallel]
package as the main framework for backends.  BiocParallel "aims to
provide a unified interface to existing parallel infrastructure where
code can be easily executed in different environments".  It already
has built in support for BatchJobs.  More importantly, it support many
other backends, including Simple Network of Workstations ("SNOW")
style clusters. A SNOW cluster consists of a set of local or remote
workers that communicates with the head node/machine via sockets such
that data and commands can be transferred across using a serialized
protocol.  For example, from the BiocParallel vignette:
```r
hosts <- c("rhino01", "rhino01", "rhino02")
param <- SnowParam(workers = hosts, type = "PSOCK")
Execute FUN 4 times across the workers.
> FUN <- function(i) system("hostname", intern=TRUE)
> bplapply(1:4, FUN, BPPARAM = param)
```

Because of this, the next plan is to update 'async' to work on top of
BiocParallel instead.


## Appendix

### Configuration of backend for parallel / distributed processing
Basic backends can be configured using the `backend()` function.
For full control, or for more complicated backends such as clusters,
one can use the configuration options available from the BatchJobs
package.  In summary, this type of configuration is done via a
`.BatchJobs.R` configuration file that can reside in either the
current directory or the user's home directory
(this file is only needed on compute nodes if nested asynchronous
calls should also use the same configuration).  These settings
are used by default if available.  They also be explicitly specified
by `backend(".BatchJobs.R")`.

For example, to configure BatchJobs to distribute computations on a
set of known machines (for which you have ssh access and that
[share the same file system as your head
machine](https://github.com/tudo-r/BatchJobs/issues/71)), let the
`.BatchJobs.R` file contain:
```r
cluster.functions <- makeClusterFunctionsSSH(
  makeSSHWorker(nodename="n6", max.jobs=2),
  makeSSHWorker(nodename="n8"),
  makeSSHWorker(nodename="n12")
)
```

To use a more formal cluster system with a Torque/PBS job queue mechanism, use:
```r
cluster.functions <- local({
  tmpl <- system.file(package="async", "config", "pbs.tmpl")
  makeClusterFunctionsTorque(tmpl)
})
```
where the "tmpl" file is a [brew]-embedded PBS script template.

For further details and examples on how to configure BatchJobs,
see the [BatchJobs configuration] wiki page.


[future]: https://github.com/UCSF-CBC/future/
[listenv]: https://github.com/HenrikBengtsson/listenv/
[async]: https://github.com/UCSF-CBC/async/
[brew]: http://cran.r-project.org/package=brew
[BatchJobs]: http://cran.r-project.org/package=BatchJobs
[BatchJobs configuration]: https://github.com/tudo-r/BatchJobs/wiki/Configuration
[codetools]: http://cran.r-project.org/package=codetools
[BiocParallel]: http://bioconductor.org/packages/release/bioc/html/BiocParallel.html
