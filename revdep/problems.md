# adept

<details>

* Version: 1.1.2
* GitHub: https://github.com/martakarass/adept
* Source code: https://github.com/cran/adept
* Date/Publication: 2019-06-18 06:50:03 UTC
* Number of recursive dependencies: 96

Run `revdep_details(, "adept")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        doc   4.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# alookr

<details>

* Version: 0.3.2
* GitHub: https://github.com/choonghyunryu/alookr
* Source code: https://github.com/cran/alookr
* Date/Publication: 2020-06-07 16:50:07 UTC
* Number of recursive dependencies: 208

Run `revdep_details(, "alookr")` for more info

</details>

## In both

*   checking whether package ‘alookr’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/future/revdep/checks/alookr/new/alookr.Rcheck/00install.out’ for details.
    ```

# AlpsNMR

<details>

* Version: 3.0.4
* GitHub: NA
* Source code: https://github.com/cran/AlpsNMR
* Date/Publication: 2020-11-19
* Number of recursive dependencies: 163

Run `revdep_details(, "AlpsNMR")` for more info

</details>

## In both

*   checking Rd \usage sections ... WARNING
    ```
    ...
    
    Undocumented arguments in documentation object 'confusion_matrix'
      ‘MVObj’ ‘model’
    
    Undocumented arguments in documentation object 'model_VIP'
      ‘model’
    
    Undocumented arguments in documentation object 'rdCV_PLS_RF'
      ‘X’ ‘Y’ ‘ID’ ‘scale’ ‘nRep’ ‘nOuter’ ‘nInner’ ‘varRatio’ ‘DA’
      ‘fitness’ ‘method’ ‘nCompMax’ ‘methParam’ ‘ML’ ‘modReturn’ ‘logg’
      ‘parallel’
    
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

* Version: 3.2.1
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2020-02-04 15:20:21 UTC
* Number of recursive dependencies: 47

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
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        libs   5.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats4’
      All declared Imports should be used.
    ```

# batchtools

<details>

* Version: 0.9.14
* GitHub: https://github.com/mllg/batchtools
* Source code: https://github.com/cran/batchtools
* Date/Publication: 2020-10-21 20:50:03 UTC
* Number of recursive dependencies: 79

Run `revdep_details(, "batchtools")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    --------------------------------------------------------------------------
    [[58456,1],0]: A high-performance Open MPI point-to-point messaging module
    was unable to find any relevant network interfaces:
    
    Module: OpenFabrics (openib)
      Host: c4-dev2
    
    Another transport will be used instead, although this may result in
    lower performance.
    --------------------------------------------------------------------------
    ```

# bcmaps

<details>

* Version: 0.18.1
* GitHub: https://github.com/bcgov/bcmaps
* Source code: https://github.com/cran/bcmaps
* Date/Publication: 2020-04-29 10:30:10 UTC
* Number of recursive dependencies: 87

Run `revdep_details(, "bcmaps")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘bcmapsdata’
    ```

# blavaan

<details>

* Version: 0.3-12
* GitHub: NA
* Source code: https://github.com/cran/blavaan
* Date/Publication: 2020-11-12 07:10:03 UTC
* Number of recursive dependencies: 114

Run `revdep_details(, "blavaan")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      Backtrace:
        1. blavaan::blavFitIndices(fitstan) tests.blavaanobject-methods.R:126:2
        3. blavaan:::fitMeasures(object, paste0("p_", pD))
        4. blavaan:::.local(object, fit.measures, baseline.model, ...)
        5. blavaan:::blav_fit_measures(...)
        7. loo::loo.matrix(casells, r_eff = ref)
        8. loo:::importance_sampling.matrix(...)
        9. loo:::do_importance_sampling(...)
       10. loo:::throw_pareto_warnings(pareto_k)
       11. loo:::.warn(...)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (???): blavaan arguments ──────────────────────────────────────────────
      Error: blavaan ERROR: problem with translation from lavaan to MCMC syntax.
      Backtrace:
          █
       1. └─blavaan::blavaan(...)
      
      [ FAIL 1 | WARN 12 | SKIP 0 | PASS 61 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 67.0Mb
      sub-directories of 1Mb or more:
        libs  65.6Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# blockCV

<details>

* Version: 2.1.1
* GitHub: https://github.com/rvalavi/blockCV
* Source code: https://github.com/cran/blockCV
* Date/Publication: 2020-02-23 20:00:02 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "blockCV")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘biomod2’
    ```

# brms

<details>

* Version: 2.14.4
* GitHub: https://github.com/paul-buerkner/brms
* Source code: https://github.com/cran/brms
* Date/Publication: 2020-11-03 06:40:22 UTC
* Number of recursive dependencies: 210

Run `revdep_details(, "brms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        R     3.0Mb
        doc   2.7Mb
    ```

# CLVTools

<details>

* Version: 0.7.0
* GitHub: https://github.com/bachmannpatrick/CLVTools
* Source code: https://github.com/cran/CLVTools
* Date/Publication: 2020-08-26 20:10:02 UTC
* Number of recursive dependencies: 86

Run `revdep_details(, "CLVTools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.6Mb
      sub-directories of 1Mb or more:
        libs  11.4Mb
    ```

# codebook

<details>

* Version: 0.9.2
* GitHub: https://github.com/rubenarslan/codebook
* Source code: https://github.com/cran/codebook
* Date/Publication: 2020-06-06 23:40:03 UTC
* Number of recursive dependencies: 199

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

* Version: 0.3.0
* GitHub: https://github.com/M-E-Rademaker/cSEM
* Source code: https://github.com/cran/cSEM
* Date/Publication: 2020-10-12 16:40:03 UTC
* Number of recursive dependencies: 119

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

* Version: 1.3.1
* GitHub: https://github.com/frictionlessdata/datapackage-r
* Source code: https://github.com/cran/datapackage.r
* Date/Publication: 2020-05-06 22:10:09 UTC
* Number of recursive dependencies: 117

Run `revdep_details(, "datapackage.r")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      Component "allOf": Component 1: Component 5: Component 12: Component 6: Component 5: Component 5: Component 6: Component 1: Component 3: Component 3: Component 9: Component 5: Component 5: Component 1: 1 string mismatch
      Component "allOf": Component 1: Component 5: Component 12: Component 6: Component 5: Component 5: Component 6: Component 1: Component 3: Component 3: Component 9: Component 5: Component 5: Component 2: Modes: numeric, list
      Component "allOf": Component 1: Component 5: Component 12: Component 6: Component 5: Component 5: Component 6: Component 1: Component 3: Component 3: Component 9: Component 5: Component 5: Component 2: target is numeric, current is list
      Component "allOf": Component 1: Component 5: Component 12: Component 6: Component 5: Component 5: Component 6: Component 1: Component 3: Component 3: Component 9: Component 5: Component 5: Component 3: Modes: list, character
      ...
      ── Failure (test-profile.R:106:5): profile tabular-data-resource should be up-to-date ──
      profile$jsonschema not equal to `response.data`.
      Component "properties": Component "schema": Component "properties": Component "fields": Component "items": Component "anyOf": Component 9: Component 5: Names: 4 string mismatches
      Component "properties": Component "schema": Component "properties": Component "fields": Component "items": Component "anyOf": Component 9: Component 5: Length mismatch: comparison on first 8 components
      Component "properties": Component "schema": Component "properties": Component "fields": Component "items": Component "anyOf": Component 9: Component 5: Component 5: Names: 3 string mismatches
      Component "properties": Component "schema": Component "properties": Component "fields": Component "items": Component "anyOf": Component 9: Component 5: Component 5: Length mismatch: comparison on first 3 components
      Component "properties": Component "schema": Component "properties": Component "fields": Component "items": Component "anyOf": Component 9: Component 5: Component 5: Component 1: 1 string mismatch
      Component "properties": Component "schema": Component "properties": Component "fields": Component "items": Component "anyOf": Component 9: Component 5: Component 5: Component 2: Modes: numeric, list
      Component "properties": Component "schema": Component "properties": Component "fields": Component "items": Component "anyOf": Component 9: Component 5: Component 5: Component 2: target is numeric, current is list
      Component "properties": Component "schema": Component "properties": Component "fields": Component "items": Component "anyOf": Component 9: Component 5: Component 5: Component 3: Modes: list, character
      Component "properties": Component "schema": Component "properties": Component "fields": Component "items": Component "anyOf": Component 9: Component 5: Component 5: Component 3: names for target but not for current
      ...
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 249 ]
      Error: Test failures
      Execution halted
    ```

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
* Number of recursive dependencies: 74

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
* Number of recursive dependencies: 131

Run `revdep_details(, "dragon")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘htmltools’
      All declared Imports should be used.
    ```

# EFAtools

<details>

* Version: 0.3.0
* GitHub: https://github.com/mdsteiner/EFAtools
* Source code: https://github.com/cran/EFAtools
* Date/Publication: 2020-11-04 18:00:02 UTC
* Number of recursive dependencies: 88

Run `revdep_details(, "EFAtools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        doc    1.0Mb
        libs   5.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘progress’
      All declared Imports should be used.
    ```

# EpiNow2

<details>

* Version: 1.3.2
* GitHub: https://github.com/epiforecasts/EpiNow2
* Source code: https://github.com/cran/EpiNow2
* Date/Publication: 2020-12-14 09:00:15 UTC
* Number of recursive dependencies: 150

Run `revdep_details(, "EpiNow2")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘EpiSoon’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 168.7Mb
      sub-directories of 1Mb or more:
        libs  167.1Mb
    ```

# foieGras

<details>

* Version: 0.6-9
* GitHub: https://github.com/ianjonsen/foieGras
* Source code: https://github.com/cran/foieGras
* Date/Publication: 2020-07-22 21:50:02 UTC
* Number of recursive dependencies: 123

Run `revdep_details(, "foieGras")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 38.6Mb
      sub-directories of 1Mb or more:
        libs  37.4Mb
    ```

# forecastML

<details>

* Version: 0.9.0
* GitHub: https://github.com/nredell/forecastML
* Source code: https://github.com/cran/forecastML
* Date/Publication: 2020-05-07 15:10:17 UTC
* Number of recursive dependencies: 98

Run `revdep_details(, "forecastML")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dtplyr’
      All declared Imports should be used.
    ```

# GetBCBData

<details>

* Version: 0.5
* GitHub: https://github.com/msperlin/GetBCBData
* Source code: https://github.com/cran/GetBCBData
* Date/Publication: 2019-04-23 10:10:29 UTC
* Number of recursive dependencies: 106

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
* Number of recursive dependencies: 67

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

* Version: 1.9.0.0
* GitHub: https://github.com/HughParsonage/grattan
* Source code: https://github.com/cran/grattan
* Date/Publication: 2020-07-13 14:20:06 UTC
* Number of recursive dependencies: 117

Run `revdep_details(, "grattan")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'taxstats', 'taxstats1516'
    ```

# gWQS

<details>

* Version: 3.0.1
* GitHub: NA
* Source code: https://github.com/cran/gWQS
* Date/Publication: 2020-11-19 15:00:03 UTC
* Number of recursive dependencies: 106

Run `revdep_details(, "gWQS")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

# hal9001

<details>

* Version: 0.2.6
* GitHub: https://github.com/tlverse/hal9001
* Source code: https://github.com/cran/hal9001
* Date/Publication: 2020-06-27 04:50:07 UTC
* Number of recursive dependencies: 93

Run `revdep_details(, "hal9001")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        libs   5.5Mb
    ```

# IFAA

<details>

* Version: 1.0.0
* GitHub: https://github.com/gitlzg/IFAA
* Source code: https://github.com/cran/IFAA
* Date/Publication: 2020-11-04 15:00:09 UTC
* Number of recursive dependencies: 39

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
* Number of recursive dependencies: 126

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
* Number of recursive dependencies: 123

Run `revdep_details(, "ItemResponseTrees")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'fit.irtree_model.Rd':
      ‘[MplusAutomation:MplusAutomation-package]{MplusAutomation}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

# lidR

<details>

* Version: 3.0.4
* GitHub: https://github.com/Jean-Romain/lidR
* Source code: https://github.com/cran/lidR
* Date/Publication: 2020-10-10 21:40:03 UTC
* Number of recursive dependencies: 160

Run `revdep_details(, "lidR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.2Mb
      sub-directories of 1Mb or more:
        extdata   1.1Mb
        libs      8.7Mb
    ```

# lmtp

<details>

* Version: 0.0.5
* GitHub: NA
* Source code: https://github.com/cran/lmtp
* Date/Publication: 2020-07-18 09:10:02 UTC
* Number of recursive dependencies: 86

Run `revdep_details(, "lmtp")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sl3’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R6’ ‘nnls’ ‘utils’
      All declared Imports should be used.
    ```

# merTools

<details>

* Version: 0.5.2
* GitHub: NA
* Source code: https://github.com/cran/merTools
* Date/Publication: 2020-06-23 10:30:12 UTC
* Number of recursive dependencies: 152

Run `revdep_details(, "merTools")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      
      ══ Warnings ════════════════════════════════════════════════════════════════════
      ── Warning (???): findFormFuns works ───────────────────────────────────────────
      qr2rankMatrix(.): QR has negative diag(R) entries
      Backtrace:
       1. lme4::lFormula(...)
       2. lme4:::chkRank.drop.cols(X, kind = rankX.chk, tol = 1e-07)
       3. Matrix::rankMatrix(X, tol = tol, method = method)
       5. Matrix::qr2rankMatrix(q.r, tol = tol, isBqr = x.dense, do.warn = warn.qr)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (???): findFormFuns works ─────────────────────────────────────────────
      Error: Dropping columns failed to produce full column rank design matrix
      Backtrace:
          █
       1. └─lme4::lFormula(...)
       2.   └─lme4:::chkRank.drop.cols(X, kind = rankX.chk, tol = 1e-07)
      
      [ FAIL 1 | WARN 1 | SKIP 12 | PASS 218 ]
      Error: Test failures
      Execution halted
    ```

# methyvim

<details>

* Version: 1.11.0
* GitHub: https://github.com/nhejazi/methyvim
* Source code: https://github.com/cran/methyvim
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 211

Run `revdep_details(, "methyvim")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      Backtrace:
       1. methyvim:::set_parallel(parallel = TRUE) test-set_parallel.R:9:2
       2. future::plan(future::multiprocess)
       3. future:::plan_set(...)
       4. future:::warn_about_multiprocess(newStack)
       5. base::.Deprecated(...)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-methyvim.R:22:1): (code run outside of `test_that()`) ───────────
      Error: 'names' attribute [8] must be the same length as the vector [1]
      Backtrace:
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
* Number of recursive dependencies: 210

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
    ...
      position_jitter pushViewport quantile rainbow_hcl rcorr read.table
      reorder scale_colour_gradientn scale_colour_manual scale_fill_manual
      scale_linetype_manual scale_shape_manual scale_x_continuous
      scale_x_discrete scale_y_continuous shapiro.test sigCategories
      terrain_hcl theme theme_bw title tkplot.fit.to.screen unit useMart
      validObject vcount viewport wilcox.test write.table xlab xtable
    Consider adding
      importFrom("grDevices", "cm.colors", "dev.off", "graphics.off",
                 "heat.colors", "pdf")
      importFrom("graphics", "abline", "axis", "frame", "hist", "layout",
                 "legend", "mtext", "par", "plot.new", "points", "title")
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
* Number of recursive dependencies: 86

Run `revdep_details(, "origami")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘glmnet’
    ```

# pavo

<details>

* Version: 2.6.1
* GitHub: https://github.com/rmaia/pavo
* Source code: https://github.com/cran/pavo
* Date/Publication: 2020-12-18 22:20:02 UTC
* Number of recursive dependencies: 101

Run `revdep_details(, "pavo")` for more info

</details>

## In both

*   checking whether package ‘pavo’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/future/revdep/checks/pavo/new/pavo.Rcheck/00install.out’ for details.
    ```

# PCRedux

<details>

* Version: 1.0-6
* GitHub: https://github.com/PCRuniversum/PCRedux
* Source code: https://github.com/cran/PCRedux
* Date/Publication: 2020-03-06 08:10:02 UTC
* Number of recursive dependencies: 149

Run `revdep_details(, "PCRedux")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘FFTrees’
    ```

# phylolm

<details>

* Version: 2.6.2
* GitHub: https://github.com/lamho86/phylolm
* Source code: https://github.com/cran/phylolm
* Date/Publication: 2020-06-22 05:10:08 UTC
* Number of recursive dependencies: 44

Run `revdep_details(, "phylolm")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘geiger’, ‘caper’
    ```

# promises

<details>

* Version: 1.1.1
* GitHub: https://github.com/rstudio/promises
* Source code: https://github.com/cran/promises
* Date/Publication: 2020-06-09 21:50:02 UTC
* Number of recursive dependencies: 54

Run `revdep_details(, "promises")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘purrr’
    ```

# Prostar

<details>

* Version: 1.22.4
* GitHub: https://github.com/samWieczorek/Prostar
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2020-12-11
* Number of recursive dependencies: 292

Run `revdep_details(, "Prostar")` for more info

</details>

## In both

*   checking whether package ‘Prostar’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/future/revdep/checks/Prostar/new/Prostar.Rcheck/00install.out’ for details.
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

# regmedint

<details>

* Version: 0.2.0
* GitHub: https://github.com/kaz-yos/regmedint
* Source code: https://github.com/cran/regmedint
* Date/Publication: 2020-11-16 12:30:07 UTC
* Number of recursive dependencies: 111

Run `revdep_details(, "regmedint")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Deriv’
      All declared Imports should be used.
    ```

# robotstxt

<details>

* Version: 0.7.13
* GitHub: https://github.com/ropensci/robotstxt
* Source code: https://github.com/cran/robotstxt
* Date/Publication: 2020-09-03 19:30:02 UTC
* Number of recursive dependencies: 66

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
* Number of recursive dependencies: 77

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
* Number of recursive dependencies: 70

Run `revdep_details(, "sctransform")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘glmGamPoi’
    ```

# seer

<details>

* Version: 1.1.5
* GitHub: NA
* Source code: https://github.com/cran/seer
* Date/Publication: 2020-06-08 05:00:02 UTC
* Number of recursive dependencies: 111

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

* Version: 3.2.3
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2020-12-15 10:10:05 UTC
* Number of recursive dependencies: 229

Run `revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘loomR’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        libs   9.2Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘loomR’
    ```

# shiny

<details>

* Version: 1.5.0
* GitHub: https://github.com/rstudio/shiny
* Source code: https://github.com/cran/shiny
* Date/Publication: 2020-06-23 13:30:03 UTC
* Number of recursive dependencies: 101

Run `revdep_details(, "shiny")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.8Mb
      sub-directories of 1Mb or more:
        R     1.7Mb
        www   8.1Mb
    ```

# shinyrecap

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/shinyrecap
* Date/Publication: 2019-01-19 23:40:03 UTC
* Number of recursive dependencies: 92

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

# sigminer

<details>

* Version: 1.1.0
* GitHub: https://github.com/ShixiangWang/sigminer
* Source code: https://github.com/cran/sigminer
* Date/Publication: 2020-11-11 07:40:06 UTC
* Number of recursive dependencies: 198

Run `revdep_details(, "sigminer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        extdata   3.9Mb
    ```

# simhelpers

<details>

* Version: 0.1.0
* GitHub: https://github.com/meghapsimatrix/simhelpers
* Source code: https://github.com/cran/simhelpers
* Date/Publication: 2020-03-31 15:00:06 UTC
* Number of recursive dependencies: 101

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
* Number of recursive dependencies: 141

Run `revdep_details(, "skpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 41.8Mb
      sub-directories of 1Mb or more:
        libs  40.3Mb
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
* Number of recursive dependencies: 157

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
* Number of recursive dependencies: 98

Run `revdep_details(, "spacey")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgdal’
      All declared Imports should be used.
    ```

# SPARSEMODr

<details>

* Version: 1.0
* GitHub: https://github.com/NAU-CCL/SPARSEMODr
* Source code: https://github.com/cran/SPARSEMODr
* Date/Publication: 2020-12-17 09:40:06 UTC
* Number of recursive dependencies: 108

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
* Number of recursive dependencies: 81

Run `revdep_details(, "spatialwarnings")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        libs   4.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyr’
      All declared Imports should be used.
    ```

# stars

<details>

* Version: 0.4-3
* GitHub: https://github.com/r-spatial/stars
* Source code: https://github.com/cran/stars
* Date/Publication: 2020-07-08 11:20:03 UTC
* Number of recursive dependencies: 134

Run `revdep_details(, "stars")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘starsdata’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        doc   1.9Mb
        nc    4.5Mb
    ```

# steps

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/steps
* Date/Publication: 2020-03-23 16:40:02 UTC
* Number of recursive dependencies: 71

Run `revdep_details(, "steps")` for more info

</details>

## In both

*   R CMD check timed out
    

# tableschema.r

<details>

* Version: 1.1.1
* GitHub: https://github.com/frictionlessdata/tableschema-r
* Source code: https://github.com/cran/tableschema.r
* Date/Publication: 2020-03-12 12:40:02 UTC
* Number of recursive dependencies: 67

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

# text

<details>

* Version: 0.9.10
* GitHub: https://github.com/OscarKjell/text
* Source code: https://github.com/cran/text
* Date/Publication: 2020-12-14 09:50:02 UTC
* Number of recursive dependencies: 140

Run `revdep_details(, "text")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3 marked UTF-8 strings
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
* Number of recursive dependencies: 143

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

* Version: 0.3.4
* GitHub: https://github.com/nhejazi/txshift
* Source code: https://github.com/cran/txshift
* Date/Publication: 2020-09-25 13:50:02 UTC
* Number of recursive dependencies: 98

Run `revdep_details(, "txshift")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sl3’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘sl3’ in Rd xrefs
    ```

