# abjutils

<details>

* Version: 0.2.3
* Source code: https://github.com/cran/abjutils
* URL: https://github.com/abjur/abjutils
* Date/Publication: 2019-02-07 21:43:35 UTC
* Number of recursive dependencies: 105

Run `revdep_details(,"abjutils")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘httr’ ‘progress’
      All declared Imports should be used.
    Missing or unexported object: ‘devtools::use_package’
    ```

# adept

<details>

* Version: 1.1.2
* Source code: https://github.com/cran/adept
* URL: https://github.com/martakarass/adept
* BugReports: https://github.com/martakarass/adept/issues
* Date/Publication: 2019-06-18 06:50:03 UTC
* Number of recursive dependencies: 94

Run `revdep_details(,"adept")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 98 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 3 ]
      1. Error: Example 5(a). Setting: no noise in signal, all pattern occurences of the same
                length, long signal. We check for the same behaviour with and without parallel
                computation with fixed number of 2 workers. (@test-segmentPattern.R#575) 
      2. Error: Example 5(b). Setting: no noise in signal, all pattern occurences of the same
                length, long signal. We check for the same behaviour with and without parallel
                computation with maximum number of workers available. (@test-segmentPattern.R#615) 
      3. Error: Example 5(c). Setting: no noise in signal, all pattern occurences of the same
                length, long signal. We check for the same behaviour with and without parallel
                computation with (maximum-1) number of workers available. (@test-segmentPattern.R#655) 
      
      Error: testthat unit tests failed
      Execution halted
      Error while shutting down parallel: unable to terminate some child processes
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        doc   4.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# aroma.affymetrix

<details>

* Version: 3.2.0
* Source code: https://github.com/cran/aroma.affymetrix
* URL: https://www.aroma-project.org/, https://github.com/HenrikBengtsson/aroma.affymetrix
* BugReports: https://github.com/HenrikBengtsson/aroma.affymetrix/issues
* Date/Publication: 2019-06-23 06:00:14 UTC
* Number of recursive dependencies: 80

Run `revdep_details(,"aroma.affymetrix")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        R             2.3Mb
        help          1.1Mb
        testScripts   1.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Error in setGeneric("getX", function(object, type) standardGeneric("getX")) : 
      could not find function "setGeneric"
    ```

# aroma.core

<details>

* Version: 3.2.0
* Source code: https://github.com/cran/aroma.core
* URL: https://github.com/HenrikBengtsson/aroma.core, https://www.aroma-project.org/
* BugReports: https://github.com/HenrikBengtsson/aroma.core/issues
* Date/Publication: 2019-06-17 18:20:03 UTC
* Number of recursive dependencies: 46

Run `revdep_details(,"aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

# BAMBI

<details>

* Version: 2.2.0
* Source code: https://github.com/cran/BAMBI
* URL: https://arxiv.org/abs/1708.07804
* BugReports: https://github.com/c7rishi/BAMBI/issues
* Date/Publication: 2019-12-18 16:40:02 UTC
* Number of recursive dependencies: 51

Run `revdep_details(,"BAMBI")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        libs   4.9Mb
    ```

# biotmle

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/biotmle
* URL: https://code.nimahejazi.org/biotmle
* BugReports: https://github.com/nhejazi/biotmle/issues
* Date/Publication: 2019-10-30
* Number of recursive dependencies: 122

Run `revdep_details(,"biotmle")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    
    The following object is masked from ‘package:GenomicRanges’:
    
        values
    
    The following object is masked from ‘package:IRanges’:
    
        values
    
    The following object is masked from ‘package:S4Vectors’:
    
        values
    
    Loading required package: foreach
    Loading required package: iterators
    Loading required package: nnls
    Warning in value[[3L]](cond) : NAs introduced by coercion
    Error in updt[[as.integer(i)]] <- .error(msg) : 
      attempt to select more than one element in integerOneIndex
    Calls: biomarkertmle ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       1. biotmle::biomarkertmle(...)
       3. BiocParallel::bplapply(...)
       5. BiocParallel::bplapply(X, FUN, ..., BPREDO = BPREDO, BPPARAM = BPPARAM)
       6. base::tryCatch(...)
       7. base:::tryCatchList(expr, classes, parentenv, handlers)
       8. base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])
       9. value[[3L]](cond)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 5 | SKIPPED: 0 | WARNINGS: 4 | FAILED: 2 ]
      1. Error: (unknown) (@test-biomarkertmle.R#20) 
      2. Error: (unknown) (@test-modtest_ic.R#19) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# blavaan

<details>

* Version: 0.3-8
* Source code: https://github.com/cran/blavaan
* Date/Publication: 2019-11-19 19:20:02 UTC
* Number of recursive dependencies: 103

Run `revdep_details(,"blavaan")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Backtrace:
        1. blavaan::ppmc(fitstan)
        2. blavaan:::postpred(...)
        4. future.apply::future_lapply(...)
        6. future:::values.list(fs)
        8. future:::resolve.list(...)
        9. future:::signalConditionsASAP(obj, resignal = FALSE, pos = ii)
       10. future:::signalConditions(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 59 | SKIPPED: 0 | WARNINGS: 7 | FAILED: 1 ]
      1. Error: blavaan object methods work (@tests.blavaanobject-methods.R#113) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 51.8Mb
      sub-directories of 1Mb or more:
        libs  50.0Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# brms

<details>

* Version: 2.10.0
* Source code: https://github.com/cran/brms
* URL: https://github.com/paul-buerkner/brms, http://discourse.mc-stan.org
* BugReports: https://github.com/paul-buerkner/brms/issues
* Date/Publication: 2019-08-29 15:50:07 UTC
* Number of recursive dependencies: 168

Run `revdep_details(,"brms")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.5Mb
      sub-directories of 1Mb or more:
        R     2.9Mb
        doc   2.6Mb
    ```

# codebook

<details>

* Version: 0.8.1
* Source code: https://github.com/cran/codebook
* URL: https://github.com/rubenarslan/codebook
* BugReports: https://github.com/rubenarslan/codebook/issues
* Date/Publication: 2019-05-21 12:50:03 UTC
* Number of recursive dependencies: 176

Run `revdep_details(,"codebook")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    The error most likely occurred in:
    
    > ### Name: codebook
    > ### Title: Generate rmarkdown codebook
    > ### Aliases: codebook
    > 
    > ### ** Examples
    > 
    > # will generate figures in a temporary directory
    > old_base_dir <- knitr::opts_knit$get("base.dir")
    > knitr::opts_knit$set(base.dir = tempdir())
    > on.exit(knitr::opts_knit$set(base.dir = old_base_dir))
    > data("bfi")
    > bfi <- bfi[, c("BFIK_open_1", "BFIK_open_1")]
    > md <- codebook(bfi, survey_repetition = "single", metadata_table = FALSE)
    No missing values.
    Warning: 'skimr::skim_to_wide' is deprecated.
    Use 'skim()' instead.
    See help("Deprecated")
    Error: 'skim_with_defaults' is not an exported object from 'namespace:skimr'
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘graphics’ ‘jsonlite’ ‘pander’ ‘rlang’
      All declared Imports should be used.
    Missing or unexported object: ‘skimr::skim_with_defaults’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 65 marked UTF-8 strings
    ```

# datapackage.r

<details>

* Version: 0.1.2
* Source code: https://github.com/cran/datapackage.r
* URL: https://github.com/frictionlessdata/datapackage-r
* BugReports: https://github.com/frictionlessdata/datapackage-r/issues
* Date/Publication: 2019-11-25 11:40:03 UTC
* Number of recursive dependencies: 130

Run `revdep_details(,"datapackage.r")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘iterators’ ‘readr’
      All declared Imports should be used.
    ```

# dipsaus

<details>

* Version: 0.0.3
* Source code: https://github.com/cran/dipsaus
* URL: https://github.com/dipterix/dipsaus
* BugReports: https://github.com/dipterix/dipsaus/issues
* Date/Publication: 2019-11-18 05:40:02 UTC
* Number of recursive dependencies: 60

Run `revdep_details(,"dipsaus")` for more info

</details>

## In both

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# disk.frame

<details>

* Version: 0.3.1
* Source code: https://github.com/cran/disk.frame
* URL: https://diskframe.com
* BugReports: https://github.com/xiaodaigh/disk.frame/issues
* Date/Publication: 2019-12-20 09:00:02 UTC
* Number of recursive dependencies: 115

Run `revdep_details(,"disk.frame")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘disk.frame-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: hard_arrange
    > ### Title: Perform a hard arrange
    > ### Aliases: hard_arrange hard_arrange.data.frame hard_arrange.disk.frame
    > 
    > ### ** Examples
    > 
    > iris.df = as.disk.frame(iris, nchunks = 2)
    > 
    > # arrange iris.df by specifies and ensure rows with the same specifies are in the same chunk
    > iris_hard.df = hard_arrange(iris.df, Species)
    Error: UNRELIABLE VALUE: Detected that random numbers were generated while future (‘<none>’) was resolved. Because future argument 'seed' was set to ‘FALSE’, those random numbers may not be statistical sound. To fix this, specify argument '[future.]seed', e.g. 'seed=TRUE'. To disable this check, set option 'future.rng.onMisuse' to "ignore".
    Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Error in globalVariables(c("a", "b", "ans")) : 
      could not find function "globalVariables"
    ```

# doFuture

<details>

* Version: 0.8.2
* Source code: https://github.com/cran/doFuture
* URL: https://github.com/HenrikBengtsson/doFuture
* BugReports: https://github.com/HenrikBengtsson/doFuture/issues
* Date/Publication: 2019-10-30 07:10:03 UTC
* Number of recursive dependencies: 26

Run `revdep_details(,"doFuture")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/foreach,errors.R’ failed.
    Last 13 lines of output:
      [22:27:27.767]  - Number of conditions: 1
      [22:27:27.768] signalConditions() ... done
      [22:27:27.768] signalConditions() ...
      [22:27:27.768]  - include = 'condition'
      [22:27:27.768]  - exclude = 'immediateCondition'
      [22:27:27.768]  - resignal = FALSE
      [22:27:27.768]  - Number of conditions: 1
      [22:27:27.768]  - Condition #1: 'FutureError', 'error', 'FutureCondition', 'condition'
      [22:27:27.769] signalConditions() ... done
      [22:27:27.769] - relayed: [n=1] FALSE
      [22:27:27.769] - queued futures: [n=1] TRUE
      [22:27:27.769] signalConditionsASAP(SequentialFuture, pos=1) ... done
      <FutureError: UNRELIABLE VALUE: Detected that random numbers were generated while future ('<none>') was resolved. Because future argument 'seed' was set to 'FALSE', those random numbers may not be statistical sound. To fix this, specify argument '[future.]seed', e.g. 'seed=TRUE'. To disable this check, set option 'future.rng.onMisuse' to "ignore".>
      Error: grepl("Index error", conditionMessage(res)) is not TRUE
      Execution halted
    ```

# drake

<details>

* Version: 7.8.0
* Source code: https://github.com/cran/drake
* URL: https://github.com/ropensci/drake, https://docs.ropensci.org/drake, https://books.ropensci.org/drake/
* BugReports: https://github.com/ropensci/drake/issues
* Date/Publication: 2019-12-02 14:40:02 UTC
* Number of recursive dependencies: 135

Run `revdep_details(,"drake")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        6. drake:::ft_scan_workers(ids, config)
        7. drake:::ft_scan_worker(id, config)
        8. drake:::conclude_worker(config$workers[[id]], config)
        9. drake:::conclude_build(build = build, config = config)
       10. drake:::handle_build_exceptions(...)
      
      
      .══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 4994 | SKIPPED: 257 | WARNINGS: 2 | FAILED: 2 ]
      1. Error: future package functionality (@test-future.R#88) 
      2. Error: custom caching column and future (@test-hpc.R#216) 
      
      Error: testthat unit tests failed
      Execution halted
      Error while shutting down parallel: unable to terminate some child processes
    ```

# drtmle

<details>

* Version: 1.0.4
* Source code: https://github.com/cran/drtmle
* URL: https://github.com/benkeser/drtmle
* BugReports: https://github.com/benkeser/drtmle/issues
* Date/Publication: 2018-12-18 22:30:03 UTC
* Number of recursive dependencies: 86

Run `revdep_details(,"drtmle")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > # load super learner
    > library(SuperLearner)
    Loading required package: nnls
    Super Learner
    Version: 2.0-26
    Package created on 2019-10-27
    
    > # simulate data
    > set.seed(123456)
    > n <- 100
    > W <- data.frame(W1 = runif(n), W2 = rnorm(n))
    > A <- rbinom(n,1,plogis(W$W1 - W$W2))
    > Y <- rbinom(n, 1, plogis(W$W1*W$W2*A))
    > # fit iptw with maxIter = 1 to run fast
    > fit1 <- adaptive_iptw(W = W, A = A, Y = Y, a_0 = c(1,0),
    +                SL_g=c("SL.glm","SL.mean","SL.step"),
    +                SL_Qr="SL.npreg", maxIter = 1)
    Loading required package: nloptr
    Loading required package: nloptr
    Error: UNRELIABLE VALUE: Detected that random numbers were generated while future (‘<none>’) was resolved. Because future argument 'seed' was set to ‘FALSE’, those random numbers may not be statistical sound. To fix this, specify argument '[future.]seed', e.g. 'seed=TRUE'. To disable this check, set option 'future.rng.onMisuse' to "ignore".
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ OK: 244 | SKIPPED: 0 | WARNINGS: 24 | FAILED: 12 ]
      1. Error: ci.adaptive_iptw works as expected (@test-confint.R#89) 
      2. Error: drtmle executes as expected with cvtmle and stratify = TRUE (@test-cvtmle.R#68) 
      3. Error: drtmle executes as expected with cv and stratify = FALSE (@test-cvtmle.R#228) 
      4. Error: drtmle executes as expected with stratify = TRUE (@test-drtmle-missingAY.R#79) 
      5. Error: drtmle executes as expected with stratify = FALSE (@test-drtmle-missingAY.R#238) 
      6. Error: drtmle executes as expected with stratify = TRUE (@test-drtmle.R#98) 
      7. Error: drtmle executes as expected with stratify = FALSE (@test-drtmle.R#275) 
      8. Error: GitHub error #16 resolves (@test-drtmle.R#503) 
      9. Error: drtmle executes when glm and SL are specified (@test-edge.R#49) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
      Error while shutting down parallel: unable to terminate some child processes
    ```

# foieGras

<details>

* Version: 0.4.0
* Source code: https://github.com/cran/foieGras
* URL: https://cran.r-project.org/package=foieGras
* BugReports: https://github.com/ianjonsen/foieGras/issues
* Date/Publication: 2019-10-07 22:10:03 UTC
* Number of recursive dependencies: 101

Run `revdep_details(,"foieGras")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 35.2Mb
      sub-directories of 1Mb or more:
        libs  34.0Mb
    ```

# furrr

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/furrr
* URL: https://github.com/DavisVaughan/furrr
* BugReports: https://github.com/DavisVaughan/furrr/issues
* Date/Publication: 2018-05-16 16:04:29 UTC
* Number of recursive dependencies: 40

Run `revdep_details(,"furrr")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > ### Title: Invoke functions via futures
    > ### Aliases: future_invoke_map future_invoke_map_chr future_invoke_map_dbl
    > ###   future_invoke_map_int future_invoke_map_lgl future_invoke_map_dfr
    > ###   future_invoke_map_dfc
    > 
    > ### ** Examples
    > 
    > 
    > 
    > df <- dplyr::tibble(
    +   f = c("runif", "rpois", "rnorm"),
    +   params = list(
    +     list(n = 10),
    +     list(n = 5, lambda = 10),
    +     list(n = 10, mean = -3, sd = 10)
    +   )
    + )
    > 
    > future_invoke_map(df$f, df$params)
    Error: UNRELIABLE VALUE: Detected that random numbers were generated while future (‘<none>’) was resolved. Because future argument 'seed' was set to ‘FALSE’, those random numbers may not be statistical sound. To fix this, specify argument '[future.]seed', e.g. 'seed=TRUE'. To disable this check, set option 'future.rng.onMisuse' to "ignore".
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Backtrace:
       1. furrr::future_map(test_dat, ~Sys.sleep(runif(1, 2, 3)), .progress = TRUE)
       2. furrr:::future_map_template(...)
       3. furrr:::multi_resolve(fs, names(.x))
       5. future:::values.list(fs)
       7. future:::resolve.list(...)
       8. future:::signalConditionsASAP(obj, resignal = FALSE, pos = ii)
       9. future:::signalConditions(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 36 | SKIPPED: 2 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: multisession - Progress bar is emitted on long running tasks 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# genBaRcode

<details>

* Version: 1.2.2
* Source code: https://github.com/cran/genBaRcode
* Date/Publication: 2019-10-25 15:10:02 UTC
* Number of recursive dependencies: 140

Run `revdep_details(,"genBaRcode")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Error in eval(`_inherit`, env, NULL) : object 'Stat' not found
    Error in setClass("jplace", representation = representation(placements = "tbl_df"),  : 
      could not find function "setClass"
    ```

# GetBCBData

<details>

* Version: 0.5
* Source code: https://github.com/cran/GetBCBData
* URL: https://github.com/msperlin/GetBCBData/
* BugReports: https://github.com/msperlin/GetBCBData/issues
* Date/Publication: 2019-04-23 10:10:29 UTC
* Number of recursive dependencies: 103

Run `revdep_details(,"GetBCBData")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RCurl’ ‘lubridate’ ‘readr’ ‘stats’
      All declared Imports should be used.
    ```

# glmmboot

<details>

* Version: 0.5.0
* Source code: https://github.com/cran/glmmboot
* URL: https://github.com/ColmanHumphrey/glmmboot
* Date/Publication: 2019-12-16 05:30:02 UTC
* Number of recursive dependencies: 62

Run `revdep_details(,"glmmboot")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        7. glmmboot:::bootstrap_runner(...)
        8. future.apply::future_lapply(...)
       10. future:::values.list(fs)
       12. future:::resolve.list(...)
       13. future:::signalConditionsASAP(obj, resignal = FALSE, pos = ii)
       14. future:::signalConditions(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 61 | SKIPPED: 0 | WARNINGS: 3 | FAILED: 2 ]
      1. Failure: bootstrap_model parallelism modes (@test-bootstrap_model.R#184) 
      2. Failure: bootstrap_model parallelism modes (@test-bootstrap_model.R#199) 
      
      Error: testthat unit tests failed
      Execution halted
      Error while shutting down parallel: unable to terminate some child processes
    ```

# grattan

<details>

* Version: 1.8.0.0
* Source code: https://github.com/cran/grattan
* URL: https://github.com/HughParsonage/grattan, https://hughparsonage.github.io/grattan/
* BugReports: https://github.com/HughParsonage/grattan/issues
* Date/Publication: 2019-11-15 18:50:09 UTC
* Number of recursive dependencies: 114

Run `revdep_details(,"grattan")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'taxstats', 'taxstats1516'
    ```

# gWQS

<details>

* Version: 2.0.0
* Source code: https://github.com/cran/gWQS
* Date/Publication: 2019-08-27 12:40:02 UTC
* Number of recursive dependencies: 131

Run `revdep_details(,"gWQS")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

# gWQSRS

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/gWQSRS
* Date/Publication: 2019-08-30 09:00:09 UTC
* Number of recursive dependencies: 99

Run `revdep_details(,"gWQSRS")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘broom’ ‘dplyr’ ‘ggrepel’ ‘kableExtra’ ‘knitr’ ‘nnet’ ‘plotROC’
      All declared Imports should be used.
    ```

# infercnv

<details>

* Version: 1.2.1
* Source code: https://github.com/cran/infercnv
* URL: https://github.com/broadinstitute/inferCNV/wiki
* BugReports: https://github.com/broadinstitute/inferCNV/issues
* Date/Publication: 2019-11-15
* Number of recursive dependencies: 128

Run `revdep_details(,"infercnv")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        extdata   3.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘HiddenMarkov:::makedensity’
      See the note in ?`:::` about the use of this operator.
    ```

# inlinedocs

<details>

* Version: 2019.12.5
* Source code: https://github.com/cran/inlinedocs
* URL: http://github.com/tdhock/inlinedocs
* BugReports: http://github.com/tdhock/inlinedocs/issues
* Date/Publication: 2019-12-05 23:30:07 UTC
* Number of recursive dependencies: 6

Run `revdep_details(,"inlinedocs")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘R.methodsS3’
    ```

# jstor

<details>

* Version: 0.3.7
* Source code: https://github.com/cran/jstor
* URL: https://github.com/ropensci/jstor, https://ropensci.github.io/jstor/
* BugReports: https://github.com/ropensci/jstor/issues
* Date/Publication: 2019-09-05 02:10:11 UTC
* Number of recursive dependencies: 69

Run `revdep_details(,"jstor")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 239 | SKIPPED: 4 | WARNINGS: 0 | FAILED: 8 ]
      1. Error: writing to file in parallel works (@test-writing-to-file.R#35) 
      2. Error: not writing column names works (@test-writing-to-file.R#48) 
      3. Error: writing error messages to file works (@test-writing-to-file.R#63) 
      4. Error: import wrapper works with column names (@test-writing-to-file.R#88) 
      5. Error: import wrapper works without column names (@test-writing-to-file.R#101) 
      6. Error: files_per_batch works (@test-writing-to-file.R#114) 
      7. Error: n_batches works for n > 1 (@test-writing-to-file.R#130) 
      8. Error: importing from zip works (@test-zip.R#29) 
      
      Error: testthat unit tests failed
      Execution halted
      Error while shutting down parallel: unable to terminate some child processes
    ```

# lidR

<details>

* Version: 2.1.4
* Source code: https://github.com/cran/lidR
* URL: https://github.com/Jean-Romain/lidR
* BugReports: https://github.com/Jean-Romain/lidR/issues
* Date/Publication: 2019-10-15 20:50:02 UTC
* Number of recursive dependencies: 154

Run `revdep_details(,"lidR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.0Mb
      sub-directories of 1Mb or more:
        libs   6.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# MetamapsDB

<details>

* Version: 0.0.2
* Source code: https://github.com/cran/MetamapsDB
* Date/Publication: 2017-12-06 09:51:00 UTC
* Number of recursive dependencies: 113

Run `revdep_details(,"MetamapsDB")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘shiny’
      All declared Imports should be used.
    ```

# methyvim

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/methyvim
* URL: https://github.com/nhejazi/methyvim
* BugReports: https://github.com/nhejazi/methyvim/issues
* Date/Publication: 2019-11-01
* Number of recursive dependencies: 197

Run `revdep_details(,"methyvim")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    
    The following object is masked from ‘package:SummarizedExperiment’:
    
        values
    
    The following object is masked from ‘package:GenomicRanges’:
    
        values
    
    The following object is masked from ‘package:IRanges’:
    
        values
    
    The following object is masked from ‘package:S4Vectors’:
    
        values
    
    Loading required package: nnls
    Error in updt[[as.integer(i)]] <- .error(msg) : 
      attempt to select more than one element in integerOneIndex
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        1. base::suppressWarnings(...)
        3. methyvim::methyvim(...)
        5. BiocParallel::bplapply(...)
        7. BiocParallel::bplapply(X, FUN, ..., BPREDO = BPREDO, BPPARAM = BPPARAM)
        8. base::tryCatch(...)
        9. base:::tryCatchList(expr, classes, parentenv, handlers)
       10. base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])
       11. value[[3L]](cond)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 34 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: (unknown) (@test-methyvim.R#13) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘tmle.npvi’
    ```

# photosynthesis

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/photosynthesis
* Date/Publication: 2019-05-09 15:10:03 UTC
* Number of recursive dependencies: 76

Run `revdep_details(,"photosynthesis")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyr’
      All declared Imports should be used.
    ```

# phylolm

<details>

* Version: 2.6
* Source code: https://github.com/cran/phylolm
* URL: https://CRAN.R-project.org/package=phylolm
* Date/Publication: 2018-05-31 04:51:24 UTC
* Number of recursive dependencies: 33

Run `revdep_details(,"phylolm")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘surface’, ‘bayou’, ‘geiger’, ‘caper’
    ```

# promises

<details>

* Version: 1.1.0
* Source code: https://github.com/cran/promises
* URL: https://rstudio.github.io/promises, https://github.com/rstudio/promises
* BugReports: https://github.com/rstudio/promises/issues
* Date/Publication: 2019-10-04 23:00:05 UTC
* Number of recursive dependencies: 44

Run `revdep_details(,"promises")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘purrr’
    ```

# Prostar

<details>

* Version: 1.18.4
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2019-12-16
* Number of recursive dependencies: 260

Run `revdep_details(,"Prostar")` for more info

</details>

## In both

*   checking whether package ‘Prostar’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/hb/repositories/future/revdep/checks/Prostar/new/Prostar.Rcheck/00install.out’ for details.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      inst/.RData
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

# QDNAseq

<details>

* Version: 1.22.0
* Source code: https://github.com/cran/QDNAseq
* URL: https://github.com/ccagc/QDNAseq
* BugReports: https://github.com/ccagc/QDNAseq/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 70

Run `revdep_details(,"QDNAseq")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# qgcomp

<details>

* Version: 1.3.0
* Source code: https://github.com/cran/qgcomp
* Date/Publication: 2019-12-11 18:20:03 UTC
* Number of recursive dependencies: 61

Run `revdep_details(,"qgcomp")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    +   degree=2)
    
    Note: using quantiles of all exposures combined in order to set 
              proposed intervention values for overall effect (25th, 50th, 75th %ile)
    > res2
    Mixture log(RR) (bootstrap CI):
    
                  Estimate Std. Error  Lower CI   Upper CI Z value  Pr(>|z|)
    (Intercept) -1.0104494  0.1551821 -1.314601 -0.7062981 -6.5114 7.446e-11
    psi1         0.0998038  0.1412638 -0.177068  0.3766757  0.7065    0.4799
    psi2        -0.0033996  0.0061828 -0.015518  0.0087184 -0.5499    0.5824
    > # using parallel processing
    > res2p = qgcomp.boot(y ~ z + x1iqr + I(x2iqr>0.1) + I(x2>0.4) + I(x2>0.9), 
    +   family="binomial", expnms = c('x1iqr', 'x2iqr'), data=dat, q=NULL, rr=TRUE, B=6, 
    +   degree=2, parallel=TRUE)
    
    Note: using quantiles of all exposures combined in order to set 
              proposed intervention values for overall effect (25th, 50th, 75th %ile)
    Error: UNRELIABLE VALUE: Detected that random numbers were generated while future (‘<none>’) was resolved. Because future argument 'seed' was set to ‘FALSE’, those random numbers may not be statistical sound. To fix this, specify argument '[future.]seed', e.g. 'seed=TRUE'. To disable this check, set option 'future.rng.onMisuse' to "ignore".
    Execution halted
    Error while shutting down parallel: unable to terminate some child processes
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test_boot_vs_noboot.R’ failed.
    Last 13 lines of output:
      > repit <- function(i){
      +   dat = dgm(50)
      +   m1 = qgcomp.noboot(y~., expnms=Xnm, data = dat, family=gaussian(), q=4)
      +   m2 = qgcomp.boot(  y~., expnms=Xnm, data = dat, family=gaussian(), q=4, B=5, parallel=TRUE)
      +   res = c(m1$coef, m1$var.coef, 1*(m1$pval>0.05), with(m1, ci.coef[1]<2 & ci.coef[2]>2), m2$coef, m2$var.coef, 1*(m2$pval>0.05), with(m2, ci.coef[2,1]<2 & ci.coef[2,2]>2))
      +   names(res) <- c("psiint", "psi", "varint", "var",  "powint", "pow",  "cover", "b.psiint", "b.psi", "b.varint", "b.var", "b.powint", "b.pow", "b.cover")
      +   res
      + }
      > 
      > 
      > #res = mclapply(1:1000, repit)
      > res = lapply(1:2, repit)
      Error: UNRELIABLE VALUE: Detected that random numbers were generated while future ('<none>') was resolved. Because future argument 'seed' was set to 'FALSE', those random numbers may not be statistical sound. To fix this, specify argument '[future.]seed', e.g. 'seed=TRUE'. To disable this check, set option 'future.rng.onMisuse' to "ignore".
      Execution halted
      Error while shutting down parallel: unable to terminate some child processes
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘parallel’
      All declared Imports should be used.
    ```

# robotstxt

<details>

* Version: 0.6.2
* Source code: https://github.com/cran/robotstxt
* URL: https://github.com/ropensci/robotstxt
* BugReports: https://github.com/ropensci/robotstxt/issues
* Date/Publication: 2018-07-18 21:30:03 UTC
* Number of recursive dependencies: 63

Run `revdep_details(,"robotstxt")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# RTransferEntropy

<details>

* Version: 0.2.12
* Source code: https://github.com/cran/RTransferEntropy
* URL: https://github.com/BZPaper/RTransferEntropy
* BugReports: https://github.com/BZPaper/RTransferEntropy/issues
* Date/Publication: 2019-08-19 13:50:02 UTC
* Number of recursive dependencies: 79

Run `revdep_details(,"RTransferEntropy")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > set.seed(1234567890)
    > n <- 500
    > x <- rep(0, n + 1)
    > y <- rep(0, n + 1)
    > 
    > for (i in seq(n)) {
    +   x[i + 1] <- 0.2 * x[i] + rnorm(1, 0, 2)
    +   y[i + 1] <- x[i] + rnorm(1, 0, 2)
    + }
    > 
    > x <- x[-1]
    > y <- y[-1]
    > 
    > te_result <- transfer_entropy(x, y, nboot = 100)
    Shannon's entropy on 1 core with 100 shuffles.
      x and y have length 500 (0 NAs removed)
      [calculate] X->Y transfer entropy
      [calculate] Y->X transfer entropy
      [bootstrap] 100 times
    Error: UNRELIABLE VALUE: Detected that random numbers were generated while future (‘<none>’) was resolved. Because future argument 'seed' was set to ‘FALSE’, those random numbers may not be statistical sound. To fix this, specify argument '[future.]seed', e.g. 'seed=TRUE'. To disable this check, set option 'future.rng.onMisuse' to "ignore".
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        5. future.apply::future_sapply(...)
        6. future.apply::future_lapply(X = X, FUN = FUN, ...)
        8. future:::values.list(fs)
       10. future:::resolve.list(...)
       11. future:::signalConditionsASAP(obj, resignal = FALSE, pos = ii)
       12. future:::signalConditions(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 41 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 3 ]
      1. Error: transfer_entropy shannon is correctly specified (@test.transfer_entropy.R#45) 
      2. Error: transfer_entropy renyi is correctly specified (@test.transfer_entropy.R#122) 
      3. Error: Check that transfer_entropy takes zoos and xts (@test.transfer_entropy.R#172) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# sapfluxnetr

<details>

* Version: 0.0.7
* Source code: https://github.com/cran/sapfluxnetr
* URL: https://github.com/sapfluxnet/sapfluxnetr
* BugReports: https://github.com/sapfluxnet/sapfluxnetr/issues
* Date/Publication: 2019-05-01 10:40:03 UTC
* Number of recursive dependencies: 102

Run `revdep_details(,"sapfluxnetr")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# SCtools

<details>

* Version: 0.3.0
* Source code: https://github.com/cran/SCtools
* BugReports: https://github.com/bcastanho/SCtools/issues
* Date/Publication: 2019-12-12 13:40:02 UTC
* Number of recursive dependencies: 87

Run `revdep_details(,"SCtools")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 27 marked UTF-8 strings
    ```

# Seurat

<details>

* Version: 3.1.2
* Source code: https://github.com/cran/Seurat
* URL: http://www.satijalab.org/seurat, https://github.com/satijalab/seurat
* BugReports: https://github.com/satijalab/seurat/issues
* Date/Publication: 2019-12-12 22:20:06 UTC
* Number of recursive dependencies: 223

Run `revdep_details(,"Seurat")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘loomR’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.6Mb
      sub-directories of 1Mb or more:
        R      1.0Mb
        libs   8.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Error in globalVariables(c("et.ref", "et.comp")) : 
      could not find function "globalVariables"
    Error in classVersion("ExpressionSet") : 
      could not find function "classVersion"
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘loomR’
    ```

# shinyrecap

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/shinyrecap
* URL: https://fellstat.github.io/shinyrecap/
* Date/Publication: 2019-01-19 23:40:03 UTC
* Number of recursive dependencies: 89

Run `revdep_details(,"shinyrecap")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘CARE1’ ‘LCMCR’ ‘coda’ ‘conting’ ‘dga’ ‘future’ ‘ggplot2’ ‘ipc’
      ‘promises’ ‘reshape’ ‘shinycssloaders’ ‘testthat’
      All declared Imports should be used.
    ```

# skpr

<details>

* Version: 0.62.0
* Source code: https://github.com/cran/skpr
* URL: https://github.com/tylermorganwall/skpr
* BugReports: https://github.com/tylermorganwall/skpr/issues
* Date/Publication: 2019-12-02 20:00:02 UTC
* Number of recursive dependencies: 131

Run `revdep_details(,"skpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 39.2Mb
      sub-directories of 1Mb or more:
        libs  37.7Mb
    ```

# solitude

<details>

* Version: 0.2.1
* Source code: https://github.com/cran/solitude
* URL: https://github.com/talegari/solitude
* BugReports: https://github.com/talegari/solitude/issues
* Date/Publication: 2019-12-07 09:00:02 UTC
* Number of recursive dependencies: 40

Run `revdep_details(,"solitude")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# SpaDES.core

<details>

* Version: 0.2.7
* Source code: https://github.com/cran/SpaDES.core
* URL: https://spades-core.predictiveecology.org/, https://github.com/PredictiveEcology/SpaDES.core
* BugReports: https://github.com/PredictiveEcology/SpaDES.core/issues
* Date/Publication: 2019-11-25 17:00:06 UTC
* Number of recursive dependencies: 170

Run `revdep_details(,"SpaDES.core")` for more info

</details>

## In both

*   checking whether package ‘SpaDES.core’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/hb/repositories/future/revdep/checks/SpaDES.core/new/SpaDES.core.Rcheck/00install.out’ for details.
    ```

# stars

<details>

* Version: 0.4-0
* Source code: https://github.com/cran/stars
* URL: https://r-spatial.github.io/stars/, https://github.com/r-spatial/stars/
* BugReports: https://github.com/r-spatial/stars/issues/
* Date/Publication: 2019-10-10 13:00:02 UTC
* Number of recursive dependencies: 124

Run `revdep_details(,"stars")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘starsdata’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.2Mb
      sub-directories of 1Mb or more:
        doc  10.3Mb
        nc    4.5Mb
    ```

# startR

<details>

* Version: 0.0.1
* Source code: https://github.com/cran/startR
* URL: https://earth.bsc.es/gitlab/es/startR/
* BugReports: https://earth.bsc.es/gitlab/es/startR/issues
* Date/Publication: 2017-04-22 04:26:58 UTC
* Number of recursive dependencies: 29

Run `revdep_details(,"startR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘s2dverification:::.KnownLatNames’ ‘s2dverification:::.KnownLonNames’
      See the note in ?`:::` about the use of this operator.
    ```

# tableschema.r

<details>

* Version: 1.1.0
* Source code: https://github.com/cran/tableschema.r
* URL: https://github.com/frictionlessdata/tableschema-r
* BugReports: https://github.com/frictionlessdata/tableschema-r/issues
* Date/Publication: 2018-11-14 16:50:03 UTC
* Number of recursive dependencies: 56

Run `revdep_details(,"tableschema.r")` for more info

</details>

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

# tcensReg

<details>

* Version: 0.1.4
* Source code: https://github.com/cran/tcensReg
* URL: https://github.com/williazo/tcensReg
* BugReports: https://github.com/williazo/tcensReg/issues
* Date/Publication: 2019-12-18 14:50:07 UTC
* Number of recursive dependencies: 85

Run `revdep_details(,"tcensReg")` for more info

</details>

## In both

*   checking for missing documentation entries ... ERROR
    ```
    ...
    Call sequence:
    6: stop(msg, call. = FALSE, domain = NA)
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    ```

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in setOldClass(c("maxLik", "maxim")) : 
      could not find function "setOldClass"
    Error: package or namespace load failed for ‘tcensReg’:
     unable to load R code in package ‘maxLik’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in setOldClass(c("maxLik", "maxim")) : 
      could not find function "setOldClass"
    Error: unable to load R code in package ‘maxLik’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking S3 generic/method consistency ... WARNING
    ```
    ...
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking replacement functions ... WARNING
    ```
    ...
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    The argument of a replacement function which corresponds to the right
    hand side must be named ‘value’.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    ...
    Call sequence:
    6: stop(msg, call. = FALSE, domain = NA)
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    ...
    Call sequence:
    6: stop(msg, call. = FALSE, domain = NA)
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    ```

*   checking foreign function calls ... NOTE
    ```
    ...
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Error in setOldClass(c("maxLik", "maxim")) : 
      could not find function "setOldClass"
    Error: unable to load R code in package ‘maxLik’
    Execution halted
    ```

*   checking Rd \usage sections ... NOTE
    ```
    ...
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# tealeaves

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/tealeaves
* Date/Publication: 2019-05-04 16:40:03 UTC
* Number of recursive dependencies: 74

Run `revdep_details(,"tealeaves")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ggplot2’ ‘tidyr’
      All declared Imports should be used.
    ```

# treeHMM

<details>

* Version: 0.1.1
* Source code: https://github.com/cran/treeHMM
* Date/Publication: 2019-12-12 17:10:02 UTC
* Number of recursive dependencies: 10

Run `revdep_details(,"treeHMM")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Matrix’
      All declared Imports should be used.
    ```

# TSstudio

<details>

* Version: 0.1.5
* Source code: https://github.com/cran/TSstudio
* URL: https://github.com/RamiKrispin/TSstudio
* BugReports: https://github.com/RamiKrispin/TSstudio/issues
* Date/Publication: 2019-10-28 19:40:09 UTC
* Number of recursive dependencies: 144

Run `revdep_details(,"TSstudio")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Error in prepareTimeseries(y = y) : object 'AirPassengers' not found
    Error in globalVariables(c(".rows")) : 
      could not find function "globalVariables"
    ```

