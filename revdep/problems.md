# AlpsNMR

<details>

* Version: 3.0.6
* GitHub: NA
* Source code: https://github.com/cran/AlpsNMR
* Date/Publication: 2021-03-31
* Number of recursive dependencies: 162

Run `revdep_details(, "AlpsNMR")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘AlpsNMR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: nmr_pca_plots
    > ### Title: Plotting functions for PCA
    > ### Aliases: nmr_pca_plots nmr_pca_plot_variance nmr_pca_scoreplot
    > ###   nmr_pca_loadingplot
    > 
    > ### ** Examples
    > 
    ...
        █
     1. ├─AlpsNMR::nmr_pca_scoreplot(dataset_1D, model)
     2. │ └─`%>%`(...)
     3. ├─dplyr::left_join(., nmr_metadata, by = "NMRExperiment")
     4. └─dplyr:::left_join.data.frame(., nmr_metadata, by = "NMRExperiment")
     5.   └─dplyr:::join_mutate(...)
     6.     └─dplyr:::join_cols(...)
     7.       └─dplyr:::standardise_join_by(by, x_names = x_names, y_names = y_names)
     8.         └─dplyr:::check_join_vars(by$x, x_names)
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(AlpsNMR)
      Loading required package: dplyr
      
      Attaching package: 'dplyr'
      
      The following object is masked from 'package:testthat':
    ...
       3. ├─dplyr::left_join(., nmr_metadata, by = "NMRExperiment")
       4. └─dplyr:::left_join.data.frame(., nmr_metadata, by = "NMRExperiment")
       5.   └─dplyr:::join_mutate(...)
       6.     └─dplyr:::join_cols(...)
       7.       └─dplyr:::standardise_join_by(by, x_names = x_names, y_names = y_names)
       8.         └─dplyr:::check_join_vars(by$x, x_names)
      
      [ FAIL 1 | WARN 2 | SKIP 1 | PASS 73 ]
      Error: Test failures
      Execution halted
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in documentation object 'MUVR_model_plot'
      ‘MVObj’ ‘model’ ‘factCols’ ‘sampLabels’ ‘ylim’
    
    Undocumented arguments in documentation object 'confusion_matrix'
      ‘MVObj’ ‘model’
    
    Undocumented arguments in documentation object 'model_VIP'
      ‘model’
    
    Undocumented arguments in documentation object 'rdCV_PLS_RF'
    ...
    
    Undocumented arguments in documentation object 'rdCV_PLS_RF_ML'
      ‘scale’ ‘nRep’ ‘nOuter’ ‘nInner’ ‘varRatio’ ‘DA’ ‘fitness’ ‘method’
      ‘ML’ ‘modReturn’ ‘logg’ ‘parallel’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘zip’
      All declared Imports should be used.
    ```

# aroma.core

<details>

* Version: 3.2.2
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2021-01-05 05:10:12 UTC
* Number of recursive dependencies: 51

Run `revdep_details(, "aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

# BAMBI

<details>

* Version: 2.3.0
* GitHub: https://github.com/c7rishi/BAMBI
* Source code: https://github.com/cran/BAMBI
* Date/Publication: 2020-06-19 13:50:07 UTC
* Number of recursive dependencies: 49

Run `revdep_details(, "BAMBI")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        libs   5.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats4’
      All declared Imports should be used.
    ```

# batchtools

<details>

* Version: 0.9.15
* GitHub: https://github.com/mllg/batchtools
* Source code: https://github.com/cran/batchtools
* Date/Publication: 2021-01-11 12:40:03 UTC
* Number of recursive dependencies: 78

Run `revdep_details(, "batchtools")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Rmpi’
    ```

# bayesmove

<details>

* Version: 0.2.0
* GitHub: https://github.com/joshcullen/bayesmove
* Source code: https://github.com/cran/bayesmove
* Date/Publication: 2021-04-26 22:10:11 UTC
* Number of recursive dependencies: 141

Run `revdep_details(, "bayesmove")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘move’
      All declared Imports should be used.
    ```

# biotmle

<details>

* Version: 1.14.0
* GitHub: https://github.com/nhejazi/biotmle
* Source code: https://github.com/cran/biotmle
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 162

Run `revdep_details(, "biotmle")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(biotmle)
      biotmle v1.14.0: Targeted Learning with Moderated Statistics for Biomarker
      Discovery
      > 
      > test_check("biotmle")
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-biomarkertmle.R:33:3): biomarkertmle output is consistent using example data ──
      assay(biomarkerTMLEout)[1, c(17, 83, 117)] not equal to c(360.7073, 375.9316, 319.3649).
      names for target but not for current
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 12 ]
      Error: Test failures
      Execution halted
    ```

# blavaan

<details>

* Version: 0.3-15
* GitHub: NA
* Source code: https://github.com/cran/blavaan
* Date/Publication: 2021-02-19 19:50:02 UTC
* Number of recursive dependencies: 113

Run `revdep_details(, "blavaan")` for more info

</details>

## In both

*   checking whether package ‘blavaan’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/blavaan/new/blavaan.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘blavaan’ ...
** package ‘blavaan’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
Error: C++14 standard requested but CXX14 is not defined
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/blavaan/new/blavaan.Rcheck/blavaan’


```
### CRAN

```
* installing *source* package ‘blavaan’ ...
** package ‘blavaan’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
Error: C++14 standard requested but CXX14 is not defined
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/blavaan/old/blavaan.Rcheck/blavaan’


```
# blockCV

<details>

* Version: 2.1.1
* GitHub: https://github.com/rvalavi/blockCV
* Source code: https://github.com/cran/blockCV
* Date/Publication: 2020-02-23 20:00:02 UTC
* Number of recursive dependencies: 113

Run `revdep_details(, "blockCV")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘biomod2’
    ```

# brms

<details>

* Version: 2.15.0
* GitHub: https://github.com/paul-buerkner/brms
* Source code: https://github.com/cran/brms
* Date/Publication: 2021-03-14 15:50:31 UTC
* Number of recursive dependencies: 221

Run `revdep_details(, "brms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        R     3.1Mb
        doc   2.4Mb
    ```

# CLVTools

<details>

* Version: 0.8.0
* GitHub: https://github.com/bachmannpatrick/CLVTools
* Source code: https://github.com/cran/CLVTools
* Date/Publication: 2021-03-23 16:40:08 UTC
* Number of recursive dependencies: 79

Run `revdep_details(, "CLVTools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.4Mb
      sub-directories of 1Mb or more:
        libs   9.2Mb
    ```

# codebook

<details>

* Version: 0.9.2
* GitHub: https://github.com/rubenarslan/codebook
* Source code: https://github.com/cran/codebook
* Date/Publication: 2020-06-06 23:40:03 UTC
* Number of recursive dependencies: 206

Run `revdep_details(, "codebook")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘graphics’ ‘jsonlite’ ‘rlang’ ‘tidyselect’ ‘vctrs’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 65 marked UTF-8 strings
    ```

# cSEM

<details>

* Version: 0.4.0
* GitHub: https://github.com/M-E-Rademaker/cSEM
* Source code: https://github.com/cran/cSEM
* Date/Publication: 2021-04-19 22:00:18 UTC
* Number of recursive dependencies: 121

Run `revdep_details(, "cSEM")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rdpack’
      All declared Imports should be used.
    ```

# datapackage.r

<details>

* Version: 1.3.3
* GitHub: https://github.com/frictionlessdata/datapackage-r
* Source code: https://github.com/cran/datapackage.r
* Date/Publication: 2021-04-16 18:40:03 UTC
* Number of recursive dependencies: 113

Run `revdep_details(, "datapackage.r")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘iterators’ ‘readr’
      All declared Imports should be used.
    ```

# delayed

<details>

* Version: 0.3.0
* GitHub: https://github.com/tlverse/delayed
* Source code: https://github.com/cran/delayed
* Date/Publication: 2020-02-28 11:40:02 UTC
* Number of recursive dependencies: 78

Run `revdep_details(, "delayed")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘assertthat’
      All declared Imports should be used.
    ```

# dragon

<details>

* Version: 1.1.0
* GitHub: https://github.com/sjspielman/dragon
* Source code: https://github.com/cran/dragon
* Date/Publication: 2020-12-08 08:10:15 UTC
* Number of recursive dependencies: 132

Run `revdep_details(, "dragon")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘htmltools’
      All declared Imports should be used.
    ```

# drimmR

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/drimmR
* Date/Publication: 2021-03-22 10:00:03 UTC
* Number of recursive dependencies: 126

Run `revdep_details(, "drimmR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Biostrings’ ‘stats’ ‘testthat’
      All declared Imports should be used.
    ```

# easyalluvial

<details>

* Version: 0.3.0
* GitHub: https://github.com/erblast/easyalluvial
* Source code: https://github.com/cran/easyalluvial
* Date/Publication: 2021-01-13 10:40:09 UTC
* Number of recursive dependencies: 175

Run `revdep_details(, "easyalluvial")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘parcats’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘progress’
      All declared Imports should be used.
    ```

# EFAtools

<details>

* Version: 0.3.1
* GitHub: https://github.com/mdsteiner/EFAtools
* Source code: https://github.com/cran/EFAtools
* Date/Publication: 2021-03-27 08:40:42 UTC
* Number of recursive dependencies: 86

Run `revdep_details(, "EFAtools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        doc    1.0Mb
        libs   5.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘progress’
      All declared Imports should be used.
    ```

# envi

<details>

* Version: 0.1.8
* GitHub: https://github.com/Waller-SUSAN/envi
* Source code: https://github.com/cran/envi
* Date/Publication: 2021-03-15 11:30:09 UTC
* Number of recursive dependencies: 112

Run `revdep_details(, "envi")` for more info

</details>

## In both

*   checking whether package ‘envi’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/future/revdep/checks/envi/new/envi.Rcheck/00install.out’ for details.
    ```

# EpiNow2

<details>

* Version: 1.3.2
* GitHub: https://github.com/epiforecasts/EpiNow2
* Source code: https://github.com/cran/EpiNow2
* Date/Publication: 2020-12-14 09:00:15 UTC
* Number of recursive dependencies: 152

Run `revdep_details(, "EpiNow2")` for more info

</details>

## In both

*   checking whether package ‘EpiNow2’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/EpiNow2/new/EpiNow2.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘EpiSoon’
    ```

## Installation

### Devel

```
* installing *source* package ‘EpiNow2’ ...
** package ‘EpiNow2’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
Error: C++14 standard requested but CXX14 is not defined
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/EpiNow2/new/EpiNow2.Rcheck/EpiNow2’


```
### CRAN

```
* installing *source* package ‘EpiNow2’ ...
** package ‘EpiNow2’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
Error: C++14 standard requested but CXX14 is not defined
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/EpiNow2/old/EpiNow2.Rcheck/EpiNow2’


```
# finbif

<details>

* Version: 0.5.0
* GitHub: https://github.com/luomus/finbif
* Source code: https://github.com/cran/finbif
* Date/Publication: 2021-03-27 01:20:02 UTC
* Number of recursive dependencies: 66

Run `revdep_details(, "finbif")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘curl’
      All declared Imports should be used.
    ```

# foieGras

<details>

* Version: 0.7-6
* GitHub: https://github.com/ianjonsen/foieGras
* Source code: https://github.com/cran/foieGras
* Date/Publication: 2021-04-26 22:10:07 UTC
* Number of recursive dependencies: 130

Run `revdep_details(, "foieGras")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 39.5Mb
      sub-directories of 1Mb or more:
        libs  38.5Mb
    ```

# forecastML

<details>

* Version: 0.9.0
* GitHub: https://github.com/nredell/forecastML
* Source code: https://github.com/cran/forecastML
* Date/Publication: 2020-05-07 15:10:17 UTC
* Number of recursive dependencies: 94

Run `revdep_details(, "forecastML")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dtplyr’
      All declared Imports should be used.
    ```

# future.callr

<details>

* Version: 0.6.0
* GitHub: https://github.com/HenrikBengtsson/future.callr
* Source code: https://github.com/cran/future.callr
* Date/Publication: 2021-01-04 18:10:02 UTC
* Number of recursive dependencies: 19

Run `revdep_details(, "future.callr")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/dotdotdot.R’ failed.
    Last 50 lines of output:
      [11:42:43.649]                 if (substitute) 
      [11:42:43.649]                   expr <- substitute(expr)
      [11:42:43.649]                 if (is.null(workers)) 
      [11:42:43.649]                   workers <- availableCores()
      [11:42:43.649]                 future <- CallrFuture(expr = expr, envir = envir, 
      [11:42:43.649]                   substitute = FALSE, globals = globals, label = label, 
      [11:42:43.649]                   workers = workers, ...)
    ...
      [11:42:45.599]  $ stdout    : chr ""
      [11:42:45.599]  $ conditions: list()
      [11:42:45.599]  $ rng       : logi FALSE
      [11:42:45.599]  $ started   : POSIXct[1:1], format: "2021-05-02 11:42:45"
      [11:42:45.599]  $ finished  : POSIXct[1:1], format: "2021-05-02 11:42:45"
      [11:42:45.599]  $ version   : chr "1.8"
      [11:42:45.599]  - attr(*, "class")= chr "FutureResult"
      [11:42:45.599] [1] 12
      Error: inherits(y, "error") is not TRUE
      Execution halted
    ```

# GetBCBData

<details>

* Version: 0.6
* GitHub: https://github.com/msperlin/GetBCBData
* Source code: https://github.com/cran/GetBCBData
* Date/Publication: 2021-01-21 17:40:07 UTC
* Number of recursive dependencies: 81

Run `revdep_details(, "GetBCBData")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RCurl’ ‘lubridate’ ‘readr’ ‘stats’
      All declared Imports should be used.
    ```

# googleTagManageR

<details>

* Version: 0.1.6
* GitHub: NA
* Source code: https://github.com/cran/googleTagManageR
* Date/Publication: 2020-10-05 13:20:10 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "googleTagManageR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘assertthat’ ‘future’ ‘httr’ ‘jsonlite’
      All declared Imports should be used.
    ```

# grattan

<details>

* Version: 1.9.0.4
* GitHub: https://github.com/HughParsonage/grattan
* Source code: https://github.com/cran/grattan
* Date/Publication: 2021-01-29 09:40:05 UTC
* Number of recursive dependencies: 113

Run `revdep_details(, "grattan")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'taxstats', 'taxstats1516'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        doc    1.8Mb
        libs   3.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘hutilscpp’
      All declared Imports should be used.
    ```

# greed

<details>

* Version: 0.5.0
* GitHub: https://github.com/comeetie/greed
* Source code: https://github.com/cran/greed
* Date/Publication: 2021-04-21 07:40:02 UTC
* Number of recursive dependencies: 126

Run `revdep_details(, "greed")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 25.7Mb
      sub-directories of 1Mb or more:
        libs  24.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘MASS’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 6693 marked UTF-8 strings
    ```

# gtfs2gps

<details>

* Version: 1.4-1
* GitHub: https://github.com/ipeaGIT/gtfs2gps
* Source code: https://github.com/cran/gtfs2gps
* Date/Publication: 2021-04-13 12:20:02 UTC
* Number of recursive dependencies: 80

Run `revdep_details(, "gtfs2gps")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘readr’
      All declared Imports should be used.
    ```

# hal9001

<details>

* Version: 0.2.7
* GitHub: https://github.com/tlverse/hal9001
* Source code: https://github.com/cran/hal9001
* Date/Publication: 2021-01-22 05:40:12 UTC
* Number of recursive dependencies: 91

Run `revdep_details(, "hal9001")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        libs   5.3Mb
    ```

# IFAA

<details>

* Version: 1.0.1
* GitHub: https://github.com/gitlzg/IFAA
* Source code: https://github.com/cran/IFAA
* Date/Publication: 2021-01-06 17:10:02 UTC
* Number of recursive dependencies: 42

Run `revdep_details(, "IFAA")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘expm’ ‘rlecuyer’
      All declared Imports should be used.
    ```

# iml

<details>

* Version: 0.10.1
* GitHub: https://github.com/christophM/iml
* Source code: https://github.com/cran/iml
* Date/Publication: 2020-09-24 12:30:14 UTC
* Number of recursive dependencies: 159

Run `revdep_details(, "iml")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘keras’
      All declared Imports should be used.
    ```

# infercnv

<details>

* Version: 1.6.0
* GitHub: https://github.com/broadinstitute/inferCNV
* Source code: https://github.com/cran/infercnv
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 123

Run `revdep_details(, "infercnv")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
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
* GitHub: https://github.com/tdhock/inlinedocs
* Source code: https://github.com/cran/inlinedocs
* Date/Publication: 2019-12-05 23:30:07 UTC
* Number of recursive dependencies: 7

Run `revdep_details(, "inlinedocs")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘R.methodsS3’
    ```

# ItemResponseTrees

<details>

* Version: 0.2.5
* GitHub: https://github.com/hplieninger/ItemResponseTrees
* Source code: https://github.com/cran/ItemResponseTrees
* Date/Publication: 2020-05-06 22:00:15 UTC
* Number of recursive dependencies: 121

Run `revdep_details(, "ItemResponseTrees")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'fit.irtree_model.Rd':
      ‘[MplusAutomation:MplusAutomation-package]{MplusAutomation}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

# keyATM

<details>

* Version: 0.4.0
* GitHub: https://github.com/keyATM/keyATM
* Source code: https://github.com/cran/keyATM
* Date/Publication: 2021-02-14 17:40:02 UTC
* Number of recursive dependencies: 104

Run `revdep_details(, "keyATM")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 18.0Mb
      sub-directories of 1Mb or more:
        libs  17.7Mb
    ```

# lidR

<details>

* Version: 3.1.2
* GitHub: https://github.com/Jean-Romain/lidR
* Source code: https://github.com/cran/lidR
* Date/Publication: 2021-03-16 13:40:12 UTC
* Number of recursive dependencies: 157

Run `revdep_details(, "lidR")` for more info

</details>

## In both

*   checking whether package ‘lidR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/lidR/new/lidR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘lidR’ ...
** package ‘lidR’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
Error: C++14 standard requested but CXX14 is not defined
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/lidR/new/lidR.Rcheck/lidR’


```
### CRAN

```
* installing *source* package ‘lidR’ ...
** package ‘lidR’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
Error: C++14 standard requested but CXX14 is not defined
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/lidR/old/lidR.Rcheck/lidR’


```
# lmtp

<details>

* Version: 0.9.0
* GitHub: NA
* Source code: https://github.com/cran/lmtp
* Date/Publication: 2021-02-22 15:50:02 UTC
* Number of recursive dependencies: 104

Run `revdep_details(, "lmtp")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R6’ ‘nnls’ ‘utils’
      All declared Imports should be used.
    ```

# meedr

<details>

* Version: 0.0.1
* GitHub: https://github.com/schoulten/meedr
* Source code: https://github.com/cran/meedr
* Date/Publication: 2021-03-18 09:00:02 UTC
* Number of recursive dependencies: 63

Run `revdep_details(, "meedr")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lubridate’
      All declared Imports should be used.
    ```

# methyvim

<details>

* Version: 1.11.0
* GitHub: https://github.com/nhejazi/methyvim
* Source code: https://github.com/cran/methyvim
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 212

Run `revdep_details(, "methyvim")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(methyvim)
      Setting options('download.file.method.GEOquery'='auto')
      Setting options('GEOquery.inmemory.gpl'=FALSE)
      methyvim v1.11.0: Targeted, Robust, and Model-free Differential Methylation Analysis
      > 
      > set.seed(43719)
    ...
          █
       1. ├─base::suppressWarnings(...) test-methyvim.R:22:0
       2. │ └─base::withCallingHandlers(...)
       3. └─methyvim::methyvim(...)
       4.   ├─base::`colnames<-`(...)
       5.   └─base::`colnames<-`(...)
      
      [ FAIL 1 | WARN 2 | SKIP 0 | PASS 34 ]
      Error: Test failures
      Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘tmle.npvi’
    ```

# MineICA

<details>

* Version: 1.30.0
* GitHub: NA
* Source code: https://github.com/cran/MineICA
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 199

Run `revdep_details(, "MineICA")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'Alist.Rd':
      ‘class-IcaSet’
    
    Missing link or links in documentation object 'Slist.Rd':
      ‘class-IcaSet’
    
    Missing link or links in documentation object 'class-IcaSet.Rd':
      ‘class-IcaSet’
    
    Missing link or links in documentation object 'getComp.Rd':
      ‘class-IcaSet’
    
    Missing link or links in documentation object 'runAn.Rd':
      ‘[Category:class-GOHyperGParams]{GOHyperGParams}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented S4 classes:
      ‘MineICAParams’
    All user-level objects in a package (including S4 classes and methods)
    should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘doMC’
    
    Depends: includes the non-default packages:
      'BiocGenerics', 'Biobase', 'plyr', 'ggplot2', 'scales', 'foreach',
      'xtable', 'biomaRt', 'gtools', 'GOstats', 'cluster', 'marray',
      'mclust', 'RColorBrewer', 'colorspace', 'igraph', 'Rgraphviz',
      'graph', 'annotate', 'Hmisc', 'fastICA', 'JADE'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Packages listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘biomaRt’ ‘GOstats’ ‘cluster’ ‘mclust’ ‘igraph’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘GOstats’ which was already attached by Depends.
      Please remove these calls from your code.
    Namespace in Imports field not imported from: ‘lumiHumanAll.db’
      All declared Imports should be used.
    Packages in Depends field not imported from:
      ‘GOstats’ ‘Hmisc’ ‘JADE’ ‘RColorBrewer’ ‘Rgraphviz’ ‘annotate’
      ‘biomaRt’ ‘cluster’ ‘colorspace’ ‘fastICA’ ‘foreach’ ‘ggplot2’
      ‘graph’ ‘gtools’ ‘igraph’ ‘marray’ ‘mclust’ ‘methods’ ‘plyr’ ‘scales’
      ‘xtable’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ':::' calls which should be '::':
      ‘Biobase:::annotation<-’ ‘Biobase:::validMsg’ ‘fpc:::pamk’
      ‘lumi:::getChipInfo’ ‘mclust:::adjustedRandIndex’
      See the note in ?`:::` about the use of this operator.
    Unexported object imported by a ':::' call: ‘Biobase:::isValidVersion’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    addGenesToGoReport: no visible global function definition for
      ‘geneIdsByCategory’
    addGenesToGoReport: no visible global function definition for
      ‘geneIdUniverse’
    addGenesToGoReport: no visible global function definition for
      ‘conditional’
    addGenesToGoReport: no visible global function definition for
      ‘sigCategories’
    annot2Color: no visible global function definition for ‘brewer.pal’
    annot2Color: no visible global function definition for ‘heat_hcl’
    ...
      importFrom("methods", "callNextMethod", "new", "validObject")
      importFrom("stats", "aggregate", "as.dendrogram", "as.dist",
                 "as.hclust", "chisq.test", "cor", "cor.test", "cutree",
                 "dist", "hclust", "kmeans", "kruskal.test", "lm", "median",
                 "na.omit", "order.dendrogram", "p.adjust", "quantile",
                 "reorder", "shapiro.test", "wilcox.test")
      importFrom("utils", "capture.output", "combn", "read.table",
                 "write.table")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# origami

<details>

* Version: 1.0.3
* GitHub: https://github.com/tlverse/origami
* Source code: https://github.com/cran/origami
* Date/Publication: 2020-01-16 22:40:02 UTC
* Number of recursive dependencies: 84

Run `revdep_details(, "origami")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘glmnet’
    ```

# partR2

<details>

* Version: 0.9.1
* GitHub: https://github.com/mastoffel/partR2
* Source code: https://github.com/cran/partR2
* Date/Publication: 2021-01-18 16:30:04 UTC
* Number of recursive dependencies: 87

Run `revdep_details(, "partR2")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# pavo

<details>

* Version: 2.7.0
* GitHub: https://github.com/rmaia/pavo
* Source code: https://github.com/cran/pavo
* Date/Publication: 2021-03-23 11:40:02 UTC
* Number of recursive dependencies: 102

Run `revdep_details(, "pavo")` for more info

</details>

## In both

*   checking whether package ‘pavo’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/future/revdep/checks/pavo/new/pavo.Rcheck/00install.out’ for details.
    ```

# phylolm

<details>

* Version: 2.6.2
* GitHub: https://github.com/lamho86/phylolm
* Source code: https://github.com/cran/phylolm
* Date/Publication: 2020-06-22 05:10:08 UTC
* Number of recursive dependencies: 41

Run `revdep_details(, "phylolm")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘geiger’, ‘caper’
    ```

# PLNmodels

<details>

* Version: 0.11.4
* GitHub: https://github.com/pln-team/PLNmodels
* Source code: https://github.com/cran/PLNmodels
* Date/Publication: 2021-03-16 16:10:02 UTC
* Number of recursive dependencies: 182

Run `revdep_details(, "PLNmodels")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.7Mb
      sub-directories of 1Mb or more:
        doc    2.1Mb
        libs   9.6Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘DESeq2’
    ```

# prewas

<details>

* Version: 1.1.1
* GitHub: https://github.com/Snitkin-Lab-Umich/prewas
* Source code: https://github.com/cran/prewas
* Date/Publication: 2021-04-02 12:20:05 UTC
* Number of recursive dependencies: 71

Run `revdep_details(, "prewas")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats’
      All declared Imports should be used.
    ```

# Prostar

<details>

* Version: 1.22.10
* GitHub: https://github.com/samWieczorek/Prostar
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2021-04-30
* Number of recursive dependencies: 303

Run `revdep_details(, "Prostar")` for more info

</details>

## In both

*   checking whether package ‘Prostar’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/future/revdep/checks/Prostar/new/Prostar.Rcheck/00install.out’ for details.
    ```

# protti

<details>

* Version: 0.1.0
* GitHub: https://github.com/jpquast/protti
* Source code: https://github.com/cran/protti
* Date/Publication: 2021-04-23 08:00:02 UTC
* Number of recursive dependencies: 194

Run `revdep_details(, "protti")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# QDNAseq

<details>

* Version: 1.26.0
* GitHub: https://github.com/ccagc/QDNAseq
* Source code: https://github.com/cran/QDNAseq
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 72

Run `revdep_details(, "QDNAseq")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# rainette

<details>

* Version: 0.1.2
* GitHub: https://github.com/juba/rainette
* Source code: https://github.com/cran/rainette
* Date/Publication: 2021-01-20 12:30:02 UTC
* Number of recursive dependencies: 124

Run `revdep_details(, "rainette")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(rainette)
      
      Attaching package: 'rainette'
      
      The following object is masked from 'package:stats':
      
    ...
       6. │       └─base::getExportedValue(pkg, name)
       7. ├─dplyr::arrange(., desc(abs(!!stat_col)))
       8. └─tibble::as_tibble(.)
      
      [ FAIL 1 | WARN 42 | SKIP 1 | PASS 132 ]
      Error: Test failures
      In addition: Warning message:
      In for (i in seq_len(n)) { :
        closing unused connection 4 (doesnt/exist.txtt)
      Execution halted
    ```

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'rainette2_plot.Rd':
      ‘[quanteda:textstat_keyness]{quanteda::textstat_keyness()}’
    
    Missing link or links in documentation object 'rainette_plot.Rd':
      ‘[quanteda:textstat_keyness]{quanteda::textstat_keyness()}’
    
    Missing link or links in documentation object 'rainette_stats.Rd':
      ‘[quanteda:textstat_keyness]{quanteda::textstat_keyness()}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Missing or unexported object: ‘quanteda::textstat_keyness’
    ```

# regmedint

<details>

* Version: 0.2.0
* GitHub: https://github.com/kaz-yos/regmedint
* Source code: https://github.com/cran/regmedint
* Date/Publication: 2020-11-16 12:30:07 UTC
* Number of recursive dependencies: 117

Run `revdep_details(, "regmedint")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Deriv’
      All declared Imports should be used.
    ```

# rgee

<details>

* Version: 1.0.9
* GitHub: https://github.com/r-spatial/rgee
* Source code: https://github.com/cran/rgee
* Date/Publication: 2021-04-24 04:20:02 UTC
* Number of recursive dependencies: 136

Run `revdep_details(, "rgee")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘geojsonio’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# robotstxt

<details>

* Version: 0.7.13
* GitHub: https://github.com/ropensci/robotstxt
* Source code: https://github.com/cran/robotstxt
* Date/Publication: 2020-09-03 19:30:02 UTC
* Number of recursive dependencies: 63

Run `revdep_details(, "robotstxt")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# sapfluxnetr

<details>

* Version: 0.1.1
* GitHub: https://github.com/sapfluxnet/sapfluxnetr
* Source code: https://github.com/cran/sapfluxnetr
* Date/Publication: 2020-08-27 12:50:02 UTC
* Number of recursive dependencies: 75

Run `revdep_details(, "sapfluxnetr")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# sctransform

<details>

* Version: 0.3.2
* GitHub: https://github.com/ChristophH/sctransform
* Source code: https://github.com/cran/sctransform
* Date/Publication: 2020-12-16 14:40:03 UTC
* Number of recursive dependencies: 67

Run `revdep_details(, "sctransform")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘glmGamPoi’
    ```

# sdmApp

<details>

* Version: 0.0.1
* GitHub: https://github.com/Abson-dev/sdmApp
* Source code: https://github.com/cran/sdmApp
* Date/Publication: 2021-01-22 10:40:03 UTC
* Number of recursive dependencies: 236

Run `revdep_details(, "sdmApp")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rJava’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# seer

<details>

* Version: 1.1.5
* GitHub: NA
* Source code: https://github.com/cran/seer
* Date/Publication: 2020-06-08 05:00:02 UTC
* Number of recursive dependencies: 110

Run `revdep_details(, "seer")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘MASS’
      All declared Imports should be used.
    ```

# Seurat

<details>

* Version: 4.0.1
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2021-03-18 06:30:19 UTC
* Number of recursive dependencies: 237

Run `revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.4Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        libs   9.5Mb
    ```

# shiny

<details>

* Version: 1.6.0
* GitHub: https://github.com/rstudio/shiny
* Source code: https://github.com/cran/shiny
* Date/Publication: 2021-01-25 21:50:02 UTC
* Number of recursive dependencies: 104

Run `revdep_details(, "shiny")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.1Mb
      sub-directories of 1Mb or more:
        R     1.6Mb
        www   8.3Mb
    ```

# shiny.worker

<details>

* Version: 0.0.1
* GitHub: NA
* Source code: https://github.com/cran/shiny.worker
* Date/Publication: 2021-01-21 11:00:02 UTC
* Number of recursive dependencies: 63

Run `revdep_details(, "shiny.worker")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R6’ ‘shiny’
      All declared Imports should be used.
    ```

# shinyrecap

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/shinyrecap
* Date/Publication: 2019-01-19 23:40:03 UTC
* Number of recursive dependencies: 94

Run `revdep_details(, "shinyrecap")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘CARE1’ ‘LCMCR’ ‘coda’ ‘conting’ ‘dga’ ‘future’ ‘ggplot2’ ‘ipc’
      ‘promises’ ‘reshape’ ‘shinycssloaders’ ‘testthat’
      All declared Imports should be used.
    ```

# simhelpers

<details>

* Version: 0.1.1
* GitHub: https://github.com/meghapsimatrix/simhelpers
* Source code: https://github.com/cran/simhelpers
* Date/Publication: 2021-02-14 17:50:02 UTC
* Number of recursive dependencies: 100

Run `revdep_details(, "simhelpers")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘magrittr’ ‘purrr’ ‘rlang’ ‘utils’
      All declared Imports should be used.
    ```

# skpr

<details>

* Version: 0.64.2
* GitHub: https://github.com/tylermorganwall/skpr
* Source code: https://github.com/cran/skpr
* Date/Publication: 2020-03-04 20:20:02 UTC
* Number of recursive dependencies: 147

Run `revdep_details(, "skpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 40.0Mb
      sub-directories of 1Mb or more:
        libs  38.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘nlme’
      All declared Imports should be used.
    ```

# solitude

<details>

* Version: 1.1.1
* GitHub: https://github.com/talegari/solitude
* Source code: https://github.com/cran/solitude
* Date/Publication: 2020-09-17 10:10:07 UTC
* Number of recursive dependencies: 144

Run `revdep_details(, "solitude")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R6’ ‘lgr’
      All declared Imports should be used.
    ```

# spacey

<details>

* Version: 0.1.1
* GitHub: https://github.com/mikemahoney218/spacey
* Source code: https://github.com/cran/spacey
* Date/Publication: 2020-03-14 18:50:02 UTC
* Number of recursive dependencies: 100

Run `revdep_details(, "spacey")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgdal’
      All declared Imports should be used.
    ```

# sparrpowR

<details>

* Version: 0.2.1
* GitHub: https://github.com/machiela-lab/sparrpowR
* Source code: https://github.com/cran/sparrpowR
* Date/Publication: 2021-03-16 09:50:02 UTC
* Number of recursive dependencies: 85

Run `revdep_details(, "sparrpowR")` for more info

</details>

## In both

*   checking whether package ‘sparrpowR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/future/revdep/checks/sparrpowR/new/sparrpowR.Rcheck/00install.out’ for details.
    ```

# SPARSEMODr

<details>

* Version: 1.0.1
* GitHub: https://github.com/NAU-CCL/SPARSEMODr
* Source code: https://github.com/cran/SPARSEMODr
* Date/Publication: 2021-01-21 23:30:06 UTC
* Number of recursive dependencies: 113

Run `revdep_details(, "SPARSEMODr")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘geosphere’ ‘lubridate’ ‘tidyverse’ ‘viridis’
      All declared Imports should be used.
    ```

# spatialwarnings

<details>

* Version: 2.0.0
* GitHub: https://github.com/spatial-ews/spatialwarnings
* Source code: https://github.com/cran/spatialwarnings
* Date/Publication: 2020-05-14 17:10:06 UTC
* Number of recursive dependencies: 78

Run `revdep_details(, "spatialwarnings")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        libs   4.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyr’
      All declared Imports should be used.
    ```

# spNetwork

<details>

* Version: 0.1.1
* GitHub: https://github.com/JeremyGelb/spNetwork
* Source code: https://github.com/cran/spNetwork
* Date/Publication: 2021-01-21 23:30:02 UTC
* Number of recursive dependencies: 117

Run `revdep_details(, "spNetwork")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.9Mb
      sub-directories of 1Mb or more:
        extdata   5.6Mb
        libs      3.3Mb
    ```

# stars

<details>

* Version: 0.5-2
* GitHub: https://github.com/r-spatial/stars
* Source code: https://github.com/cran/stars
* Date/Publication: 2021-03-17 16:20:02 UTC
* Number of recursive dependencies: 141

Run `revdep_details(, "stars")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘starsdata’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        doc   2.3Mb
        nc    4.5Mb
    ```

# startR

<details>

* Version: 2.1.0
* GitHub: NA
* Source code: https://github.com/cran/startR
* Date/Publication: 2020-10-29 17:40:02 UTC
* Number of recursive dependencies: 37

Run `revdep_details(, "startR")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘s2dverification’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# synergyfinder

<details>

* Version: 2.4.16
* GitHub: NA
* Source code: https://github.com/cran/synergyfinder
* Date/Publication: 2021-04-21
* Number of recursive dependencies: 173

Run `revdep_details(, "synergyfinder")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Depends: includes the non-default packages:
      'drc', 'reshape2', 'tidyverse', 'dplyr', 'tidyr', 'purrr', 'furrr',
      'ggplot2', 'ggforce', 'grid', 'vegan', 'gstat', 'sp',
      'SpatialExtremes', 'ggrepel', 'kriging', 'plotly', 'stringr',
      'future', 'mice', 'lattice', 'nleqslv', 'magrittr', 'pbapply', 'metR'
    Adding so many packages to the search path is excessive and importing
    selectively is preferable.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Packages listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘drc’ ‘reshape2’ ‘tidyverse’ ‘dplyr’ ‘tidyr’ ‘purrr’ ‘furrr’ ‘ggplot2’ ‘ggforce’ ‘grid’ ‘vegan’ ‘gstat’ ‘sp’ ‘methods’ ‘SpatialExtremes’ ‘ggrepel’ ‘kriging’ ‘plotly’ ‘stringr’ ‘future’ ‘mice’ ‘lattice’ ‘nleqslv’ ‘stats’ ‘graphics’ ‘grDevices’ ‘magrittr’ ‘pbapply’ ‘metR’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘gstat’ ‘nleqslv’ ‘sp’ ‘tidyverse’
      All declared Imports should be used.
    Packages in Depends field not imported from:
      ‘SpatialExtremes’ ‘dplyr’ ‘drc’ ‘furrr’ ‘future’ ‘ggforce’ ‘ggrepel’
      ‘grid’ ‘gstat’ ‘kriging’ ‘lattice’ ‘metR’ ‘methods’ ‘mice’ ‘nleqslv’
      ‘pbapply’ ‘plotly’ ‘purrr’ ‘reshape2’ ‘sp’ ‘stringr’ ‘tidyr’
      ‘tidyverse’ ‘vegan’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .Extract2DrugPlotData: no visible binding for global variable
      ‘input_type’
    .Extract2DrugPlotData: no visible binding for global variable
      ‘block_id’
    .Extract2DrugPlotData: no visible binding for global variable ‘value’
    .Extract2DrugPlotData: no visible binding for global variable ‘left’
    .Extract2DrugPlotData: no visible binding for global variable ‘right’
    .Extract2DrugPlotData: no visible binding for global variable ‘conc1’
    .Extract2DrugPlotData: no visible binding for global variable ‘conc2’
    .Extract2DrugPlotData: no visible binding for global variable ‘text’
    ...
      block_id color conc1 conc2 css data end grid id input_type label left
      metric n pred r respone response response_CI95 response_mean
      response_origin response_origin_CI95 response_origin_mean
      response_origin_sd response_origin_sem response_sd response_sem right
      start synergy text theta value x y
    Consider adding
      importFrom("graphics", "grid", "text")
      importFrom("stats", "end", "start")
      importFrom("utils", "data")
    to your NAMESPACE file.
    ```

# tableschema.r

<details>

* Version: 1.1.1
* GitHub: https://github.com/frictionlessdata/tableschema-r
* Source code: https://github.com/cran/tableschema.r
* Date/Publication: 2020-03-12 12:40:02 UTC
* Number of recursive dependencies: 64

Run `revdep_details(, "tableschema.r")` for more info

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

# targets

<details>

* Version: 0.4.2
* GitHub: https://github.com/ropensci/targets
* Source code: https://github.com/cran/targets
* Date/Publication: 2021-04-30 08:50:02 UTC
* Number of recursive dependencies: 135

Run `revdep_details(, "targets")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘arrow’
    ```

# text

<details>

* Version: 0.9.10
* GitHub: https://github.com/OscarKjell/text
* Source code: https://github.com/cran/text
* Date/Publication: 2020-12-14 09:50:02 UTC
* Number of recursive dependencies: 138

Run `revdep_details(, "text")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3 marked UTF-8 strings
    ```

# TKCat

<details>

* Version: 0.5.4
* GitHub: https://github.com/patzaw/TKCat
* Source code: https://github.com/cran/TKCat
* Date/Publication: 2021-03-04 09:40:03 UTC
* Number of recursive dependencies: 98

Run `revdep_details(, "TKCat")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘base64enc’
      All declared Imports should be used.
    ```

# treeHMM

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/treeHMM
* Date/Publication: 2019-12-12 17:10:02 UTC
* Number of recursive dependencies: 11

Run `revdep_details(, "treeHMM")` for more info

</details>

## In both

*   checking whether package ‘treeHMM’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: Strategy 'multiprocess' is deprecated in future (>= 1.20.0). Instead, explicitly specify either 'multisession' or 'multicore'. In the current R session, 'multiprocess' equals 'multicore'.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/treeHMM/new/treeHMM.Rcheck/00install.out’ for details.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Matrix’
      All declared Imports should be used.
    ```

# TSstudio

<details>

* Version: 0.1.6
* GitHub: https://github.com/RamiKrispin/TSstudio
* Source code: https://github.com/cran/TSstudio
* Date/Publication: 2020-01-21 05:30:02 UTC
* Number of recursive dependencies: 141

Run `revdep_details(, "TSstudio")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘forecastHybrid’
      All declared Imports should be used.
    ```

# txshift

<details>

* Version: 0.3.5
* GitHub: https://github.com/nhejazi/txshift
* Source code: https://github.com/cran/txshift
* Date/Publication: 2021-02-07 20:10:05 UTC
* Number of recursive dependencies: 95

Run `revdep_details(, "txshift")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sl3’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

