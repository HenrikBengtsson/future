# aroma.affymetrix

Version: 3.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        R             2.2Mb
        help          1.1Mb
        testScripts   1.3Mb
    ```

# aroma.core

Version: 3.1.3

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘expectile’ ‘HaarSeg’ ‘mpcbs’
    ```

# BAMBI

Version: 2.0.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   4.7Mb
    ```

# biotmle

Version: 1.4.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    .biotmle: no visible global function definition for ‘new’
    Undefined global functions or variables:
      new
    Consider adding
      importFrom("methods", "new")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# brms

Version: 2.7.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        R     2.9Mb
        doc   1.8Mb
    ```

# codebook

Version: 0.7.5

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘graphics’ ‘pander’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘mice’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 65 marked UTF-8 strings
    ```

# DeclareDesign

Version: 0.12.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(DeclareDesign)
      Loading required package: randomizr
      Loading required package: fabricatr
      Loading required package: estimatr
      > 
      > test_check("DeclareDesign")
      ── 1. Failure: gam (@test-model.R#247)  ────────────────────────────────────────
      `expect_equal(ncol(draw_estimates(des)), 7)` did not produce any warnings.
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 456 SKIPPED: 5 FAILED: 1
      1. Failure: gam (@test-model.R#247) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# future.callr

Version: 0.3.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/stdout.R’ failed.
    Last 13 lines of output:
       $ value     : int 42
       $ stdout    : chr ""
       $ conditions: list()
       $ version   : chr "1.8"
       - attr(*, "class")= chr "FutureResult"
      List of 6
       $ value            : int 42
       $ stdout           : chr ""
       $ conditions       : list()
       $ version          : chr "1.8"
       $ stderr           : chr ""
       $ PROTOTYPE_WARNING: chr "WARNING: The fields 'stderr' should be considered internal and experimental for now, that is, until the Future "| __truncated__
       - attr(*, "class")= chr "FutureResult"
      Error: is.null(r$stdout) is not TRUE
      Execution halted
    ```

# greta

Version: 0.3.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘truncdist’
    ```

# lidR

Version: 2.0.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.4Mb
      sub-directories of 1Mb or more:
        libs   7.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
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

# reproducible

Version: 0.2.5

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘devtools’
      All declared Imports should be used.
    ```

# robotstxt

Version: 0.6.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# skpr

Version: 0.57.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 49.1Mb
      sub-directories of 1Mb or more:
        libs  47.6Mb
    ```

# tableschema.r

Version: 1.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘iterators’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘parsedate’
    ```

