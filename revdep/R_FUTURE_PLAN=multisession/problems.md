# adept

<details>

* Version: 1.1.2
* GitHub: https://github.com/martakarass/adept
* Source code: https://github.com/cran/adept
* Date/Publication: 2019-06-18 06:50:03 UTC
* Number of recursive dependencies: 97

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
* Number of recursive dependencies: 207

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

* Version: 3.0.3
* GitHub: NA
* Source code: https://github.com/cran/AlpsNMR
* Date/Publication: 2020-11-04
* Number of recursive dependencies: 164

Run `revdep_details(, "AlpsNMR")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > peak_table <- new_nmr_dataset_peak_table(
    +     peak_table = peak_matrix,
    +     metadata = list(external = metadata)
    + )
    > 
    > ## We will use a double cross validation, splitting the samples with random
    > ## subsampling both in the external and internal validation.
    > ## The classification model will be a PLSDA, exploring at maximum 3 latent
    > ## variables.
    > ## The best model will be selected based on the area under the ROC curve
    > methodology <- plsda_auroc_vip_method(ncomp = 3)
    > model <- nmr_data_analysis(
    +     peak_table,
    +     y_column = "Condition",
    +     identity_column = NULL,
    +     external_val = list(iterations = 1, test_size = 0.25),
    +     internal_val = list(iterations = 3, test_size = 0.25),
    +     data_analysis_method = methodology
    + )
    Error: there is no package called ‘AlpsNMR’
    Execution halted
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
    [[51075,1],0]: A high-performance Open MPI point-to-point messaging module
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
* Number of recursive dependencies: 88

Run `revdep_details(, "bcmaps")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      
      
      ── Skip (test-utils.R:24:3): bc_bbox works with all classes ────────────────────
      Reason: On CRAN
      
      ── Skip (test-utils.R:33:3): bc_bbox works with all classes and numeric crs ────
      Reason: On CRAN
      
      ── Skip (test-utils.R:41:3): bc_bbox works with all classes and character crs ──
      Reason: On CRAN
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● On CRAN (5)
      ● bcmapsdata cannot be loaded (6)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test-raster_by_poly.R:66:3): setup_future works
      
      [ FAIL 1 | WARN 0 | SKIP 11 | PASS 85 ]
      Error: Test failures
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘bcmapsdata’
    ```

# blavaan

<details>

* Version: 0.3-10
* GitHub: NA
* Source code: https://github.com/cran/blavaan
* Date/Publication: 2020-08-03 06:40:02 UTC
* Number of recursive dependencies: 114

Run `revdep_details(, "blavaan")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 62.7Mb
      sub-directories of 1Mb or more:
        libs  60.8Mb
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
* Number of recursive dependencies: 110

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
* Number of recursive dependencies: 87

Run `revdep_details(, "CLVTools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.5Mb
      sub-directories of 1Mb or more:
        libs  11.4Mb
    ```

# codalm

<details>

* Version: 0.1.0
* GitHub: https://github.com/jfiksel/codalm
* Source code: https://github.com/cran/codalm
* Date/Publication: 2020-06-25 16:00:06 UTC
* Number of recursive dependencies: 80

Run `revdep_details(, "codalm")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      ── FAILURE (test-independence_test.R:9:5): independence test works with sequenti
      inherits(plan(), "sequential") is not TRUE
      
      `actual`:   FALSE
      `expected`: TRUE 
      
      ── FAILURE (test-independence_test.R:19:5): independence test works with multise
      inherits(plan(), "sequential") is not TRUE
      
      `actual`:   FALSE
      `expected`: TRUE 
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test-codalm_ci.R:20:5): bootstrap CI works with sequential evaluation
      FAILURE (test-codalm_ci.R:42:5): bootstrap CI works with multisession evaluation
      FAILURE (test-independence_test.R:9:5): independence test works with sequential evaluation
      FAILURE (test-independence_test.R:19:5): independence test works with multisession evaluation
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 22 ]
      Error: Test failures
      Execution halted
    ```

# codebook

<details>

* Version: 0.9.2
* GitHub: https://github.com/rubenarslan/codebook
* Source code: https://github.com/cran/codebook
* Date/Publication: 2020-06-06 23:40:03 UTC
* Number of recursive dependencies: 195

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

* Version: 1.3.1
* GitHub: https://github.com/frictionlessdata/datapackage-r
* Source code: https://github.com/cran/datapackage.r
* Date/Publication: 2020-05-06 22:10:09 UTC
* Number of recursive dependencies: 114

Run `revdep_details(, "datapackage.r")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘iterators’ ‘readr’
      All declared Imports should be used.
    ```

# DeclareDesign

<details>

* Version: 0.22.0
* GitHub: https://github.com/DeclareDesign/DeclareDesign
* Source code: https://github.com/cran/DeclareDesign
* Date/Publication: 2020-03-24 07:40:10 UTC
* Number of recursive dependencies: 140

Run `revdep_details(, "DeclareDesign")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      [26] 3 - 5 == -2
      ...
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● On CRAN (4)
      ● Skipped bootstrap SE test for speed (1)
      ● empty test (1)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-compare-diagnoses.R:28:3): merge_by_estimator working in compare_diagnoses
      ERROR (test-diagnose-design.R:227:3): more term
      ERROR (test-diagnose-design.R:285:3): diagnose_design works when simulations_df lacking parameters attr
      ERROR (test-factorial.R:39:3): Factorial
      FAILURE (test-fanout.R:164:3): correct fan out
      ERROR (test-multiple-estimators.R:52:3): Two estimators, Two estimands (crossed)
      ERROR (test-reshape-diagnosis.R:92:3): designs with factors in diagnosands_df do not produce warnings
      FAILURE (test-simulate-design.R:44:3): Simulate Design works x2
      
      [ FAIL 8 | WARN 0 | SKIP 6 | PASS 482 ]
      Error: Test failures
      Execution halted
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

* Version: 1.0.5
* GitHub: https://github.com/sjspielman/dragon
* Source code: https://github.com/cran/dragon
* Date/Publication: 2020-11-05 17:30:18 UTC
* Number of recursive dependencies: 128

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

* Version: 1.2.1
* GitHub: NA
* Source code: https://github.com/cran/EpiNow2
* Date/Publication: 2020-10-20 14:50:09 UTC
* Number of recursive dependencies: 146

Run `revdep_details(, "EpiNow2")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘EpiSoon’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 107.4Mb
      sub-directories of 1Mb or more:
        help    2.3Mb
        libs  104.8Mb
    ```

# foieGras

<details>

* Version: 0.6-9
* GitHub: https://github.com/ianjonsen/foieGras
* Source code: https://github.com/cran/foieGras
* Date/Publication: 2020-07-22 21:50:02 UTC
* Number of recursive dependencies: 124

Run `revdep_details(, "foieGras")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 38.3Mb
      sub-directories of 1Mb or more:
        libs  37.2Mb
    ```

# forecastML

<details>

* Version: 0.9.0
* GitHub: https://github.com/nredell/forecastML
* Source code: https://github.com/cran/forecastML
* Date/Publication: 2020-05-07 15:10:17 UTC
* Number of recursive dependencies: 99

Run `revdep_details(, "forecastML")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dtplyr’
      All declared Imports should be used.
    ```

# future.tests

<details>

* Version: 0.2.1
* GitHub: https://github.com/HenrikBengtsson/future.tests
* Source code: https://github.com/cran/future.tests
* Date/Publication: 2020-03-20 12:40:05 UTC
* Number of recursive dependencies: 14

Run `revdep_details(, "future.tests")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      72 resolve,....  TRUE          NA      NA    NA        NA     NA
      73 resolve,....    NA          NA      NA    NA        NA     NA
      74 resolved....    NA          NA      NA    NA        NA     NA
      75    rng, seed    NA          NA      NA    NA        NA     NA
      76 rng, see.... FALSE          NA      NA    NA        NA     NA
      77 rng, see....  TRUE          NA      NA    NA        NA     NA
      78 rng, see.... FALSE          NA      NA    NA        NA     NA
      79 rng, see....  TRUE          NA      NA    NA        NA     NA
      80 future, ....    NA          NA      NA    NA        NA  FALSE
      81 future, ....    NA          NA      NA    NA        NA   TRUE
      82 %<-%, stdout    NA          NA      NA    NA        NA  FALSE
      83 %<-%, stdout    NA          NA      NA    NA        NA   TRUE
      84 value, v....    NA          NA      NA    NA        NA     NA
      > 
      > message("Run first three tests ...")
      Run first three tests ...
      > 
      > library(future)
      > results <- run_tests(head(tests, 3L))
      Error: 'identical(plan("list"), state$plan)' is not TRUE
      Execution halted
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

* Version: 1.9.0.0
* GitHub: https://github.com/HughParsonage/grattan
* Source code: https://github.com/cran/grattan
* Date/Publication: 2020-07-13 14:20:06 UTC
* Number of recursive dependencies: 118

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

* Version: 3.0.0
* GitHub: NA
* Source code: https://github.com/cran/gWQS
* Date/Publication: 2020-06-23 13:00:03 UTC
* Number of recursive dependencies: 106

Run `revdep_details(, "gWQS")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

# hackeRnews

<details>

* Version: 0.1.0
* GitHub: https://github.com/szymanskir/hackeRnews
* Source code: https://github.com/cran/hackeRnews
* Date/Publication: 2019-12-13 13:20:05 UTC
* Number of recursive dependencies: 67

Run `revdep_details(, "hackeRnews")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      
      `actual` is a character vector ('Component "by": 1 string mismatch', 'Component "time": Mean absolute difference: 400488278', 'Component "text": 1 string mismatch', 'Component "parent": Mean relative difference: 0.4845361')
      `expected` is a logical vector (TRUE)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test-api.R:84:5): Retrieve top stories function is working correctly
      FAILURE (test-api.R:127:5): Retrieve top stories function is working correctly
      FAILURE (test-api.R:168:5): Retrieve best stories function is working correctly
      FAILURE (test-api.R:195:5): Retrieve latest ask stories function is working correctly
      FAILURE (test-api.R:222:5): Retrieve latest show stories function is working correctly
      FAILURE (test-api.R:249:5): Retrieve latest job stories function is working correctly
      Warning (test-api.R:303:5): Retrieve comments function is working correctly
      FAILURE (test-api.R:314:5): Retrieve comments function is working correctly
      FAILURE (test-api.R:320:5): Empty responses are handled correctly when retrieving items
      FAILURE (test-api.R:326:5): Empty responses are handled correctly when retrieving items
      FAILURE (test-api.R:333:5): Empty responses are handled correctly when retrieving comments
      FAILURE (test-api.R:346:5): Empty responses are handled correctly when retrieving comments
      
      [ FAIL 11 | WARN 1 | SKIP 0 | PASS 16 ]
      Error: Test failures
      Execution halted
    ```

# hal9001

<details>

* Version: 0.2.6
* GitHub: https://github.com/tlverse/hal9001
* Source code: https://github.com/cran/hal9001
* Date/Publication: 2020-06-27 04:50:07 UTC
* Number of recursive dependencies: 94

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
* Number of recursive dependencies: 127

Run `revdep_details(, "infercnv")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    +          ref_title="References (Cells)",
    +          cluster_by_groups=TRUE,
    +          x.center=1,
    +          x.range="auto",
    +          hclust_method='ward.D',
    +          color_safe_pal=FALSE,
    +          output_filename="infercnv",
    +          output_format="png",
    +          png_res=300,
    +          dynamic_resize=0
    +          )
    INFO [2020-11-08 11:04:17] ::plot_cnv:Start
    INFO [2020-11-08 11:04:17] ::plot_cnv:Current data dimensions (r,c)=4613,20 Total=94613.7345076583 Min=0.459691019720342 Max=2.53323815685956.
    INFO [2020-11-08 11:04:17] ::plot_cnv:Depending on the size of the matrix this may take a moment.
    INFO [2020-11-08 11:04:17] plot_cnv(): auto thresholding at: (0.510779 , 1.489221)
    Warning in png(paste(out_dir, paste(output_filename, ".png", sep = ""),  :
      unable to open connection to X11 display ''
    Error in .External2(C_X11, paste0("png::", filename), g$width, g$height,  : 
      unable to start device PNG
    Calls: plot_cnv -> png
    Execution halted
    ```

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

# JointAI

<details>

* Version: 1.0.0
* GitHub: https://github.com/nerler/JointAI
* Source code: https://github.com/cran/JointAI
* Date/Publication: 2020-08-31 06:40:09 UTC
* Number of recursive dependencies: 136

Run `revdep_details(, "JointAI")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    
    $ordinal
       mu_reg_ordinal   tau_reg_ordinal  mu_delta_ordinal tau_delta_ordinal 
                0e+00             1e-04             0e+00             1e-04 
    
    $ranef
    shape_diag_RinvD  rate_diag_RinvD       KinvD_expr 
              "0.01"          "0.001"   "nranef + 1.0" 
    
    $surv
     mu_reg_surv tau_reg_surv 
           0.000        0.001 
    
    > 
    > # To change the hyper-parameters:
    > hyp <- default_hyperpars()
    > hyp$norm['rate_tau_norm'] <- 1e-3
    > mod <- lm_imp(y ~ C1 + C2 + B1, data = wideDF, hyperpars = hyp, mess = FALSE)
    Error in { : task 1 failed - "n.iter must be a positive integer"
    Calls: lm_imp ... <Anonymous> -> run_jags -> <Anonymous> -> <Anonymous>
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘mathjaxr’
      All declared Imports should be used.
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

*   checking tests ...
    ```
    ...
      Warning (test-sensor_tracking.R:55:3): sensor_tracking works with a LAScatalog
      Warning (test-sensor_tracking.R:55:3): sensor_tracking works with a LAScatalog
      Warning (test-sensor_tracking.R:55:3): sensor_tracking works with a LAScatalog
      Warning (test-tree_detection.R:52:3): tree_detection LMF works with a LAScatalog
      Warning (test-tree_detection.R:52:3): tree_detection LMF works with a LAScatalog
      Warning (test-tree_detection.R:52:3): tree_detection LMF works with a LAScatalog
      Warning (test-tree_detection.R:52:3): tree_detection LMF works with a LAScatalog
      Warning (test-tree_hulls.R:48:3): tree_hulls works with a custom metrics
      Warning (test-tree_hulls.R:48:3): tree_hulls works with a custom metrics
      Warning (test-tree_metrics.R:29:3): tree_metrics works with a LAScatalog
      Warning (test-tree_metrics.R:29:3): tree_metrics works with a LAScatalog
      Warning (test-tree_metrics.R:29:3): tree_metrics works with a LAScatalog
      Warning (test-tree_metrics.R:29:3): tree_metrics works with a LAScatalog
      Warning (test-tree_metrics.R:36:3): tree_metrics works with a LAScatalog
      Warning (test-tree_metrics.R:36:3): tree_metrics works with a LAScatalog
      Warning (test-tree_metrics.R:36:3): tree_metrics works with a LAScatalog
      Warning (test-tree_metrics.R:36:3): tree_metrics works with a LAScatalog
      
      [ FAIL 1 | WARN 285 | SKIP 0 | PASS 1166 ]
      Error: Test failures
      Execution halted
    ```

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
* Number of recursive dependencies: 87

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

# metagam

<details>

* Version: 0.1.2
* GitHub: https://github.com/Lifebrain/metagam
* Source code: https://github.com/cran/metagam
* Date/Publication: 2020-06-22 18:30:03 UTC
* Number of recursive dependencies: 148

Run `revdep_details(, "metagam")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > 
    > ## Create 5 datasets
    > set.seed(1234)
    > datasets <- lapply(1:5, function(x) gamSim(scale = 5, verbose = FALSE))
    > 
    > ## Fit a GAM in each dataset, then use strip_rawdata() to remove
    > ## individual participant data
    > models <- lapply(datasets, function(dat){
    +   ## This uses the gam() function from mgcv
    +   model <- gam(y ~ s(x0, bs = "cr") + s(x1, bs = "cr") + s(x2, bs = "cr"), data = dat)
    +   ## This uses strip_rawdata() from metagam
    +   strip_rawdata(model)
    + })
    > 
    > ## Next, we meta-analyze the models.
    > ## It is often most convenient to analyze a single term at a time. We focus on s(x1).
    > meta_analysis <- metagam(models, terms = "s(x1)", grid_size = 30)
    Error in UseMethod("predict") : 
      no applicable method for 'predict' applied to an object of class "c('rma.uni', 'rma')"
    Calls: metagam ... resolve.list -> signalConditionsASAP -> signalConditions
    Execution halted
    ```

*   checking tests ...
    ```
    ...
           █
        1. └─metagam::metagam(fits, grid_size = 10) test-metagam.R:15:2
        2.   ├─dplyr::bind_cols(...)
        3.   │ └─rlang::list2(...)
        4.   └─furrr::future_map_dfr(...)
        5.     └─furrr::future_map(...)
        6.       └─furrr:::furrr_map_template(...)
        7.         └─furrr:::furrr_template(...)
        8.           ├─future::value(futures)
        9.           └─future:::value.list(futures)
       10.             ├─future::resolve(...)
       11.             └─future:::resolve.list(...)
       12.               └─future:::signalConditionsASAP(obj, resignal = FALSE, pos = ii)
       13.                 └─future:::signalConditions(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-metagam.R:15:3): metagam works
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 48 ]
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
      ── ERROR (test-methyvim.R:22:1): (code run outside of `test_that()`) ───────────
      Error: 'names' attribute [8] must be the same length as the vector [1]
      Backtrace:
          █
       1. ├─base::suppressWarnings(...) test-methyvim.R:22:0
       2. │ └─base::withCallingHandlers(...)
       3. └─methyvim::methyvim(...)
       4.   ├─base::`colnames<-`(...)
       5.   └─base::`colnames<-`(...)
      
      ── Warning (test-set_parallel.R:9:3): registers BiocParallel::DoparParam by defa
      Strategy 'multiprocess' is deprecated in future (>= 1.20.0). Instead, explicitly specify either 'multisession' or 'multicore'. In the current R session, 'multiprocess' equals 'multicore'.
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test-cluster_sites.R:4:1): (code run outside of `test_that()`)
      ERROR (test-methyvim.R:22:1): (code run outside of `test_that()`)
      Warning (test-set_parallel.R:9:3): registers BiocParallel::DoparParam by default for parallel=TRUE
      
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

*   checking running R code from vignettes ...
    ```
      ‘MineICA.Rnw’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘MineICA.Rnw’
      ...
    [1] "Comp 1"
    Scale for 'x' is already present. Adding another scale for 'x', which will
    replace the existing scale.
    Warning: `axis.ticks.margin` is deprecated. Please set `margin` property of `axis.text` instead
    Warning in grDevices::png(..., res = dpi, units = "in") :
      unable to open connection to X11 display ''
    
      When sourcing ‘MineICA.R’:
    Error: task 1 failed - "unable to start device PNG"
    Execution halted
    ```

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
* Number of recursive dependencies: 87

Run `revdep_details(, "origami")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘glmnet’
    ```

# pavo

<details>

* Version: 2.4.0
* GitHub: https://github.com/rmaia/pavo
* Source code: https://github.com/cran/pavo
* Date/Publication: 2020-02-08 16:20:08 UTC
* Number of recursive dependencies: 100

Run `revdep_details(, "pavo")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      FAILURE (test-images.R:104:3): classify
      Warning (test-images.R:123:3): classify
      Warning (test-images.R:123:3): classify
      Warning (test-images.R:151:3): classify
      Warning (test-images.R:151:3): classify
      Warning (test-images.R:196:3): adjacency
      Warning (test-images.R:197:3): adjacency
      Warning (test-images.R:216:3): adjacency
      Warning (test-images.R:216:3): adjacency
      Warning (test-images.R:227:3): adjacency
      Warning (test-images.R:252:3): adjacency
      Warning (test-images.R:274:3): adjacency
      Warning (test-images.R:288:3): summary
      Warning (test-images.R:290:3): summary
      Warning (test-images.R:290:3): summary
      FAILURE (test-images.R:293:3): summary
      Warning (test-processing.R:58:3): Aggregation
      
      [ FAIL 2 | WARN 1054 | SKIP 5 | PASS 344 ]
      Error: Test failures
      Execution halted
    ```

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
* Number of recursive dependencies: 122

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
* Number of recursive dependencies: 45

Run `revdep_details(, "phylolm")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘geiger’, ‘caper’
    ```

# plumber

<details>

* Version: 1.0.0
* GitHub: https://github.com/rstudio/plumber
* Source code: https://github.com/cran/plumber
* Date/Publication: 2020-09-14 21:40:02 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "plumber")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      Warning (???): accessing two images created using promises does not create an error
      FAILURE (test-async.R:356:3): accessing two images created using promises does not create an error
      Warning (???): accessing two images created using promises does not create an error
      FAILURE (test-async.R:361:3): accessing two images created using promises does not create an error
      FAILURE (test-async.R:393:3): accessing two images created using promises does not create an error
      FAILURE (test-async.R:395:3): accessing two images created using promises does not create an error
      FAILURE (test-async.R:396:3): accessing two images created using promises does not create an error
      FAILURE (test-async.R:398:3): accessing two images created using promises does not create an error
      FAILURE (test-async.R:400:3): accessing two images created using promises does not create an error
      FAILURE (test-async.R:401:3): accessing two images created using promises does not create an error
      FAILURE (test-async.R:404:3): accessing two images created using promises does not create an error
      Warning (test-endpoint-aroundexec.R:137:3): not producing an image produces an error
      FAILURE (test-endpoint-aroundexec.R:137:3): not producing an image produces an error
      FAILURE (test-endpoint-aroundexec.R:142:3): not producing an image produces an error
      Warning (test-zzz-plumb_api.R:64:3): all example plumber apis plumb
      Warning (test-zzzz-include.R:29:5): Includes work
      FAILURE (test-zzzz-include.R:30:5): Includes work
      
      [ FAIL 12 | WARN 5 | SKIP 12 | PASS 1842 ]
      Error: Test failures
      Execution halted
    ```

# promises

<details>

* Version: 1.1.1
* GitHub: https://github.com/rstudio/promises
* Source code: https://github.com/cran/promises
* Date/Publication: 2020-06-09 21:50:02 UTC
* Number of recursive dependencies: 55

Run `revdep_details(, "promises")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘purrr’
    ```

# Prostar

<details>

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 281

Run `revdep_details(, "Prostar")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required and available but unsuitable version: ‘DAPAR’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# PSCBS

<details>

* Version: 0.65.0
* GitHub: https://github.com/HenrikBengtsson/PSCBS
* Source code: https://github.com/cran/PSCBS
* Date/Publication: 2019-05-05 22:40:09 UTC
* Number of recursive dependencies: 90

Run `revdep_details(, "PSCBS")` for more info

</details>

## In both

*   checking running R code from vignettes ...
    ```
    ...
    Warning in png("figures/PairedPSCBS,exData,chr01,CBS,tracks.png", width = 840,  :
      unable to open connection to X11 display ''
    
      When sourcing ‘CBS.R’:
    Error: unable to start device PNG
    Execution halted
    Error in unserialize(node$con) : error reading from connection
    Calls: workRSOCK ... doTryCatch -> recvData -> recvData.SOCKnode -> unserialize
    Execution halted
    when running code in ‘PairedPSCBS.tex.rsp’
      ...
    +     })
    Warning in png("figures/PairedPSCBS,exData,chr01,PairedPSCBS,tracks.png",  :
      unable to open connection to X11 display ''
    
      When sourcing ‘PairedPSCBS.R’:
    Error: unable to start device PNG
    Execution halted
    Error in unserialize(node$con) : error reading from connection
    Calls: workRSOCK ... doTryCatch -> recvData -> recvData.SOCKnode -> unserialize
    Execution halted
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

*   checking running R code from vignettes ...
    ```
      ‘QDNAseq.Rnw’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘QDNAseq.Rnw’
      ...
    experimentData: use 'experimentData(object)'
    Annotation:  
    
    > png("rawprofile.png")
    Warning in png("rawprofile.png") :
      unable to open connection to X11 display ''
    
      When sourcing ‘QDNAseq.R’:
    Error: unable to start device PNG
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# rBiasCorrection

<details>

* Version: 0.2.3
* GitHub: https://github.com/kapsner/rBiasCorrection
* Source code: https://github.com/cran/rBiasCorrection
* Date/Publication: 2020-09-23 04:50:02 UTC
* Number of recursive dependencies: 134

Run `revdep_details(, "rBiasCorrection")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > 
    > gdat <- rBiasCorrection::example._plot.df_agg
    > 
    > coef_h <- rBiasCorrection::example._plot_coef_h
    > coef_c <- rBiasCorrection::example._plot_coef_c
    > 
    > create_exampleplot(
    +   data = gdat,
    +   coef_hyper = coef_h,
    +   coef_cubic = coef_c,
    +   plot_height = 5,
    +   plot_width = 7.5,
    +   plot_textsize = 1,
    +   filename = paste0(tempdir(), "/exampleplot.png")
    + )
    Warning in grDevices::png(..., res = dpi, units = "in") :
      unable to open connection to X11 display ''
    Error in .External2(C_X11, paste0("png::", filename), g$width, g$height,  : 
      unable to start device PNG
    Calls: create_exampleplot -> <Anonymous> -> dev -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      Warning (test-algorithm_minmax_TRUE.R:340:5): algorithm test, type 1, minmax = TRUE selection_method = RelError
      Warning (test-algorithm_minmax_TRUE.R:340:5): algorithm test, type 1, minmax = TRUE selection_method = RelError
      Warning (test-algorithm_minmax_TRUE.R:351:5): algorithm test, type 1, minmax = TRUE selection_method = RelError
      Warning (test-algorithm_minmax_TRUE.R:351:5): algorithm test, type 1, minmax = TRUE selection_method = RelError
      Warning (test-algorithm_minmax_TRUE.R:384:5): algorithm test, type 1, minmax = TRUE selection_method = RelError
      Warning (test-algorithm_minmax_TRUE.R:384:5): algorithm test, type 1, minmax = TRUE selection_method = RelError
      Warning (test-algorithm_minmax_TRUE.R:420:5): algorithm test, type 1, minmax = TRUE selection_method = RelError
      Warning (test-algorithm_minmax_TRUE.R:420:5): algorithm test, type 1, minmax = TRUE selection_method = RelError
      Warning (test-biascorrection.R:15:3): correct functioning of BiasCorrection, data type 1
      Warning (test-biascorrection.R:15:3): correct functioning of BiasCorrection, data type 1
      ERROR (test-biascorrection.R:15:3): correct functioning of BiasCorrection, data type 1
      Warning (test-plotting.R:63:5): plotting_utility
      ERROR (test-plotting.R:63:5): plotting_utility
      Warning (test-plotting.R:178:6): createbarerrorplots
      ERROR (test-plotting.R:178:6): createbarerrorplots
      Warning (test-plotting.R:227:5): create_exampleplot
      ERROR (test-plotting.R:227:5): create_exampleplot
      
      [ FAIL 4 | WARN 37 | SKIP 2 | PASS 181 ]
      Error: Test failures
      Execution halted
    ```

# regmedint

<details>

* Version: 0.1.0
* GitHub: https://github.com/kaz-yos/regmedint
* Source code: https://github.com/cran/regmedint
* Date/Publication: 2020-05-11 11:00:02 UTC
* Number of recursive dependencies: 111

Run `revdep_details(, "regmedint")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Deriv’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    fit_mreg: no visible global function definition for ‘as.formula’
    fit_yreg: no visible global function definition for ‘as.formula’
    Undefined global functions or variables:
      as.formula
    Consider adding
      importFrom("stats", "as.formula")
    to your NAMESPACE file.
    ```

# robotstxt

<details>

* Version: 0.7.13
* GitHub: https://github.com/ropensci/robotstxt
* Source code: https://github.com/cran/robotstxt
* Date/Publication: 2020-09-03 19:30:02 UTC
* Number of recursive dependencies: 67

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
* Number of recursive dependencies: 78

Run `revdep_details(, "sapfluxnetr")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# sctransform

<details>

* Version: 0.3.1
* GitHub: https://github.com/ChristophH/sctransform
* Source code: https://github.com/cran/sctransform
* Date/Publication: 2020-10-08 12:00:02 UTC
* Number of recursive dependencies: 71

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
* Number of recursive dependencies: 112

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

* Version: 3.2.2
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2020-09-26 04:30:12 UTC
* Number of recursive dependencies: 230

Run `revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘loomR’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.1Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        libs   9.1Mb
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
* Number of recursive dependencies: 102

Run `revdep_details(, "shiny")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test-mock-session.R:89:3): renderImage supported
      ERROR (test-mock-session.R:89:3): renderImage supported
      Warning (test-plot-coordmap.R:23:3): ggplot coordmap
      ERROR (test-plot-coordmap.R:23:3): ggplot coordmap
      Warning (test-plot-coordmap.R:85:3): ggplot coordmap with facet_wrap
      ERROR (test-plot-coordmap.R:85:3): ggplot coordmap with facet_wrap
      Warning (test-plot-coordmap.R:134:3): ggplot coordmap with facet_grid
      ERROR (test-plot-coordmap.R:134:3): ggplot coordmap with facet_grid
      Warning (test-plot-coordmap.R:219:3): ggplot coordmap with 2D facet_grid
      ERROR (test-plot-coordmap.R:219:3): ggplot coordmap with 2D facet_grid
      Warning (test-plot-coordmap.R:269:3): ggplot coordmap with various data types
      ERROR (test-plot-coordmap.R:269:3): ggplot coordmap with various data types
      Warning (test-plot-coordmap.R:323:3): ggplot coordmap with various scales and coords
      ERROR (test-plot-coordmap.R:323:3): ggplot coordmap with various scales and coords
      Warning (test-plot-coordmap.R:381:3): ggplot coordmap maintains discrete limits
      ERROR (test-plot-coordmap.R:381:3): ggplot coordmap maintains discrete limits
      
      [ FAIL 8 | WARN 8 | SKIP 7 | PASS 1012 ]
      Error: Test failures
      Execution halted
    ```

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

* Version: 1.0.19
* GitHub: https://github.com/ShixiangWang/sigminer
* Source code: https://github.com/cran/sigminer
* Date/Publication: 2020-09-28 07:30:03 UTC
* Number of recursive dependencies: 197

Run `revdep_details(, "sigminer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.5Mb
      sub-directories of 1Mb or more:
        extdata   3.7Mb
    ```

# Signac

<details>

* Version: 1.1.0
* GitHub: https://github.com/timoast/signac
* Source code: https://github.com/cran/Signac
* Date/Publication: 2020-11-07 00:20:14 UTC
* Number of recursive dependencies: 233

Run `revdep_details(, "Signac")` for more info

</details>

## In both

*   R CMD check timed out
    

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
* Number of recursive dependencies: 137

Run `revdep_details(, "skpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 41.4Mb
      sub-directories of 1Mb or more:
        libs  39.9Mb
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
* Number of recursive dependencies: 137

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

# spatialwarnings

<details>

* Version: 2.0.0
* GitHub: https://github.com/spatial-ews/spatialwarnings
* Source code: https://github.com/cran/spatialwarnings
* Date/Publication: 2020-05-14 17:10:06 UTC
* Number of recursive dependencies: 82

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
* Number of recursive dependencies: 136

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
* Number of recursive dependencies: 72

Run `revdep_details(, "steps")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
          █
       1. ├─testthat::expect_true(...) test_simulation_results_class.R:302:2
       2. │ └─testthat::quasi_label(enquo(object), label, arg = "object")
       3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
       4. ├─base::inherits(...)
       5. └─steps::simulation(...)
       6.   └─base::tryCatch(...)
       7.     └─base:::tryCatchList(expr, classes, parentenv, handlers)
       8.       └─base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])
       9.         └─value[[3L]](cond)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test_simulation_results_class.R:277:3): simulation_results classes work
      Warning (test_simulation_results_class.R:283:3): simulation_results classes work
      Warning (test_simulation_results_class.R:290:3): simulation_results classes work
      Warning (test_simulation_results_class.R:296:3): simulation_results classes work
      ERROR (test_simulation_results_class.R:302:3): simulation_results classes work
      
      [ FAIL 1 | WARN 4 | SKIP 0 | PASS 15 ]
      Error: Test failures
      Execution halted
    ```

# tableschema.r

<details>

* Version: 1.1.1
* GitHub: https://github.com/frictionlessdata/tableschema-r
* Source code: https://github.com/cran/tableschema.r
* Date/Publication: 2020-03-12 12:40:02 UTC
* Number of recursive dependencies: 68

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
* Number of recursive dependencies: 140

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
* Number of recursive dependencies: 100

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

