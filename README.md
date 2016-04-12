# future: A Future API for R

## Introduction
The purpose of the 'future' package is to provide a very simple and uniform way of evaluting R expressions asynchroneously using various resources available to the user.

In programming, a _future_ is an abstraction for a _value_ that may be available at some point in the future.  The state of a future can either be _unresolved_ or _resolved_.  As soon as it is resolved, the value is available instantaneously.  If the value is queried while the future is still unresolved, the current process is _blocked_ until the future is resolved.  It is possible to check whether a future is resolved or not without blocking.  Exactly how and when futures are resolved depends on what strategy is used to evaluate them.  For instance, a future can be resolved using a "lazy" strategy, which means it is resolved only when the value is requested.  Another approach is an "eager" strategy, which means that it starts to resolve the future as soon as it is created.  Yet other strategies may be to resolve futures asynchronously, for instance, by evaluating expressions concurrently on a compute cluster.

Here is an example illustrating how the basics of futures work.  First, consider the following code snippet that uses plain R code:
```r
> v <- {
+   cat("Resolving...\n")
+   3.14
+ }
Resolving...
> v
[1] 3.14
```
It works by assigning the value of an expression to variable `v` and we then print the value of `v`.  Moreover, when the expression for `v` is evaluated we also print a message.

Next, here is the same code snippet modified to use futures instead:
```r
> library("future")
> v %<-% {
+   cat("Resolving...\n")
+   3.14
+ }
Resolving...
> v
[1] 3.14
```
The difference is how `v` is constructed; with plain R we use `<-` whereas with futures we use `%<-%`.

So why are futures useful?  Because we can choose to evaluate the future expression in, for instance, a separate R process by a simple switch of settings:
```r
> library("future")
> plan(multiprocess)
> v %<-% {
+   cat("Resolving...\n")
+   3.14
+ }
> v
[1] 3.14
```
With asynchronous futures the current/main R process is _not_ block and available for further processing while the future is being resolved in a separate process in the background.  In other words, futures provide a simply but yet powerful construct for parallel processing in R.


Now, if you cannot be bothered to read all the nitty-gritty details about futures, but just want to try them out, then skip to the end to play with the Mandelbrot demo using both parallel and non-parallel evaluation.



## Implicit or Explicit Futures

Futures can be created either _implicitly_ or _explicitly_.  In the introductory example above we used _implicit futures_ created via the `v %<-% { expr }` construct.  An alternative is _explicit futures_ using the `f <- future({ expr })` and `v <- value(f)` constructs.  For example, our future example could also be written as:
```r
> library("future")
> f <- future({
+   cat("Resolving...\n")
+   3.14
+ })
> v <- value(f)
Resolving...
> v
[1] 3.14
```

Either style of future construct works equally(*) well.  The implicitly style is most similar to how regular R code is written.  In principal all you have to do is to replace `<-` with a `%<-%` to turn the assigment into a future assignment.  On the other hand, this simplicity can also be decieving, particularly when asynchronous futures are being used.  In contrast, the explicit style makes it much more clear that futures are being used, which lowers the risk for mistakes and better communicates the design to others reading your code.

(*) There are cases where `%<-%` cannot be used without some modifications.  We will return to this in a below section.



To summarize, for explicit futures, we use:

* `f <- future({ expr })` - creates a future
* `v <- value(f)` - gets the value of the future (blocks if not yet resolved)

For implicit futures, we use:

* `v %<-% { expr }` - creates a future and a promise to its value

To keep it simple, we will use the implicit style in the rest of this document.



## Controlling How Futures are Resolved
The future package implements the following types of futures:

| Name            | OSes        | Description
|:----------------|:------------|:-----------------------------------------------------
| _synchronous:_  |             | _non-parallel:_
| eager           | all         |
| lazy            | all         | lazy evaluation - only happens iff value is requested
| transparent     | all         | for debugging (eager w/ early signalling and w/out local)
| _asynchronous:_ |             | _parallel_:
| multiprocess    | all         | multicore iff supported, otherwise multisession
| multisession    | all         | background R sessions (on current machine)
| multicore       | not Windows | forked R processes (on current machine)
| cluster         | all         | external R sessions on current and/or remote machines


By default, future expression are evaluated synchronously (in the current R session) immediately.  This evaluation strategy is referred to as "eager" and we refer to futures using this strategy as "eager futures".  When can explicitly set this strategy using `plan(eager)`.  In this section we will go through each of these strategies and discuss what they have in common and how they differ.

### Coherent Behavior Across Futures
Before going through each of the different future strategies, it could helpful if we talk about some of the design objectives of the future package and the Future API it defines.  When programming with futures, it should not really matter what future strategy will be used when running the code.  This is because we cannot really know what resources the user have access to so the choice of evaluation strategy should be in the hand of the user and not the developer.  In other words, the code should not make any assumptions on type of futures, e.g. synchronous or asynchronous.

One of the designs of the Future API of the future package was designed to encapsulate any differences such that all types of futures will appear to work the same.  This despite the expression may be evaluate locally in the current R process or across the world in a remote R session.  Another obvious advantage of having a consist API and behavior among different types of futures is that it helps prototyping.  Typically one would set up a script using eager evaluation and when fully tested one may turn on asynchronous processing.

Because of this, the defaults of of the different strategies are such that the results and side effects of evaluating a future expression are as similar as possible.  More specifically, the following is true for all futures:

* All _evaluation is done in a local environment_ (e.g. `local({ expr })`) such assignments do not affect the calling environment.  This is natural when evaluating in an external R process, but is also enforced when evaluating in the current R session.

* When a future is constructed, _global variables are identified and validated_.  For lazy evaluation, the globals are also "frozen" (cloned to a local environment) until needed.  For asynchronous evaluation, they are also exported to the R process/session that will be evaluating the future expression.  Regardless of strategy, globals that cannot be located will cause an informative error.  If too large globals (according an option) are about to be exported, an informative error is also generated.

* Future _expressions are only evaluated once_.  As soon as the value has been collected it will be available for all succeeding requests.

Here is an example illustrating that all assignments are done to a local environment:
```r
> plan(eager)
> a <- 1
> x %<-% {
+     a <- 2
+     2 * a
+ }
> x
[1] 4
> a
[1] 1
```

And here is an example illustrating that globals are validated already when the future is createed:
```r
> rm(b)
> x %<-% { 2 * b }
Error in globalsOf(expr, envir = envir, substitute = FALSE, tweak = tweak,  :
  Identified a global object via static code inspection ({; 2 * b; }), but
failed to locate the corresponding object in the relevant environments: 'b'
```
We will return to global variables and functions at the end of this document.

Now we are ready to explore the different future strategies.


### Synchronous Futures

#### Eager Futures
Eager futures are the default unless otherwise specified.  The are designed to behave as similar to regular R evaluation as possible while still fullfilling the Future API and behaviors.  Here is an example illustrating their properties:
```r
> plan(eager)
> pid <- Sys.getpid()
> pid
[1] 9016
> a %<-% {
+     pid <- Sys.getpid()
+     cat("Resolving 'a' ...\n")
+     3.14
+ }
Resolving 'a' ...
> b %<-% {
+     rm(pid)
+     cat("Resolving 'b' ...\n")
+     Sys.getpid()
+ }
Resolving 'b' ...
> c %<-% {
+     cat("Resolving 'c' ...\n")
+     2 * a
+ }
Resolving 'c' ...
> b
[1] 9016
> c
[1] 6.28
> a
[1] 3.14
> pid
[1] 9016
```
Since eager evaluation is taking place, each of the three futures is resolved instantaneously in the moment it is created.  Note also how `pid`, which is the process ID of the current process, is neither overwritten nor removed.  Since synchronous processing is used, future `b` is evaluated in the current (the calling) process, which is why the value of `b` and `pid` are the same.


#### Lazy Futures
A lazy future evaluates its expression only if its value is queried.  It will occur if the future is checked for being resolved or not.  Here is the above example when using lazy evaluation:
```r
> plan(lazy)
> pid <- Sys.getpid()
> pid
[1] 9016
> a %<-% {
+     pid <- Sys.getpid()
+     cat("Resolving 'a' ...\n")
+     3.14
+ }
> b %<-% {
+     rm(pid)
+     cat("Resolving 'b' ...\n")
+     Sys.getpid()
+ }
> c %<-% {
+     cat("Resolving 'c' ...\n")
+     2 * a
+ }
Resolving 'a' ...
> b
Resolving 'b' ...
[1] 9016
> c
Resolving 'c' ...
[1] 6.28
> a
[1] 3.14
> pid
[1] 9016
```
As previously, variable `pid` is unaffected because all evaluation is done in a local environment.  More interestingly, future `a` is no longer evaluated in the moment it is created, but instead when it is needed the first time, which happens when future `c` is created.  This is because `a` is identified as a global variable that needs to be captured ("frozen" to `a == 3.14`) in order to set up future `c`.  Later when `c` (the value of future `c`) is queried, `a` has already been resolved and only the expression for future `c` is evaluated and `6.14` is obtained.  Moreover, future `b` is just like `a` evaluated only when it is needed the first time, i.e. when `b` is printed.  As for eager evaluation, lazy evaluation is also synchronous which is why `b` and `pid` have the same value.  Finally, notice also how `a` is not re-evaluated when we query the value again.  Actually, with implicit futures, variables `a`, `b` and `c` are all regular values as soon as their futures have been resolved.

_Comment_: Lazy evaluation is already supported by R itself.  Arguments are passed to functions using lazy evaluation.  It is also possible to assign variables  using lazy evaluation using `delayedAssign()`, but contrary to lazy futures this function does not freeze globals.  For more information, see `help("delayedAssign", package="base")`.


#### Transparent Futures
[...]



### Asynchronous Futures

#### Multisession Futures
Next we will turn to asynchronous futures.  We start with multisession futures because they supported by all operating systems.  A multisession future is evaluated in a background R session running on the same machine as the calling R process.  Here is our example with multisession evaluation:
```r
> plan(multisession)
> pid <- Sys.getpid()
> pid
[1] 9016
> a %<-% {
+     pid <- Sys.getpid()
+     cat("Resolving 'a' ...\n")
+     3.14
+ }
> b %<-% {
+     rm(pid)
+     cat("Resolving 'b' ...\n")
+     Sys.getpid()
+ }
> c %<-% {
+     cat("Resolving 'c' ...\n")
+     2 * a
+ }
> b
[1] 9724
> c
[1] 6.28
> a
[1] 3.14
> pid
[1] 9016
```
The first thing we observe is that the values of `a`, `c` and `pid` are the same are previously.  However, we noticed that `b` is different from before.  This is because the future `b` is evaluated in a different R process and therefore it returns a different process ID.  Another difference is that the messages, generated by `cat()`, are no longer displayed.  This is because they are outputted to the background sessions and not the calling session.


#### Multicore Futures
On operating systems where R supports _forking_ of processes, which is basically all operating system but not Windows, an alternative to spawning R sessions in the background is to fork the existing R process.  Forking an R process is considered faster working with a separate R session running in the background.  One reason is that the overhead of exporting large globals to the background session can be greater than when forking is used.  Other than this, the behavior of using multicore evaluation is very similar to using multisession evaluation.  In both cases the evaluation is done on the local machine.

Here is the output from running our example with multicore evaluation:
```r
> plan(multicore)
> pid <- Sys.getpid()
> pid
[1] 9016
> a %<-% {
+     pid <- Sys.getpid()
+     cat("Resolving 'a' ...\n")
+     3.14
+ }
> b %<-% {
+     rm(pid)
+     cat("Resolving 'b' ...\n")
+     Sys.getpid()
+ }
> c %<-% {
+     cat("Resolving 'c' ...\n")
+     2 * a
+ }
> b
[1] 9729
> c
[1] 6.28
> a
[1] 3.14
> pid
[1] 9016
```
The output and behavior is the same as that for multisession futures, except that a different process ID was used.


#### Multiprocess Futures
Sometimes we do not know whether multicore futures are supported or not, but it might still be that we would like to write platform-independent scripts or instructions that works everywhere.  In such cases we can specify that we want to use "multiprocess" futures as in:
```r
plan(multiprocess)
```
A multiprocess future is not a formal class of futures by itself, but rather a convenient alias for either of the two.  When this is specified, multisession evaluation will be used unless multicore evaluation is supported.


#### Cluster Futures
Cluster futures evaulates expression on an ad-hoc cluster that was set up via `parallel::makeCluster()`.  For instance, assume you have access to three nodes `n1`, `n2` and `n3`, you can use these for asynchronous evaluation as:
```r
> hosts <- c("n1", "n2", "n3")
> cl <- parallel::makeCluster(hosts)
> plan(cluster, cluster = cl)
> pid <- Sys.getpid()
> pid
[1] 9016
> a %<-% {
+     pid <- Sys.getpid()
+     cat("Resolving 'a' ...\n")
+     3.14
+ }
> b %<-% {
+     rm(pid)
+     cat("Resolving 'b' ...\n")
+     Sys.getpid()
+ }
> c %<-% {
+     cat("Resolving 'c' ...\n")
+     2 * a
+ }
> b
[1] 9908
> c
[1] 6.28
> a
[1] 3.14
> pid
[1] 9016
```
Just as for the other asynchronous evaluation strategies, the output from `cat()` is not displayed on the current/calling machine.  Note that with proper configuration and automatic authentication setup, there is nothing preventing us from using the same approach for using a cluster of remote machines.  Finally, it is considered good style to shutdown the cluster when it is no longer needed, that is, calling `parallel::stopCluster(cl)`.  However, it will shut itself done if the main process is terminated.  For more information on how to setup and manage such clusters, see `help("makeCluster", package="parallel")`.



### Different Strategies for Different Futures
Sometimes one may want to use an alternative evaluation strategy for a specific future.  Although one can use `old <- plan(new)` and afterward `plan(old)` to temporarily switch strategies, a simpler approach is to use the `%plan%` operator, e.g.
```r
> plan(eager)
> pid <- Sys.getpid()
> pid
[1] 9016
> a %<-% {
+     Sys.getpid()
+ }
> b %<-% {
+     Sys.getpid()
+ } %plan% multiprocess
> c %<-% {
+     Sys.getpid()
+ } %plan% multiprocess
> a
[1] 9016
> b
[1] 10956
> c
[1] 9724
```
As seen by the different process IDs, future `a` is evaluated eagery using the same process as the calling environment whereas the other two are evaluated using multiprocess futures.




## Installation
R package future is available on [CRAN](http://cran.r-project.org/package=future) and can be installed in R as:
```r
install.packages('future')
```

### Pre-release version

To install the pre-release version that is available in branch `develop`, use:
```r
source('http://callr.org/install#HenrikBengtsson/future@develop')
```
This will install the package from source.  



## Software status

| Resource:     | CRAN        | Travis CI     | Appveyor         |
| ------------- | ------------------- | ------------- | ---------------- |
| _Platforms:_  | _Multiple_          | _Linux_       | _Windows_        |
| R CMD check   | <a href="http://cran.r-project.org/web/checks/check_results_future.html"><img border="0" src="http://www.r-pkg.org/badges/version/future" alt="CRAN version"></a> | <a href="https://travis-ci.org/HenrikBengtsson/future"><img src="https://travis-ci.org/HenrikBengtsson/future.svg" alt="Build status"></a> | <a href="https://ci.appveyor.com/project/HenrikBengtsson/future"><img src="https://ci.appveyor.com/api/projects/status/github/HenrikBengtsson/future?svg=true" alt="Build status"></a> |
| Test coverage |                     | <a href="https://coveralls.io/r/HenrikBengtsson/future"><img src="https://coveralls.io/repos/HenrikBengtsson/future/badge.svg?branch=develop" alt="Coverage Status"/></a>   |                  |
