Copyright Henrik Bengtsson, 2015

## Asynchronous evaluation
_Asynchronous evaluation_ is a method for evaluating multiple R
expressions in, typically, a parallel or distributed fashion such that
the "observed" total time for computing all values is less that if
the expressions would be evaluated synchronously (sequentially).

For instance, the following evaluation, which is synchronous, takes about 10 seconds to complete:

```r
> x <- { Sys.sleep(5); 3.14 }
> y <- { Sys.sleep(5); 2.71 }
> z <- x + y
[1] 5.85
```

whereas the following _asynchronous_ evaluation only takes
about 5 seconds to complete when done on a
multi-core system:

```r
> library('async')
> x %<=% { Sys.sleep(5); 3.14 }
> y %<=% { Sys.sleep(5); 2.71 }
> z <- x + y
[1] 5.85
```


### Evaluation is done in a "local" environment
Each _asynchronous expression_ is evaluated in its own unique _asynchronous environment_, which is different from the calling environment.  The only way to transfer information from the asynchronous environment to the calling environment is via the (return) value, just as when functions are called and their values are returned.   In other words,

```r
x %<=% { a <- 3.14 }
```

is effectively equivalent to

```r
x %<=% local({ a <- 3.14 })
```

I both cases _asynchronous variable_ 'a' will be assigned value `3.14` in a "local" environment.  Since this is the last value in the expression, it is also the value of the asynchronous expression, which is therefore also the value "returned" (in R there is no need to "return" values; it is always the last value of the expression that will be used).  This is the value that will be assigned to variable `x` in the calling environment.  Asynchronous variable `a` is gone forever.  As a matter of fact, it is _not_ possible for an asynchronous expression to assign variables in the calling environment, i.e. assignments such as `<-`, `<<-` and `assign()` only affects the asynchronous environment.


### Global variables

Although the following expression is evaluated in an asynchronous environment - separated from the calling one - the asynchronous environment "inherits"(*) any "global" variables in the calling environment and its parents.  For example,
```r
a <- 2
y %<=% { b <- a*3.14; b }
```
results in `y` being assigned `6.28`.

If a global variable is one that is assigned by another asynchronous expression, then dependent asynchronous expressions will wait for the former to complete in order to resolve the global variables.  For example, in
```r
a %<=% { Sys.sleep(7); runif(1) }
b %<=% { Sys.sleep(2); rnorm(1) }
c %<=% { x <- a*b; Sys.sleep(2); abs(x) }
d <- runif(1)
```
the third asynchronous expression will not be evaluated until `a` and `b` have taken their values.  As a matter of fact, even if `c` is also an asynchronous assignment, R will pause (**) until global variables `a` and `b` are resolved.  In other words, the assignment of `d` will not take place until `a` and `b` are resolved (but there is no need to wait for `c`).  This pause can be avoided using nested asynchronous evaluation (see Section below).


_Footnotes_:  
(\*) Since the asynchronous environment may be in a separate R session
on a physically different machine, the "inheritance" of "global"
variables is achieved by first identifying which variables in the
asynchronous expression are global and then copy them from the calling
environment to the asynchronous environment (using serialization).
This has to be taken into consideration when working with large
objects, which can take a substantial time to serialize.  Serialized
objects may also be written to file which then a compute node reads
back in. The global environments are identified using code inspection,
cf. the [codetools] package.  
(\*\*) There is currently no lazy-evaluation mechanism for global
variables from asynchronous evaluations.  However, theoretically, one
could imagine that parts of an asynchronous expression can be
evaluated while the required one is still being evaluated.  However,
the current implementation is such that the asynchronous evaluation
will not be _initiated_ until all global variables can be resolved.


## Nested asynchronous evaluation
It is possible to nest multiple levels of asynchronous evaluations, e.g.
```r
c %<=% {
  a %<=% { Sys.sleep(7); runif(1) }
  b %<=% { Sys.sleep(2); rnorm(1) }
  x <- a*b; Sys.sleep(2); abs(x)
}
d <- runif(1)
```
This will evaluate the expression for `c` asynchronously such that `d` is assigned almost momentarily.  In turn, the value for `c` will be resolved when _nested asynchronous expressions_ for local variables `a` and `b` have been evaluated.


## Other types of asynchronous assignments
The `%<=%` assignment operator _cannot_ be used in all cases where
regular `<-` assignment operator can be used.  As shown above, `%<=%`
can be used for assignment of (asynchronous) values to variables
(formally symbols).  It can also be use to assign to variables in
_environments_.  For example,
```r
> env <- new.env()
> env$a %<=% { 1 }
> env[["b"]] %<=% { 2 }
> name <- "c"
> env[[name]] %<=% { 3 }
```

These limitations of assignments via `%<=%` are because it performs
a _delayed assignment_ using `delayedAssign()`, which in turn has very
similar constraints as of what you can assign using the `assign()`
function, i.e. you can specify the name and target environment (which
defaults to the current environment) of the variable you want to
assign.  This means that you, for instance, cannot assign a value to
an element of a vector, matrix, list or a data.frame.  If tried, an
informative error will be generated, e.g.
```r
> x <- list()
> x$a %<=% { 1 }
Error: Delayed assignments can not be done to a 'list'; only to a
variable or an environment: x$a
```

If _indexed subsetting_ is needed for assignments, one can instead use
_"list environments"_ (implemented by the [listenv] package), which
emulates some of the index subsetting that lists have.  For example,
```r
x <- listenv()
for (ii in 1:3) {
  x[[ii]] %<=% { rnorm(ii) }
}
names(x) <- c("a", "b", "c")
```
The asynchronous values of a list environment can be retrieved
individually as `x[["b"]]` and `x$b` just as with regular
environments, but also as  `x[[2]]`.
To retrieve all values of an environment as a list, use `as.list(x)`.
As with any asynchronous values, retrieving one or more of
them from and list environment will cause R to pause until all
requested values are available, that is, until all corresponding
asynchronous evaluations have been completed.



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


[listenv]: https://github.com/HenrikBengtsson/listenv/
[async]: https://github.com/UCSF-CBC/async/
[brew]: http://cran.r-project.org/package=brew
[BatchJobs]: http://cran.r-project.org/package=BatchJobs
[BatchJobs configuration]: https://github.com/tudo-r/BatchJobs/wiki/Configuration
[codetools]: http://cran.r-project.org/package=codetools
[BiocParallel]: http://bioconductor.org/packages/release/bioc/html/BiocParallel.html
