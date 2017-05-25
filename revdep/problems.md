# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.4.0 (2017-04-21) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |en                           |
|collate  |en_US.UTF-8                  |
|tz       |America/Los_Angeles          |
|date     |2017-05-25                   |

## Packages

|package  |*  |version |date       |source         |
|:--------|:--|:-------|:----------|:--------------|
|digest   |   |0.6.12  |2017-01-27 |cran (@0.6.12) |
|future   |   |1.4.0   |2017-03-13 |cran (@1.4.0)  |
|globals  |   |0.10.0  |2017-04-17 |cran (@0.10.0) |
|listenv  |   |0.6.0   |2015-12-28 |cran (@0.6.0)  |
|markdown |   |0.8     |2017-04-20 |cran (@0.8)    |
|R.rsp    |   |0.41.0  |2017-04-16 |cran (@0.41.0) |

# Check results

4 packages with problems

|package          |version | errors| warnings| notes|
|:----------------|:-------|------:|--------:|-----:|
|fiery            |0.2.2   |      1|        0|     0|
|future.BatchJobs |0.14.0  |      1|        0|     0|
|PSCBS            |0.62.0  |      1|        0|     0|
|QDNAseq          |1.12.0  |      0|        1|     0|

## fiery (0.2.2)
Maintainer: Thomas Lin Pedersen <thomasp85@gmail.com>  
Bug reports: https://github.com/thomasp85/fiery/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
  Running ‘testthat.R’ [1s/11s]
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  5: lazy(expr = {
         message("test")
         10
     })
  6: .Defunct(msg = "Future strategy 'lazy' is deprecated. Instead, use f <- future(..., lazy = TRUE) or v %<-% { ... } %lazy% TRUE.")
  7: stop(paste(msg, collapse = ""), call. = FALSE, domain = NA)
  
  testthat results ================================================================
  OK: 152 SKIPPED: 0 FAILED: 3
  1. Error: futures can be added and called (@test-Fire.R#214) 
  2. Error: DelayStack works (@test-FutureStack.R#7) 
  3. Error: TimeStack works (@test-FutureStack.R#34) 
  
  Error: testthat unit tests failed
  Execution halted
```

## future.BatchJobs (0.14.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/future.BatchJobs/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
  Running ‘000.sessionDetails.R’
  Running ‘BatchJobsFuture,gc.R’
  Running ‘BatchJobsFuture.R’
  Running ‘BatchJobsFutureError.R’
  Running ‘DEPRECATED.backend.R’
  Running ‘DEPRECATED.resources.R’
  Running ‘batchjobs_custom.R’
  Running ‘batchjobs_interactive.R’
  Running ‘batchjobs_job.delay.R’ [10s/13s]
... 12 lines ...
  Tweak future expression to call with '...' arguments ...
  Did you mean to create the future within a function?  Invalid future expression tries to use global '...' variables that do not exist: {; sum(x, y, ...); }
  Error in getGlobalsAndPackages(expr, envir = envir, tweak = tweakExpression,  : 
    Did you mean to create the future within a function?  Invalid future expression tries to use global '...' variables that do not exist: {; sum(x, y, ...); }
  [1] "Error in getGlobalsAndPackages(expr, envir = envir, tweak = tweakExpression,  : \n  Did you mean to create the future within a function?  Invalid future expression tries to use global '...' variables that do not exist: {; sum(x, y, ...); }\n"
  attr(,"class")
  [1] "try-error"
  attr(,"condition")
  <simpleError in getGlobalsAndPackages(expr, envir = envir, tweak = tweakExpression,     globals = globals): Did you mean to create the future within a function?  Invalid future expression tries to use global '...' variables that do not exist: {; sum(x, y, ...); }>
  Error: Future strategy 'lazy' is deprecated. Lazy evaluation can no longer be set via plan(). Instead, use f <- future(..., lazy = TRUE) or v %<-% { ... } %lazy% TRUE.
  Execution halted
```

## PSCBS (0.62.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/PSCBS/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
  Running ‘PairedPSCBS,boot.R’
  Running ‘findLargeGaps.R’
  Running ‘randomSeed.R’
  Running ‘segmentByCBS,calls.R’
  Running ‘segmentByCBS,futures.R’
Running the tests in ‘tests/segmentByCBS,futures.R’ failed.
Last 13 lines of output:
  > knownSegments <- Reduce(rbind, knownSegments)
  > str(knownSegments)
  'data.frame':	9 obs. of  3 variables:
   $ chromosome: int  1 1 1 2 2 2 3 3 3
   $ start     : num  55168 34194740 41080533 55168 34194740 ...
   $ end       : num  34142178 41044125 99910827 34142178 41044125 ...
  > 
  > message("*** segmentByCBS() via futures ...")
  *** segmentByCBS() via futures ...
  > 
  > message("*** segmentByCBS() via 'lazy' futures without attaching 'future' ...")
  *** segmentByCBS() via 'lazy' futures without attaching 'future' ...
  > future::plan("lazy")
  Error: Future strategy 'lazy' is deprecated. Lazy evaluation can no longer be set via plan(). Instead, use f <- future(..., lazy = TRUE) or v %<-% { ... } %lazy% TRUE.
  Execution halted
```

## QDNAseq (1.12.0)
Maintainer: Daoud Sie <d.sie@vumc.nl>  
Bug reports: https://github.com/ccagc/QDNAseq/issues

0 errors | 1 warning  | 0 notes

```
checking for missing documentation entries ... WARNING
Undocumented code objects:
  ‘exportVCF’
All user-level objects in a package should have documentation entries.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.
```

