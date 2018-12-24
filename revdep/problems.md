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

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > colData(illuminaData) <- colData(illuminaData) %>%
    +      data.frame %>%
    +      dplyr::mutate(age = as.numeric(age > median(age))) %>%
    +      DataFrame
    > 
    > varInt_index <- which(names(colData(illuminaData)) %in% "benzene")
    > 
    > biomarkerTMLEout <- biomarkertmle(se = illuminaData[1:2, ],
    +                                   varInt = varInt_index,
    +                                   parallel = FALSE,
    +                                   family = "gaussian",
    +                                   g_lib = c("SL.mean", "SL.glm"),
    +                                   Q_lib = "SL.mean"
    +                                  )
    Warning in biomarkertmle(se = illuminaData[1:2, ], varInt = varInt_index,  :
      Sequential evaluation is strongly discouraged. 
     Proceed with caution.
    Error in sprintf(gettext(fmt, domain = domain), ...) : 
      object 'package' not found
    Calls: biomarkertmle ... packageStartupMessage -> .makeMessage -> gettextf -> sprintf
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
         data.frame(..., check.names = FALSE))(`6960451` = "Loading required package: nnls\n", 
             `2600731` = packageStartupMessage(gettextf("Loading required package: %s", package), 
                 domain = NA))
      4: data.frame(..., check.names = FALSE)
      5: packageStartupMessage(gettextf("Loading required package: %s", package), domain = NA)
      6: .makeMessage(..., domain = domain, appendLF = appendLF)
      7: gettextf("Loading required package: %s", package)
      8: sprintf(gettext(fmt, domain = domain), ...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 11 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test-biomarkertmle.R#21) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

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

# future.BatchJobs

Version: 0.16.0

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/BatchJobsFutureError.R’ failed.
    Last 13 lines of output:
       'expired' status countdown: 3
      Poll #19 (4.13 secs): status = expired, started, submitted
       'expired' status countdown: 2
      Poll #20 (4.38 secs): status = expired, started, submitted
       'expired' status countdown: 1
      Poll #21 (4.64 secs): status = expired, started, submitted
       'expired' status countdown: 0
      Results:
      Error : BatchJobsExpiration: Future ('BatchJobs') expired (registry path /home/hb/repositories/future/revdep/checks/future.BatchJobs/new/future.BatchJobs.Rcheck/tests/.future/20181223_220207-67bOGM/BatchJobs_816015458-files).. The last few lines of the logged output:
      Warning in formals(fun) : argument is not a function
        Fun formals: 
        Name: NA
        Seed: 300979504
        Pars: <unnamed>=<call>
      Setting seed: 300979504
    ```

# future.batchtools

Version: 0.7.1

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/BatchtoolsFutureError.R’ failed.
    Last 13 lines of output:
      +   v <- value(f)
      + }, error = identity)
      > stopifnot(inherits(res, "error"),
      +           inherits(res, "FutureError"))
      > err_msg <- unlist(strsplit(conditionMessage(res), split = "\n", fixed = TRUE))
      > stopifnot(any(grepl(msg, err_msg, fixed = TRUE)))
      Error: any(grepl(msg, err_msg, fixed = TRUE)) is not TRUE
      Execution halted
      Error : BatchtoolsExpiration: Future ('<none>') expired (registry path /home/hb/repositories/future/revdep/checks/future.batchtools/new/future.batchtools.Rcheck/tests/.future/20181223_220437-hF5cQ6/batchtools_698959869).. The last few lines of the logged output:
      ### [bt]: This is batchtools v0.9.11
      ### [bt]: Starting calculation of 1 jobs
      ### [bt]: Setting working directory to '/home/hb/repositories/future/revdep/checks/future.batchtools/new/future.batchtools.Rcheck/tests'
      ### [bt]: Memory measurement disabled
      ### [bt]: Starting job [batchtools job.id=1]
      ### [bt]: Setting seed to 1 ...
    ```

# greta

Version: 0.3.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘truncdist’
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

# methyvim

Version: 1.2.0

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    
    The following object is masked from ‘package:base’:
    
        strsplit
    
    Loading required package: bumphunter
    Loading required package: foreach
    Loading required package: iterators
    Loading required package: locfit
    locfit 1.5-9.1 	 2013-03-22
    > data(grsExample)
    > var_int <- as.numeric(colData(grsExample)[, 1])
    > methyvim_out_ate <- suppressWarnings(
    +  methyvim(data_grs = grsExample, sites_comp = 25, var_int = var_int,
    +           vim = "ate", type = "Mval", filter = "limma", filter_cutoff = 0.1,
    +           parallel = FALSE, tmle_type = "glm"
    +          )
    + )
    Error in updt[[as.integer(i)]] <- .error(msg) : 
      attempt to select more than one element in integerOneIndex
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             msg <- conditionMessage(e)
             i <- sub("task ([[:digit:]]+).*", "\\1", msg)
             updt[[as.integer(i)]] <- .error(msg)
             updt
         })
      9: tryCatchList(expr, classes, parentenv, handlers)
      10: tryCatchOne(expr, names, parentenv, handlers[[1L]])
      11: value[[3L]](cond)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 36 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test-methyvim.R#13) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 260-268 (using_methyvim.Rmd) 
    Error: processing vignette 'using_methyvim.Rmd' failed with diagnostics:
    attempt to select more than one element in integerOneIndex
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

