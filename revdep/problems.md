# aroma.affymetrix

Version: 3.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.0Mb
      sub-directories of 1Mb or more:
        R             8.4Mb
        help          1.1Mb
        testScripts   1.3Mb
    ```

# aroma.core

Version: 3.1.3

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘sfit’ ‘expectile’ ‘HaarSeg’ ‘mpcbs’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        R   4.8Mb
    ```

# BAMBI

Version: 2.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# brms

Version: 2.3.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        R     3.5Mb
        doc   2.4Mb
    ```

# civis

Version: 1.5.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        R      2.9Mb
        help   1.6Mb
    ```

# codebook

Version: 0.5.9

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘graphics’ ‘htmltools’ ‘pander’ ‘readr’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘labelled’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 65 marked UTF-8 strings
    ```

# fiery

Version: 1.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘desc’
      All declared Imports should be used.
    ```

# future.BatchJobs

Version: 0.15.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/future_lapply.R’ failed.
    Last 13 lines of output:
        .. ..$ : NULL
      > 
      > for (scheduling in list(FALSE, TRUE)) {
      +   for (strategy in strategies) {
      +     message(sprintf("- plan('%s') ...", strategy))
      +     plan(strategy)
      +     y <- future_lapply(x, FUN=vector, length=2L, future.scheduling = scheduling)
      +     str(list(y=y))
      +     stopifnot(identical(y, y0))
      +   }
      + }
      - plan('sequential') ...
      plan(): nbrOfWorkers() = 1
      Error: The implementation of future_lapply() in the 'future' package is defunct. Please use the one in the 'future.apply' package instead.
      Execution halted
    ```

# lidR

Version: 1.5.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        libs   5.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘memoise’
      All declared Imports should be used.
    ```

# MetamapsDB

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘shiny’
      All declared Imports should be used.
    ```

# penaltyLearning

Version: 2017.12.08

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Actual message: "The implementation of future_lapply() in the 'future' package is defunct. Please use the one in the 'future.apply' package instead."
      
      ── 3. Failure: error for NA and constant features (@test-errors.R#124)  ────────
      `{ ... }` threw an error with unexpected message.
      Expected match: "after filtering NA and constant features, none remain for training"
      Actual message: "The implementation of future_lapply() in the 'future' package is defunct. Please use the one in the 'future.apply' package instead."
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 50 SKIPPED: 0 FAILED: 3
      1. Error: (unknown) (@test-demo8.R#8) 
      2. Failure: error for constant features (@test-errors.R#110) 
      3. Failure: error for NA and constant features (@test-errors.R#124) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# phylolm

Version: 2.6

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘surface’, ‘bayou’, ‘geiger’, ‘caper’
    ```

# promises

Version: 1.0.1

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘purrr’
    ```

# PSCBS

Version: 0.63.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        R         3.0Mb
        data-ex   2.6Mb
    ```

# QDNAseq

Version: 1.16.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘exportVCF’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# robotstxt

Version: 0.6.0

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 48-51 (using_robotstxt.Rmd) 
    Error: processing vignette 'using_robotstxt.Rmd' failed with diagnostics:
    The implementation of future_lapply() in the 'future' package is defunct. Please use the one in the 'future.apply' package instead.
    Execution halted
    ```

# startR

Version: 0.0.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unavailable namespace imported from by a ':::' call: ‘s2dverification’
      See the note in ?`:::` about the use of this operator.
    ```

