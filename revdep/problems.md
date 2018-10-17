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

Version: 2.5.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        R     3.5Mb
        doc   2.4Mb
    ```

# codebook

Version: 0.6.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘graphics’ ‘pander’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 65 marked UTF-8 strings
    ```

# DeclareDesign

Version: 0.10.0

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
      ── 1. Failure: error if you try to draw POs at a level using a variable that doe
      `my_potential_outcomes_formula(pop)` did not throw an error.
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 436 SKIPPED: 1 FAILED: 1
      1. Failure: error if you try to draw POs at a level using a variable that doesn't exist at that level (@test-potential-outcomes.R#160) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# fiery

Version: 1.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘desc’
      All declared Imports should be used.
    ```

# ipc

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘redux’ ‘txtq’
      All declared Imports should be used.
    ```

# jstor

Version: 0.3.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > test_check("jstor")
      ── 1. Failure: jst_define_import validates input (@test-import-spec.R#17)  ─────
      `jst_define_import(article = jst_get_book)` did not throw an error.
      
      ── 2. Failure: jst_define_import validates input (@test-import-spec.R#18)  ─────
      `jst_define_import(...)` did not throw an error.
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 238 SKIPPED: 3 FAILED: 2
      1. Failure: jst_define_import validates input (@test-import-spec.R#17) 
      2. Failure: jst_define_import validates input (@test-import-spec.R#18) 
      
      Error: testthat unit tests failed
      Execution halted
      Error while shutting down parallel: unable to terminate some child processes
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘curl’ ‘readxl’
      All declared Imports should be used.
    ```

# lidR

Version: 1.6.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        libs   5.9Mb
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

Version: 0.2.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      Receiving objects:  21% (85/401),   32 kb
      Receiving objects:  31% (125/401),  160 kb
      Receiving objects:  41% (165/401),  176 kb
      Receiving objects:  51% (205/401),  184 kb
      Receiving objects:  61% (245/401),  192 kb
      Receiving objects:  71% (285/401),  192 kb
      Receiving objects:  81% (325/401),  200 kb
      Receiving objects:  91% (365/401),  205 kb
      Receiving objects: 100% (401/401),  205 kb, done.
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 189 SKIPPED: 11 FAILED: 1
      1. Failure: fastMask produces correct results (@test-gis.R#22) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘gdalUtils’
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

Version: 0.56.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 46.3Mb
      sub-directories of 1Mb or more:
        libs  44.9Mb
    ```

