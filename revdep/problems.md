# AIPW

<details>

* Version: 0.6.3.2
* GitHub: https://github.com/yqzhong7/AIPW
* Source code: https://github.com/cran/AIPW
* Date/Publication: 2021-06-11 09:30:02 UTC
* Number of recursive dependencies: 100

Run `revdep_details(, "AIPW")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rsolnp’ ‘SuperLearner’ ‘future.apply’ ‘ggplot2’ ‘progressr’ ‘stats’
      ‘utils’
      All declared Imports should be used.
    ```

# AlpsNMR

<details>

* Version: 4.0.2
* GitHub: https://github.com/sipss/AlpsNMR
* Source code: https://github.com/cran/AlpsNMR
* Date/Publication: 2022-11-10
* Number of recursive dependencies: 169

Run `revdep_details(, "AlpsNMR")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘AlpsNMR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: models_stability_plot_plsda
    > ### Title: Models stability plot
    > ### Aliases: models_stability_plot_plsda
    > 
    > ### ** Examples
    > 
    > # Data analysis for a table of integrated peaks
    ...
     18.   └─vctrs::vec_default_cast(...)
     19.     ├─base::withRestarts(...)
     20.     │ └─base (local) withOneRestart(expr, restarts[[1L]])
     21.     │   └─base (local) doWithOneRestart(return(expr), restart)
     22.     └─vctrs::stop_incompatible_cast(...)
     23.       └─vctrs::stop_incompatible_type(...)
     24.         └─vctrs:::stop_incompatible(...)
     25.           └─vctrs:::stop_vctrs(...)
     26.             └─rlang::abort(message, class = c(class, "vctrs_error"), ..., call = vctrs_error_call(call))
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(AlpsNMR)
      Loading required package: future
      
      Attaching package: 'AlpsNMR'
      
    ...
          still_improving = dplyr::cumall(.data$auc_diff_above_thres), 
          good_ncomp = (.data$still_improving == TRUE & dplyr::lead(.data$still_improving, 
              default = FALSE) == FALSE))`: ℹ In argument: `good_ncomp = (...)`.
      ℹ In group 2: `cv_outer_iteration = 1`, `cv_inner_iteration = 2`.
      Caused by error in `vec_c()`:
      ! Can't convert `..2` <logical> to <vctrs_unspecified>.
      
      [ FAIL 1 | WARN 2 | SKIP 1 | PASS 90 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘Vig01-introduction-to-alpsnmr.Rmd’ using rmarkdown
    Warning in has_utility("pdfcrop") :
      pdfcrop not installed or not in PATH
    sh: pdfcrop: command not found
    Warning in system2("pdfcrop", shQuote(c(x, x)), stdout = if (quiet) FALSE else "") :
      error in running command
    sh: pdfcrop: command not found
    Warning in system2("pdfcrop", shQuote(c(x, x)), stdout = if (quiet) FALSE else "") :
      error in running command
    ...
    Warning: (fancyhdr)                \setlength{\headheight}{46.27916pt}.
    Warning: (fancyhdr)                You might also make \topmargin smaller to compensate:
    Warning: (fancyhdr)                \addtolength{\topmargin}{-3.60004pt}.
    --- finished re-building ‘Vig02-handling-metadata-and-annotations.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Vig01b-introduction-to-alpsnmr-old-api.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# aroma.core

<details>

* Version: 3.3.0
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2022-11-15 18:30:13 UTC
* Number of recursive dependencies: 71

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

* Version: 2.3.4
* GitHub: https://github.com/c7rishi/BAMBI
* Source code: https://github.com/cran/BAMBI
* Date/Publication: 2022-09-02 15:10:05 UTC
* Number of recursive dependencies: 51

Run `revdep_details(, "BAMBI")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        libs   6.7Mb
    ```

# baseballr

<details>

* Version: 1.3.0
* GitHub: https://github.com/BillPetti/baseballr
* Source code: https://github.com/cran/baseballr
* Date/Publication: 2022-09-09 07:52:55 UTC
* Number of recursive dependencies: 118

Run `revdep_details(, "baseballr")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘baseballr.Rmd’ using rmarkdown
    --- finished re-building ‘baseballr.Rmd’
    
    --- re-building ‘ncaa_scraping.Rmd’ using rmarkdown
    Quitting from lines 30-34 (ncaa_scraping.Rmd) 
    Error: processing vignette 'ncaa_scraping.Rmd' failed with diagnostics:
    no applicable method for 'select' applied to an object of class "function"
    --- failed re-building ‘ncaa_scraping.Rmd’
    
    ...
    Quitting from lines 38-40 (using_statcast_pitch_data.Rmd) 
    Error: processing vignette 'using_statcast_pitch_data.Rmd' failed with diagnostics:
    HTTP error 404.
    --- failed re-building ‘using_statcast_pitch_data.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘ncaa_scraping.Rmd’ ‘using_statcast_pitch_data.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# batchtools

<details>

* Version: 0.9.16
* GitHub: https://github.com/mllg/batchtools
* Source code: https://github.com/cran/batchtools
* Date/Publication: 2023-02-03 13:52:38 UTC
* Number of recursive dependencies: 82

Run `revdep_details(, "batchtools")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘doMPI’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Rmpi’
    ```

# BEKKs

<details>

* Version: 1.4.1
* GitHub: NA
* Source code: https://github.com/cran/BEKKs
* Date/Publication: 2022-12-18 16:40:14 UTC
* Number of recursive dependencies: 99

Run `revdep_details(, "BEKKs")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 18.4Mb
      sub-directories of 1Mb or more:
        libs  17.5Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘forecast’
      All declared Imports should be used.
    ```

# bigDM

<details>

* Version: 0.5.0
* GitHub: https://github.com/spatialstatisticsupna/bigDM
* Source code: https://github.com/cran/bigDM
* Date/Publication: 2022-10-28 11:47:44 UTC
* Number of recursive dependencies: 125

Run `revdep_details(, "bigDM")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘INLA’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 940 marked Latin-1 strings
    ```

# bistablehistory

<details>

* Version: 1.1.1
* GitHub: https://github.com/alexander-pastukhov/bistablehistory
* Source code: https://github.com/cran/bistablehistory
* Date/Publication: 2022-03-22 13:40:02 UTC
* Number of recursive dependencies: 91

Run `revdep_details(, "bistablehistory")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 50.3Mb
      sub-directories of 1Mb or more:
        libs  49.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RcppParallel’ ‘magrittr’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# blavaan

<details>

* Version: 0.4-3
* GitHub: NA
* Source code: https://github.com/cran/blavaan
* Date/Publication: 2022-05-11 17:00:05 UTC
* Number of recursive dependencies: 99

Run `revdep_details(, "blavaan")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 87.4Mb
      sub-directories of 1Mb or more:
        libs  85.5Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# blockCV

<details>

* Version: 3.0-0
* GitHub: https://github.com/rvalavi/blockCV
* Source code: https://github.com/cran/blockCV
* Date/Publication: 2023-02-06 11:42:35 UTC
* Number of recursive dependencies: 131

Run `revdep_details(, "blockCV")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
        |================================================================      |  92%
        |                                                                            
        |=================================================================     |  92%
        |                                                                            
        |=================================================================     |  93%
        |                                                                            
    ...
      Error in `sf::st_distance(rx, x[x_1s, ])`: st_crs(x) == st_crs(y) is not TRUE
      Backtrace:
          ▆
       1. └─blockCV::cv_nndm(...) at test-cv_nndm.R:71:12
       2.   └─sf::st_distance(rx, x[x_1s, ])
       3.     └─base::stopifnot(st_crs(x) == st_crs(y))
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 306 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        doc       3.6Mb
        extdata   1.8Mb
        libs      1.2Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘biomod2’
    ```

# brms

<details>

* Version: 2.18.0
* GitHub: https://github.com/paul-buerkner/brms
* Source code: https://github.com/cran/brms
* Date/Publication: 2022-09-19 13:56:19 UTC
* Number of recursive dependencies: 175

Run `revdep_details(, "brms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        R     3.0Mb
        doc   3.6Mb
    ```

# ChromSCape

<details>

* Version: 1.8.0
* GitHub: https://github.com/vallotlab/ChromSCape
* Source code: https://github.com/cran/ChromSCape
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 227

Run `revdep_details(, "ChromSCape")` for more info

</details>

## In both

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        data   1.4Mb
        doc    2.9Mb
        www    2.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    bams_to_matrix_indexes: no visible binding for global variable
      ‘files_dir_list’
    enrich_TF_ChEA3_genes: no visible binding for global variable
      ‘CheA3_TF_nTargets’
    filter_correlated_cell_scExp: no visible binding for global variable
      ‘run_tsne’
    generate_analysis: no visible binding for global variable ‘k’
    generate_analysis: no visible binding for global variable
      ‘clusterConsensus’
    get_most_variable_cyto: no visible binding for global variable
    ...
    plot_top_TF_scExp: no visible binding for global variable ‘TF’
    rebin_matrix: no visible binding for global variable ‘new_row’
    rebin_matrix: no visible binding for global variable ‘origin_value’
    subset_bam_call_peaks: no visible binding for global variable
      ‘merged_bam’
    Undefined global functions or variables:
      CheA3_TF_nTargets Component Fri_cyto Gain_or_Loss Gene TF V1 V2
      absolute_value cluster clusterConsensus cytoBand files_dir_list genes
      group k merged_bam molecule ncells new_row orientation origin_value
      percent_active run_tsne sample_id total_counts
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: raw_counts_to_sparse_matrix.Rd:6-8: Dropping empty section \source
    ```

# civis

<details>

* Version: 3.0.0
* GitHub: https://github.com/civisanalytics/civis-r
* Source code: https://github.com/cran/civis
* Date/Publication: 2020-06-22 18:00:02 UTC
* Number of recursive dependencies: 88

Run `revdep_details(, "civis")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# codebook

<details>

* Version: 0.9.2
* GitHub: https://github.com/rubenarslan/codebook
* Source code: https://github.com/cran/codebook
* Date/Publication: 2020-06-06 23:40:03 UTC
* Number of recursive dependencies: 154

Run `revdep_details(, "codebook")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘userfriendlyscience’
    ```

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

* Version: 0.5.0
* GitHub: https://github.com/M-E-Rademaker/cSEM
* Source code: https://github.com/cran/cSEM
* Date/Publication: 2022-11-24 17:50:05 UTC
* Number of recursive dependencies: 127

Run `revdep_details(, "cSEM")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rdpack’
      All declared Imports should be used.
    ```

# CSGo

<details>

* Version: 0.6.7
* GitHub: https://github.com/adsoncostanzifilho/CSGo
* Source code: https://github.com/cran/CSGo
* Date/Publication: 2021-05-07 18:50:02 UTC
* Number of recursive dependencies: 76

Run `revdep_details(, "CSGo")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘extrafont’ ‘future’
      All declared Imports should be used.
    ```

# DeclareDesign

<details>

* Version: 1.0.2
* GitHub: https://github.com/DeclareDesign/DeclareDesign
* Source code: https://github.com/cran/DeclareDesign
* Date/Publication: 2023-01-10 07:13:10 UTC
* Number of recursive dependencies: 134

Run `revdep_details(, "DeclareDesign")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘DesignLibrary’
    ```

# dipsaus

<details>

* Version: 0.2.6
* GitHub: https://github.com/dipterix/dipsaus
* Source code: https://github.com/cran/dipsaus
* Date/Publication: 2023-01-21 12:30:02 UTC
* Number of recursive dependencies: 69

Run `revdep_details(, "dipsaus")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        doc    1.1Mb
        libs   3.3Mb
    ```

# dispositionEffect

<details>

* Version: 1.0.1
* GitHub: https://github.com/marcozanotti/dispositionEffect
* Source code: https://github.com/cran/dispositionEffect
* Date/Publication: 2022-05-30 07:50:02 UTC
* Number of recursive dependencies: 135

Run `revdep_details(, "dispositionEffect")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      ── Failure ('test-realized_duration.R:113'): realized_duration works (realized_only = TRUE) ──
      realized_duration(...) not equal to c(...).
      1/4 mismatches
      [2] 34 - 28 == 6
      ── Failure ('test-realized_duration.R:116'): realized_duration works (realized_only = TRUE) ──
      realized_duration(...) not equal to c(...).
    ...
      1/4 mismatches
      [2] 34 - 28 == 6
      ── Failure ('test-realized_duration.R:161'): realized_duration works (realized_only = TRUE) ──
      realized_duration(...) not equal to c(...).
      1/4 mismatches
      [1] 34 - 28 == 6
      
      [ FAIL 36 | WARN 1 | SKIP 0 | PASS 331 ]
      Error: Test failures
      Execution halted
    ```

# dragon

<details>

* Version: 1.2.1
* GitHub: https://github.com/sjspielman/dragon
* Source code: https://github.com/cran/dragon
* Date/Publication: 2022-04-08 08:42:33 UTC
* Number of recursive dependencies: 140

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

* Version: 0.4.4
* GitHub: https://github.com/mdsteiner/EFAtools
* Source code: https://github.com/cran/EFAtools
* Date/Publication: 2023-01-06 14:50:40 UTC
* Number of recursive dependencies: 92

Run `revdep_details(, "EFAtools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        libs   6.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘progress’
      All declared Imports should be used.
    ```

# envi

<details>

* Version: 0.1.17
* GitHub: https://github.com/lance-waller-lab/envi
* Source code: https://github.com/cran/envi
* Date/Publication: 2023-02-02 00:40:02 UTC
* Number of recursive dependencies: 153

Run `revdep_details(, "envi")` for more info

</details>

## In both

*   checking whether package ‘envi’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/future/revdep/checks/envi/new/envi.Rcheck/00install.out’ for details.
    ```

# epitweetr

<details>

* Version: 2.2.13
* GitHub: https://github.com/EU-ECDC/epitweetr
* Source code: https://github.com/cran/epitweetr
* Date/Publication: 2022-12-01 00:40:03 UTC
* Number of recursive dependencies: 146

Run `revdep_details(, "epitweetr")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘taskscheduleR’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘httpuv’ ‘knitr’ ‘plyr’ ‘rgdal’ ‘tidyverse’ ‘tokenizers’ ‘xml2’
      All declared Imports should be used.
    ```

# fect

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/fect
* Date/Publication: 2022-10-14 09:52:32 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "fect")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.9Mb
      sub-directories of 1Mb or more:
        libs  12.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘panelView’
      All declared Imports should be used.
    ```

# flowGraph

<details>

* Version: 1.6.0
* GitHub: https://github.com/aya49/flowGraph
* Source code: https://github.com/cran/flowGraph
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 92

Run `revdep_details(, "flowGraph")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    get_child: no visible binding for global variable ‘no_cores’
    get_paren: no visible binding for global variable ‘no_cores’
    ms_psig: no visible binding for global variable ‘meta’
    Undefined global functions or variables:
      meta no_cores
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘doParallel’
    ```

# foieGras

<details>

* Version: 0.7-6
* GitHub: https://github.com/ianjonsen/foieGras
* Source code: https://github.com/cran/foieGras
* Date/Publication: 2021-04-26 22:10:07 UTC
* Number of recursive dependencies: 140

Run `revdep_details(, "foieGras")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 49.9Mb
      sub-directories of 1Mb or more:
        libs  49.0Mb
    ```

# forecastML

<details>

* Version: 0.9.0
* GitHub: https://github.com/nredell/forecastML
* Source code: https://github.com/cran/forecastML
* Date/Publication: 2020-05-07 15:10:17 UTC
* Number of recursive dependencies: 102

Run `revdep_details(, "forecastML")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dtplyr’
      All declared Imports should be used.
    ```

# geocmeans

<details>

* Version: 0.3.3
* GitHub: https://github.com/JeremyGelb/geocmeans
* Source code: https://github.com/cran/geocmeans
* Date/Publication: 2023-02-07 01:02:31 UTC
* Number of recursive dependencies: 197

Run `revdep_details(, "geocmeans")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.6Mb
      sub-directories of 1Mb or more:
        doc       1.7Mb
        extdata   3.0Mb
        libs      8.2Mb
    ```

# googleComputeEngineR

<details>

* Version: 0.3.0
* GitHub: https://github.com/cloudyr/googleComputeEngineR
* Source code: https://github.com/cran/googleComputeEngineR
* Date/Publication: 2019-05-04 22:40:02 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "googleComputeEngineR")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# googleTagManageR

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/googleTagManageR
* Date/Publication: 2022-04-16 18:12:29 UTC
* Number of recursive dependencies: 70

Run `revdep_details(, "googleTagManageR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘assertthat’ ‘future’ ‘httr’
      All declared Imports should be used.
    ```

# greed

<details>

* Version: 0.6.1
* GitHub: https://github.com/comeetie/greed
* Source code: https://github.com/cran/greed
* Date/Publication: 2022-10-03 22:00:05 UTC
* Number of recursive dependencies: 96

Run `revdep_details(, "greed")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 36.8Mb
      sub-directories of 1Mb or more:
        libs  34.6Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 989 marked UTF-8 strings
    ```

# gsynth

<details>

* Version: 1.2.1
* GitHub: NA
* Source code: https://github.com/cran/gsynth
* Date/Publication: 2021-08-06 07:50:05 UTC
* Number of recursive dependencies: 65

Run `revdep_details(, "gsynth")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   4.9Mb
    ```

# gWQS

<details>

* Version: 3.0.4
* GitHub: NA
* Source code: https://github.com/cran/gWQS
* Date/Publication: 2021-05-20 09:30:02 UTC
* Number of recursive dependencies: 103

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
* Number of recursive dependencies: 69

Run `revdep_details(, "hackeRnews")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘hackeRnews-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_best_stories
    > ### Title: Hacker News best stories
    > ### Aliases: get_best_stories
    > 
    > ### ** Examples
    > 
    > # get the best story on Hacker News
    > best_story <- get_best_stories(max_items = 1)
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Received HTTP code 503 from proxy after CONNECT
    Calls: get_best_stories ... request_fetch -> request_fetch.write_memory -> <Anonymous>
    Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘hackeRnews-specs.Rmd’ using rmarkdown
    Quitting from lines 43-45 (hackeRnews-specs.Rmd) 
    Error: processing vignette 'hackeRnews-specs.Rmd' failed with diagnostics:
    Received HTTP code 503 from proxy after CONNECT
    --- failed re-building ‘hackeRnews-specs.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘hackeRnews-specs.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# hal9001

<details>

* Version: 0.4.3
* GitHub: https://github.com/tlverse/hal9001
* Source code: https://github.com/cran/hal9001
* Date/Publication: 2022-02-09 22:50:02 UTC
* Number of recursive dependencies: 98

Run `revdep_details(, "hal9001")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        libs   7.2Mb
    ```

# hwep

<details>

* Version: 2.0.0
* GitHub: https://github.com/dcgerard/hwep
* Source code: https://github.com/cran/hwep
* Date/Publication: 2022-08-16 07:20:02 UTC
* Number of recursive dependencies: 110

Run `revdep_details(, "hwep")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 68.6Mb
      sub-directories of 1Mb or more:
        libs  68.1Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# infercnv

<details>

* Version: 1.14.0
* GitHub: https://github.com/broadinstitute/inferCNV
* Source code: https://github.com/cran/infercnv
* Date/Publication: 2022-11-02
* Number of recursive dependencies: 196

Run `revdep_details(, "infercnv")` for more info

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

# InPAS

<details>

* Version: 2.6.0
* GitHub: NA
* Source code: https://github.com/cran/InPAS
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 167

Run `revdep_details(, "InPAS")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘adjust_distalCPs’ ‘adjust_proximalCPs’ ‘adjust_proximalCPsByNBC’
      ‘adjust_proximalCPsByPWM’ ‘calculate_mse’ ‘find_valleyBySpline’
      ‘get_PAscore’ ‘get_PAscore2’ ‘remove_convergentUTR3s’
      ‘search_distalCPs’ ‘search_proximalCPs’
    ```

# interflex

<details>

* Version: 1.2.6
* GitHub: NA
* Source code: https://github.com/cran/interflex
* Date/Publication: 2021-05-18 11:40:02 UTC
* Number of recursive dependencies: 99

Run `revdep_details(, "interflex")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        libs   5.1Mb
    ```

# ISAnalytics

<details>

* Version: 1.8.1
* GitHub: https://github.com/calabrialab/ISAnalytics
* Source code: https://github.com/cran/ISAnalytics
* Date/Publication: 2022-12-01
* Number of recursive dependencies: 171

Run `revdep_details(, "ISAnalytics")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘ISAnalytics-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: import_Vispa2_stats
    > ### Title: Import Vispa2 stats given the aligned association file.
    > ### Aliases: import_Vispa2_stats
    > 
    > ### ** Examples
    > 
    > fs_path <- generate_default_folder_structure(type = "correct")
    ...
      2. │ ├─ISAnalytics:::.manage_association_file(...)
      3. │ │ └─ISAnalytics:::.check_file_system_alignment(...)
      4. │ │   └─proj_fold_col %in% colnames(df)
      5. │ └─dplyr::if_else(...)
      6. │   └─dplyr:::vec_case_when(...)
      7. │     └─vctrs::list_check_all_vectors(values, arg = values_arg, call = call)
      8. └─vctrs:::stop_scalar_type(`<fn>`(NULL), "false", `<env>`)
      9.   └─vctrs:::stop_vctrs(...)
     10.     └─rlang::abort(message, class = c(class, "vctrs_error"), ..., call = vctrs_error_call(call))
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(ISAnalytics)
      Loading required package: magrittr
      
      Attaching package: 'magrittr'
      
    ...
       13. │                       ├─ISAnalytics:::.manage_association_file(...)
       14. │                       │ └─ISAnalytics:::.check_file_system_alignment(...)
       15. │                       │   └─proj_fold_col %in% colnames(df)
       16. │                       └─dplyr::if_else(...)
       17. │                         └─dplyr:::vec_case_when(...)
       18. │                           └─vctrs::list_check_all_vectors(values, arg = values_arg, call = call)
       19. └─vctrs:::stop_scalar_type(`<fn>`(NULL), "false", `<env>`)
       20.   └─vctrs:::stop_vctrs(...)
       21.     └─rlang::abort(message, class = c(class, "vctrs_error"), ..., call = vctrs_error_call(call))
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘ISAnalytics.Rmd’ using rmarkdown
    --- finished re-building ‘ISAnalytics.Rmd’
    
    --- re-building ‘sharing_analyses.Rmd’ using rmarkdown
    --- finished re-building ‘sharing_analyses.Rmd’
    
    --- re-building ‘workflow_start.Rmd’ using rmarkdown
    Quitting from lines 466-470 (workflow_start.Rmd) 
    Error: processing vignette 'workflow_start.Rmd' failed with diagnostics:
    `false` must be a vector, not `NULL`.
    --- failed re-building ‘workflow_start.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘workflow_start.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        data   1.4Mb
        doc    4.4Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    .sh_row_permut: no visible global function definition for ‘.’
    .sharing_multdf_mult_key: no visible binding for global variable ‘.’
    .sharing_multdf_single_key: no visible binding for global variable ‘.’
    .sharing_singledf_mult_key: no visible binding for global variable ‘.’
    .sharing_singledf_single_key: no visible binding for global variable
      ‘.’
    cumulative_is: no visible binding for global variable ‘is’
    gene_frequency_fisher: no visible binding for global variable ‘.’
    Undefined global functions or variables:
      . is
    Consider adding
      importFrom("methods", "is")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# ivmte

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/ivmte
* Date/Publication: 2021-09-17 12:20:07 UTC
* Number of recursive dependencies: 110

Run `revdep_details(, "ivmte")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'gurobi', 'cplexAPI'
    ```

# keyATM

<details>

* Version: 0.4.2
* GitHub: https://github.com/keyATM/keyATM
* Source code: https://github.com/cran/keyATM
* Date/Publication: 2023-01-06 18:50:52 UTC
* Number of recursive dependencies: 107

Run `revdep_details(, "keyATM")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 23.9Mb
      sub-directories of 1Mb or more:
        libs  23.6Mb
    ```

# lidR

<details>

* Version: 4.0.2
* GitHub: https://github.com/r-lidar/lidR
* Source code: https://github.com/cran/lidR
* Date/Publication: 2022-12-15 15:10:02 UTC
* Number of recursive dependencies: 157

Run `revdep_details(, "lidR")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘lidR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: its_silva2016
    > ### Title: Individual Tree Segmentation Algorithm
    > ### Aliases: its_silva2016 silva2016
    > 
    > ### ** Examples
    > 
    > LASfile <- system.file("extdata", "MixedConifer.laz", package="lidR")
    ...
    > chm <- rasterize_canopy(las, res = 0.5, p2r(0.3), pkg = "raster")
    > ker <- matrix(1,3,3)
    > chm <- raster::focal(chm, w = ker, fun = mean, na.rm = TRUE)
    > 
    > ttops <- locate_trees(chm, lmf(4, 2))
    > las   <- segment_trees(las, silva2016(chm, ttops))
    Error in geos_op2_geom("intersection", x, y, ...) : 
      st_crs(x) == st_crs(y) is not TRUE
    Calls: segment_trees ... st_intersection.sf -> geos_op2_df -> geos_op2_geom -> stopifnot
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
       3.   └─lidR (local) algorithm(st_bbox(las))
       4.     └─lidR:::crop_special_its(treetops, chm, bbox)
       5.       └─lidR:::raster_crop(chm, bbox)
       6.         ├─sf::st_crop(raster, bbox)
       7.         └─stars:::st_crop.stars(raster, bbox)
      ── Error ('test-segment_trees.R:147'): Silva algorithm works with sfc ──────────
    ...
        7. └─lidR:::segment_trees.LAS(las, silva2016(chm, ttops_shifted500))
        8.   └─lidR (local) algorithm(st_bbox(las))
        9.     └─lidR:::crop_special_its(treetops, chm, bbox)
       10.       └─lidR:::raster_crop(chm, bbox)
       11.         ├─sf::st_crop(raster, bbox)
       12.         └─stars:::st_crop.stars(raster, bbox)
      
      [ FAIL 20 | WARN 3 | SKIP 40 | PASS 1357 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 19.7Mb
      sub-directories of 1Mb or more:
        R         1.2Mb
        extdata   1.1Mb
        libs     15.8Mb
    ```

# lightr

<details>

* Version: 1.7.0
* GitHub: https://github.com/ropensci/lightr
* Source code: https://github.com/cran/lightr
* Date/Publication: 2022-05-14 13:50:02 UTC
* Number of recursive dependencies: 77

Run `revdep_details(, "lightr")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘pavo’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘pavo’
    ```

# MAI

<details>

* Version: 1.4.0
* GitHub: https://github.com/KechrisLab/MAI
* Source code: https://github.com/cran/MAI
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 168

Run `revdep_details(, "MAI")` for more info

</details>

## In both

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

# metabolomicsR

<details>

* Version: 1.0.0
* GitHub: https://github.com/XikunHan/metabolomicsR
* Source code: https://github.com/cran/metabolomicsR
* Date/Publication: 2022-04-29 07:40:02 UTC
* Number of recursive dependencies: 163

Run `revdep_details(, "metabolomicsR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘genuMet’
    ```

# mice

<details>

* Version: 3.15.0
* GitHub: https://github.com/amices/mice
* Source code: https://github.com/cran/mice
* Date/Publication: 2022-11-19 13:00:02 UTC
* Number of recursive dependencies: 133

Run `revdep_details(, "mice")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'mice.impute.cart.Rd':
      ‘rpart.control’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

# microservices

<details>

* Version: 0.2.0
* GitHub: https://github.com/tidylab/microservices
* Source code: https://github.com/cran/microservices
* Date/Publication: 2022-10-01 09:50:02 UTC
* Number of recursive dependencies: 69

Run `revdep_details(, "microservices")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(microservices)
      > test_check("microservices")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 12 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
    ...
      Backtrace:
          ▆
       1. ├─config::get(...) at test-endpoint-plumber-{route_name}.R:2:0
       2. │ └─base::normalizePath(file, mustWork = FALSE)
       3. │   └─base::path.expand(path)
       4. └─base::system.file(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 12 ]
      Error: Test failures
      Execution halted
    ```

# MineICA

<details>

* Version: 1.38.0
* GitHub: NA
* Source code: https://github.com/cran/MineICA
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 217

Run `revdep_details(, "MineICA")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    Namespace in Imports field not imported from: ‘lumiHumanAll.db’
      All declared Imports should be used.
    Packages in Depends field not imported from:
      ‘GOstats’ ‘Hmisc’ ‘JADE’ ‘RColorBrewer’ ‘Rgraphviz’ ‘annotate’
      ‘biomaRt’ ‘cluster’ ‘colorspace’ ‘fastICA’ ‘foreach’ ‘ggplot2’
      ‘graph’ ‘gtools’ ‘igraph’ ‘marray’ ‘mclust’ ‘methods’ ‘plyr’ ‘scales’
      ‘xtable’
      These packages need to be imported from (in the NAMESPACE file)
      for when this namespace is loaded but not attached.
    Missing or unexported object: ‘GOstats::geneIdsByCategory’
    ':::' calls which should be '::':
      ‘Biobase:::annotation<-’ ‘Biobase:::validMsg’ ‘fpc:::pamk’
      ‘lumi:::getChipInfo’ ‘mclust:::adjustedRandIndex’
      See the note in ?`:::` about the use of this operator.
    Unexported object imported by a ':::' call: ‘Biobase:::isValidVersion’
      See the note in ?`:::` about the use of this operator.
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

*   checking R code for possible problems ... NOTE
    ```
    addGenesToGoReport: no visible global function definition for
      ‘conditional’
    addGenesToGoReport: no visible global function definition for
      ‘sigCategories’
    annot2Color: no visible global function definition for ‘brewer.pal’
    annot2Color: no visible global function definition for ‘heat_hcl’
    annot2Color: no visible global function definition for ‘terrain_hcl’
    annot2Color: no visible global function definition for ‘cm.colors’
    annot2Color: no visible global function definition for ‘rainbow_hcl’
    annotFeatures: no visible global function definition for ‘na.omit’
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

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘MineICA.Rnw’ using Sweave
    Loading required package: BiocGenerics
    
    Attaching package: ‘BiocGenerics’
    
    The following objects are masked from ‘package:stats’:
    
        IQR, mad, sd, var, xtabs
    
    ...
    l.23 \usepackage
                    {subfig}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘MineICA.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘MineICA.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# missSBM

<details>

* Version: 1.0.3
* GitHub: https://github.com/grossSBM/missSBM
* Source code: https://github.com/cran/missSBM
* Date/Publication: 2022-08-23 12:10:06 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "missSBM")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.7Mb
      sub-directories of 1Mb or more:
        libs   7.8Mb
    ```

# momentuHMM

<details>

* Version: 1.5.5
* GitHub: https://github.com/bmcclintock/momentuHMM
* Source code: https://github.com/cran/momentuHMM
* Date/Publication: 2022-10-18 20:52:35 UTC
* Number of recursive dependencies: 142

Run `revdep_details(, "momentuHMM")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.1Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        doc    1.7Mb
        libs   6.6Mb
    ```

# mslp

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/mslp
* Date/Publication: 2022-11-20
* Number of recursive dependencies: 88

Run `revdep_details(, "mslp")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘mslp.Rmd’ using rmarkdown
    Error: processing vignette 'mslp.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    --- failed re-building ‘mslp.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘mslp.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# oncomsm

<details>

* Version: 0.1.2
* GitHub: https://github.com/Boehringer-Ingelheim/oncomsm
* Source code: https://github.com/cran/oncomsm
* Date/Publication: 2022-12-09 14:40:09 UTC
* Number of recursive dependencies: 122

Run `revdep_details(, "oncomsm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 55.3Mb
      sub-directories of 1Mb or more:
        doc    1.3Mb
        libs  53.0Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# onemapsgapi

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/onemapsgapi
* Date/Publication: 2022-11-29 08:00:03 UTC
* Number of recursive dependencies: 70

Run `revdep_details(, "onemapsgapi")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘onemapsgapi_vignette.Rmd’ using rmarkdown
    Quitting from lines 36-37 (onemapsgapi_vignette.Rmd) 
    Error: processing vignette 'onemapsgapi_vignette.Rmd' failed with diagnostics:
    Received HTTP code 503 from proxy after CONNECT
    --- failed re-building ‘onemapsgapi_vignette.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘onemapsgapi_vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# OOS

<details>

* Version: 1.0.0
* GitHub: https://github.com/tylerJPike/OOS
* Source code: https://github.com/cran/OOS
* Date/Publication: 2021-03-17 13:20:20 UTC
* Number of recursive dependencies: 134

Run `revdep_details(, "OOS")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘basic_introduction.Rmd’ using rmarkdown
    Quitting from lines 31-49 (basic_introduction.Rmd) 
    Error: processing vignette 'basic_introduction.Rmd' failed with diagnostics:
    object 'UNRATE' not found
    --- failed re-building ‘basic_introduction.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘basic_introduction.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# partR2

<details>

* Version: 0.9.1
* GitHub: https://github.com/mastoffel/partR2
* Source code: https://github.com/cran/partR2
* Date/Publication: 2021-01-18 16:30:04 UTC
* Number of recursive dependencies: 92

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

* Version: 2.8.0
* GitHub: https://github.com/rmaia/pavo
* Source code: https://github.com/cran/pavo
* Date/Publication: 2022-08-16 13:00:20 UTC
* Number of recursive dependencies: 92

Run `revdep_details(, "pavo")` for more info

</details>

## In both

*   checking whether package ‘pavo’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/future/revdep/checks/pavo/new/pavo.Rcheck/00install.out’ for details.
    ```

# photosynthesis

<details>

* Version: 2.1.1
* GitHub: https://github.com/cdmuir/photosynthesis
* Source code: https://github.com/cran/photosynthesis
* Date/Publication: 2022-11-19 19:40:09 UTC
* Number of recursive dependencies: 135

Run `revdep_details(, "photosynthesis")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        doc   6.0Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 13 marked UTF-8 strings
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

* Version: 1.0.0
* GitHub: https://github.com/pln-team/PLNmodels
* Source code: https://github.com/cran/PLNmodels
* Date/Publication: 2023-01-06 13:20:06 UTC
* Number of recursive dependencies: 146

Run `revdep_details(, "PLNmodels")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 21.7Mb
      sub-directories of 1Mb or more:
        doc    2.1Mb
        libs  18.3Mb
    ```

# portvine

<details>

* Version: 1.0.2
* GitHub: https://github.com/EmanuelSommer/portvine
* Source code: https://github.com/cran/portvine
* Date/Publication: 2023-01-06 09:40:04 UTC
* Number of recursive dependencies: 129

Run `revdep_details(, "portvine")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 51.3Mb
      sub-directories of 1Mb or more:
        libs  50.6Mb
    ```

# ppcseq

<details>

* Version: 1.6.0
* GitHub: https://github.com/stemangiola/ppcseq
* Source code: https://github.com/cran/ppcseq
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 119

Run `revdep_details(, "ppcseq")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 53.1Mb
      sub-directories of 1Mb or more:
        data   1.5Mb
        libs  50.3Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    .identify_abundant: no visible binding for global variable ‘.’
    .identify_abundant: no visible binding for global variable ‘.abundant’
    add_exposure_rate: no visible binding for global variable ‘.variable’
    add_exposure_rate: no visible binding for global variable ‘S’
    add_exposure_rate: no visible binding for global variable ‘exposure
      rate’
    add_partition: no visible binding for global variable ‘.’
    add_scaled_counts_bulk.calcNormFactor: no visible binding for global
      variable ‘transcript’
    add_scaled_counts_bulk.get_low_expressed: no visible binding for global
    ...
      . .abundant .chain .draw .iteration .lower .upper .upper_2 .value
      .variable CI G S TMM cc chains dummy exposure rate idx_MPI init l l
      %>% sd med multiplier nf ppc read count MPI row res_discovery rowid s
      sample wise data scale_abundance slope symbol MPI row tot tot_filt
      transcript write_on_disk
    Consider adding
      importFrom("base", "row", "sample")
      importFrom("stats", "sd")
      importFrom("utils", "data")
    to your NAMESPACE file.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# prewas

<details>

* Version: 1.1.1
* GitHub: https://github.com/Snitkin-Lab-Umich/prewas
* Source code: https://github.com/cran/prewas
* Date/Publication: 2021-04-02 12:20:05 UTC
* Number of recursive dependencies: 76

Run `revdep_details(, "prewas")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats’
      All declared Imports should be used.
    ```

# projpred

<details>

* Version: 2.3.0
* GitHub: https://github.com/stan-dev/projpred
* Source code: https://github.com/cran/projpred
* Date/Publication: 2023-01-10 15:00:03 UTC
* Number of recursive dependencies: 143

Run `revdep_details(, "projpred")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

# promises

<details>

* Version: 1.2.0.1
* GitHub: https://github.com/rstudio/promises
* Source code: https://github.com/cran/promises
* Date/Publication: 2021-02-11 19:00:02 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "promises")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# QDNAseq

<details>

* Version: 1.34.0
* GitHub: https://github.com/ccagc/QDNAseq
* Source code: https://github.com/cran/QDNAseq
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 88

Run `revdep_details(, "QDNAseq")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘QDNAseq.Rnw’ using Sweave
    EM algorithm started ... 
    
    Warning in allprior/tot :
      Recycling array of length 1 in vector-array arithmetic is deprecated.
      Use c() or as.vector() instead.
    
    Warning in allprior/tot :
      Recycling array of length 1 in vector-array arithmetic is deprecated.
    ...
    l.189 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘QDNAseq.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘QDNAseq.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# RAINBOWR

<details>

* Version: 0.1.29
* GitHub: NA
* Source code: https://github.com/cran/RAINBOWR
* Date/Publication: 2022-01-07 13:53:11 UTC
* Number of recursive dependencies: 150

Run `revdep_details(, "RAINBOWR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 37.7Mb
      sub-directories of 1Mb or more:
        libs  36.5Mb
    ```

# regmedint

<details>

* Version: 1.0.0
* GitHub: https://github.com/kaz-yos/regmedint
* Source code: https://github.com/cran/regmedint
* Date/Publication: 2022-04-06 20:20:02 UTC
* Number of recursive dependencies: 134

Run `revdep_details(, "regmedint")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Deriv’
      All declared Imports should be used.
    ```

# reproducible

<details>

* Version: 1.2.16
* GitHub: https://github.com/PredictiveEcology/reproducible
* Source code: https://github.com/cran/reproducible
* Date/Publication: 2022-12-22 09:50:02 UTC
* Number of recursive dependencies: 104

Run `revdep_details(, "reproducible")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘test-all.R’/software/c4/cbi/software/R-4.2.2-gcc10/lib64/R/bin/BATCH: line 60:  7156 Segmentation fault      ${R_HOME}/bin/R -f ${in} ${opts} ${R_BATCH_OPTIONS} > ${out} 2>&1
    
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 50 lines of output:
        adding: scratch/henrik/RtmpcbGlaK/reproducible/4sZYfp_038/1Gis54o.tif (stored 0%)
        adding: scratch/henrik/RtmpcbGlaK/reproducible/4sZYfp_038/EiHkghZ.grd (stored 0%)
      
       *** caught segfault ***
      address 0x40, cause 'memory not mapped'
    ...
      36: doTryCatch(return(expr), name, parentenv, handler)
      37: tryCatchOne(expr, names, parentenv, handlers[[1L]])
      38: tryCatchList(expr, classes, parentenv, handlers)
      39: tryCatch(code, testthat_abort_reporter = function(cnd) {    cat(conditionMessage(cnd), "\n")    NULL})
      40: with_reporter(reporters$multi, lapply(test_paths, test_one_file,     env = env, wrap = wrap))
      41: test_files_serial(test_dir = test_dir, test_package = test_package,     test_paths = test_paths, load_helpers = load_helpers, reporter = reporter,     env = env, stop_on_failure = stop_on_failure, stop_on_warning = stop_on_warning,     wrap = wrap, load_package = load_package)
      42: test_files(test_dir = path, test_paths = test_paths, test_package = package,     reporter = reporter, load_helpers = load_helpers, env = env,     stop_on_failure = stop_on_failure, stop_on_warning = stop_on_warning,     wrap = wrap, load_package = load_package, parallel = parallel)
      43: test_dir("testthat", package = package, reporter = reporter,     ..., load_package = "installed")
      44: test_check("reproducible")
      An irrecoverable exception occurred. R is aborting now ...
    ```

# rgee

<details>

* Version: 1.1.5
* GitHub: https://github.com/r-spatial/rgee
* Source code: https://github.com/cran/rgee
* Date/Publication: 2022-09-13 08:10:06 UTC
* Number of recursive dependencies: 150

Run `revdep_details(, "rgee")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        doc   6.6Mb
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
* Number of recursive dependencies: 68

Run `revdep_details(, "robotstxt")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# sapfluxnetr

<details>

* Version: 0.1.4
* GitHub: https://github.com/sapfluxnet/sapfluxnetr
* Source code: https://github.com/cran/sapfluxnetr
* Date/Publication: 2023-01-25 15:30:02 UTC
* Number of recursive dependencies: 81

Run `revdep_details(, "sapfluxnetr")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# scDiffCom

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/scDiffCom
* Date/Publication: 2021-08-17 07:20:05 UTC
* Number of recursive dependencies: 246

Run `revdep_details(, "scDiffCom")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘utils’
      All declared Imports should be used.
    ```

# sctransform

<details>

* Version: 0.3.5
* GitHub: https://github.com/satijalab/sctransform
* Source code: https://github.com/cran/sctransform
* Date/Publication: 2022-09-21 17:10:07 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "sctransform")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘glmGamPoi’
    ```

# sdmApp

<details>

* Version: 0.0.2
* GitHub: https://github.com/Abson-dev/sdmApp
* Source code: https://github.com/cran/sdmApp
* Date/Publication: 2021-07-07 08:30:02 UTC
* Number of recursive dependencies: 171

Run `revdep_details(, "sdmApp")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘sp’
      All declared Imports should be used.
    ```

# sdmTMB

<details>

* Version: 0.3.0
* GitHub: https://github.com/pbs-assess/sdmTMB
* Source code: https://github.com/cran/sdmTMB
* Date/Publication: 2023-01-28 07:30:02 UTC
* Number of recursive dependencies: 116

Run `revdep_details(, "sdmTMB")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘INLA’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 78.3Mb
      sub-directories of 1Mb or more:
        libs  76.6Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘INLA’
    ```

# sentopics

<details>

* Version: 0.7.1
* GitHub: https://github.com/odelmarcelle/sentopics
* Source code: https://github.com/cran/sentopics
* Date/Publication: 2022-05-18 13:20:02 UTC
* Number of recursive dependencies: 165

Run `revdep_details(, "sentopics")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > 
      > library("testthat")
      > library("sentopics")
      > 
      > if (Sys.getenv("R_COVR") != "true") {
      +   test_check("sentopics")
    ...
      Backtrace:
          ▆
       1. └─sentopics:::get_ECB_press_conferences(years = 1998) at test-others.R:2:2
       2.   └─base::lapply(...)
       3.     └─sentopics (local) FUN(X[[i]], ...)
       4.       └─utils::download.file(...)
      
      [ FAIL 1 | WARN 2 | SKIP 1 | PASS 321 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        data   1.2Mb
        libs   6.1Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘lexicon’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3128 marked UTF-8 strings
    ```

# Seurat

<details>

* Version: 4.3.0
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2022-11-18 23:30:08 UTC
* Number of recursive dependencies: 259

Run `revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.5Mb
      sub-directories of 1Mb or more:
        R      1.4Mb
        libs  12.4Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Signac’
    ```

# SeuratObject

<details>

* Version: 4.1.3
* GitHub: https://github.com/mojaveazure/seurat-object
* Source code: https://github.com/cran/SeuratObject
* Date/Publication: 2022-11-07 18:50:02 UTC
* Number of recursive dependencies: 57

Run `revdep_details(, "SeuratObject")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘plotly’
    ```

# shiny

<details>

* Version: 1.7.4
* GitHub: https://github.com/rstudio/shiny
* Source code: https://github.com/cran/shiny
* Date/Publication: 2022-12-15 13:10:02 UTC
* Number of recursive dependencies: 91

Run `revdep_details(, "shiny")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.6Mb
      sub-directories of 1Mb or more:
        R     1.6Mb
        www   6.9Mb
    ```

# shiny.worker

<details>

* Version: 0.0.1
* GitHub: NA
* Source code: https://github.com/cran/shiny.worker
* Date/Publication: 2021-01-21 11:00:02 UTC
* Number of recursive dependencies: 64

Run `revdep_details(, "shiny.worker")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R6’ ‘shiny’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# signeR

<details>

* Version: 2.0.2
* GitHub: https://github.com/rvalieris/signeR
* Source code: https://github.com/cran/signeR
* Date/Publication: 2023-01-19
* Number of recursive dependencies: 242

Run `revdep_details(, "signeR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        R     1.1Mb
        doc   4.6Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    covariate: no visible binding for global variable ‘.’
    denovo: no visible binding for global variable
      ‘BSgenome.Hsapiens.UCSC.hg19’
    denovo: no visible binding for global variable
      ‘BSgenome.Hsapiens.UCSC.hg38’
    explorepage: no visible binding for global variable ‘.’
    fitting: no visible binding for global variable
      ‘BSgenome.Hsapiens.UCSC.hg19’
    fitting: no visible binding for global variable
      ‘BSgenome.Hsapiens.UCSC.hg38’
    ...
    ExposureCorrelation,SignExp-numeric: no visible binding for global
      variable ‘exposure’
    ExposureCorrelation,matrix-numeric: no visible binding for global
      variable ‘Feature’
    ExposureCorrelation,matrix-numeric: no visible binding for global
      variable ‘exposure’
    Undefined global functions or variables:
      . BSgenome.Hsapiens.UCSC.hg19 BSgenome.Hsapiens.UCSC.hg38 Col Feature
      Frequency Row Samples Signatures alt<- exposure fc project sig
      sig_test
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: cosmic_data.Rd:91-93: Dropping empty section \details
    prepare_Rd: cosmic_data.Rd:98-100: Dropping empty section \references
    prepare_Rd: cosmic_data.Rd:101-102: Dropping empty section \examples
    prepare_Rd: tcga_similarities.Rd:96-98: Dropping empty section \details
    prepare_Rd: tcga_similarities.Rd:99-101: Dropping empty section \source
    prepare_Rd: tcga_similarities.Rd:102-104: Dropping empty section \references
    prepare_Rd: tcga_similarities.Rd:105-106: Dropping empty section \examples
    prepare_Rd: tcga_tumors.Rd:18-20: Dropping empty section \details
    prepare_Rd: tcga_tumors.Rd:21-23: Dropping empty section \source
    prepare_Rd: tcga_tumors.Rd:24-26: Dropping empty section \references
    prepare_Rd: tcga_tumors.Rd:27-28: Dropping empty section \examples
    ```

# SimDesign

<details>

* Version: 2.10.1
* GitHub: https://github.com/philchalmers/SimDesign
* Source code: https://github.com/cran/SimDesign
* Date/Publication: 2023-02-01 15:30:02 UTC
* Number of recursive dependencies: 104

Run `revdep_details(, "SimDesign")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘doMPI’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        doc   6.2Mb
    ```

# skpr

<details>

* Version: 1.1.6
* GitHub: https://github.com/tylermorganwall/skpr
* Source code: https://github.com/cran/skpr
* Date/Publication: 2022-07-14 10:50:05 UTC
* Number of recursive dependencies: 122

Run `revdep_details(, "skpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 56.7Mb
      sub-directories of 1Mb or more:
        libs  55.2Mb
    ```

# solitude

<details>

* Version: 1.1.3
* GitHub: https://github.com/talegari/solitude
* Source code: https://github.com/cran/solitude
* Date/Publication: 2021-07-29 20:00:02 UTC
* Number of recursive dependencies: 127

Run `revdep_details(, "solitude")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R6’ ‘lgr’
      All declared Imports should be used.
    ```

# spaMM

<details>

* Version: 4.1.20
* GitHub: NA
* Source code: https://github.com/cran/spaMM
* Date/Publication: 2022-12-12 12:50:03 UTC
* Number of recursive dependencies: 122

Run `revdep_details(, "spaMM")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'Infusion', 'IsoriX', 'blackbox'
    
    Packages which this enhances but not available for checking:
      'multcomp', 'RLRsim', 'lmerTest'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 55.5Mb
      sub-directories of 1Mb or more:
        R      2.5Mb
        libs  51.8Mb
    ```

# sparrpowR

<details>

* Version: 0.2.7
* GitHub: https://github.com/machiela-lab/sparrpowR
* Source code: https://github.com/cran/sparrpowR
* Date/Publication: 2023-02-02 01:00:02 UTC
* Number of recursive dependencies: 133

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

* Version: 1.2.0
* GitHub: https://github.com/NAU-CCL/SPARSEMODr
* Source code: https://github.com/cran/SPARSEMODr
* Date/Publication: 2022-07-19 20:50:02 UTC
* Number of recursive dependencies: 122

Run `revdep_details(, "SPARSEMODr")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘geosphere’ ‘lubridate’ ‘tidyverse’ ‘viridis’
      All declared Imports should be used.
    ```

# spatialTIME

<details>

* Version: 1.2.2
* GitHub: https://github.com/FridleyLab/spatialTIME
* Source code: https://github.com/cran/spatialTIME
* Date/Publication: 2022-11-22 17:30:02 UTC
* Number of recursive dependencies: 91

Run `revdep_details(, "spatialTIME")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘gridExtra’ ‘pheatmap’
      All declared Imports should be used.
    ```

# spatialwarnings

<details>

* Version: 3.0.3
* GitHub: https://github.com/spatial-ews/spatialwarnings
* Source code: https://github.com/cran/spatialwarnings
* Date/Publication: 2022-03-21 13:00:02 UTC
* Number of recursive dependencies: 98

Run `revdep_details(, "spatialwarnings")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'indictest.Rd':
      ‘mgcv’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        libs   5.8Mb
    ```

# sphunif

<details>

* Version: 1.0.1
* GitHub: https://github.com/egarpor/sphunif
* Source code: https://github.com/cran/sphunif
* Date/Publication: 2021-09-02 07:40:02 UTC
* Number of recursive dependencies: 74

Run `revdep_details(, "sphunif")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 24.2Mb
      sub-directories of 1Mb or more:
        libs  23.3Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 189 marked UTF-8 strings
    ```

# spNetwork

<details>

* Version: 0.4.3.6
* GitHub: https://github.com/JeremyGelb/spNetwork
* Source code: https://github.com/cran/spNetwork
* Date/Publication: 2022-11-11 08:10:02 UTC
* Number of recursive dependencies: 149

Run `revdep_details(, "spNetwork")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 25.2Mb
      sub-directories of 1Mb or more:
        doc       1.0Mb
        extdata   2.6Mb
        libs     20.3Mb
    ```

# squat

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/squat
* Date/Publication: 2022-12-22 11:20:02 UTC
* Number of recursive dependencies: 123

Run `revdep_details(, "squat")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 18.6Mb
      sub-directories of 1Mb or more:
        data   1.1Mb
        libs  16.6Mb
    ```

# ssdtools

<details>

* Version: 1.0.2
* GitHub: https://github.com/bcgov/ssdtools
* Source code: https://github.com/cran/ssdtools
* Date/Publication: 2022-05-14 23:50:02 UTC
* Number of recursive dependencies: 144

Run `revdep_details(, "ssdtools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 23.0Mb
      sub-directories of 1Mb or more:
        doc    1.2Mb
        libs  20.6Mb
    ```

# stars

<details>

* Version: 0.6-0
* GitHub: https://github.com/r-spatial/stars
* Source code: https://github.com/cran/stars
* Date/Publication: 2022-11-21 13:10:02 UTC
* Number of recursive dependencies: 153

Run `revdep_details(, "stars")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘starsdata’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        doc   2.4Mb
        nc    1.7Mb
    ```

# synergyfinder

<details>

* Version: 3.6.2
* GitHub: NA
* Source code: https://github.com/cran/synergyfinder
* Date/Publication: 2022-12-22
* Number of recursive dependencies: 191

Run `revdep_details(, "synergyfinder")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: ‘scales’
    Namespaces in Imports field not imported from:
      ‘future’ ‘gstat’ ‘nleqslv’ ‘sp’ ‘tidyverse’
      All declared Imports should be used.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        doc   5.7Mb
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
      block_id color conc1 conc2 css data end head id input_type label left
      maxn metric n nn pred r response response_CI95 response_mean
      response_origin response_origin_CI95 response_origin_mean
      response_origin_sd response_origin_sem response_sd response_sem right
      start synergy text theta value x y
    Consider adding
      importFrom("graphics", "text")
      importFrom("stats", "end", "start")
      importFrom("utils", "data", "head")
    to your NAMESPACE file.
    ```

# tableschema.r

<details>

* Version: 1.1.2
* GitHub: https://github.com/frictionlessdata/tableschema-r
* Source code: https://github.com/cran/tableschema.r
* Date/Publication: 2022-09-29 20:00:03 UTC
* Number of recursive dependencies: 66

Run `revdep_details(, "tableschema.r")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘parsedate’
    ```

# targeted

<details>

* Version: 0.3
* GitHub: https://github.com/kkholst/targeted
* Source code: https://github.com/cran/targeted
* Date/Publication: 2022-10-25 20:30:02 UTC
* Number of recursive dependencies: 94

Run `revdep_details(, "targeted")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.8Mb
      sub-directories of 1Mb or more:
        libs  15.7Mb
    ```

# text

<details>

* Version: 0.9.99.2
* GitHub: https://github.com/OscarKjell/text
* Source code: https://github.com/cran/text
* Date/Publication: 2022-09-20 22:00:02 UTC
* Number of recursive dependencies: 150

Run `revdep_details(, "text")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3 marked UTF-8 strings
    ```

# TreeSearch

<details>

* Version: 1.2.0
* GitHub: https://github.com/ms609/TreeSearch
* Source code: https://github.com/cran/TreeSearch
* Date/Publication: 2022-08-10 22:40:17 UTC
* Number of recursive dependencies: 117

Run `revdep_details(, "TreeSearch")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘custom.Rmd’ using rmarkdown
    Error reading bibliography file ../inst/REFERENCES.bib:
    (line 348, column 1):
    unexpected '@'
    Error: processing vignette 'custom.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 25
    --- failed re-building ‘custom.Rmd’
    
    --- re-building ‘getting-started.Rmd’ using rmarkdown
    ...
    unexpected '@'
    Error: processing vignette 'tree-search.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 25
    --- failed re-building ‘tree-search.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘custom.Rmd’ ‘profile-scores.Rmd’ ‘profile.Rmd’ ‘tree-search.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        datasets   1.6Mb
        libs       2.4Mb
    ```

# TriDimRegression

<details>

* Version: 1.0.1
* GitHub: https://github.com/alexander-pastukhov/tridim-regression
* Source code: https://github.com/cran/TriDimRegression
* Date/Publication: 2021-10-05 08:30:08 UTC
* Number of recursive dependencies: 100

Run `revdep_details(, "TriDimRegression")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 47.3Mb
      sub-directories of 1Mb or more:
        libs  46.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RcppParallel’ ‘rstantools’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# TSstudio

<details>

* Version: 0.1.6
* GitHub: https://github.com/RamiKrispin/TSstudio
* Source code: https://github.com/cran/TSstudio
* Date/Publication: 2020-01-21 05:30:02 UTC
* Number of recursive dependencies: 156

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

* Version: 0.3.8
* GitHub: https://github.com/nhejazi/txshift
* Source code: https://github.com/cran/txshift
* Date/Publication: 2022-02-09 22:30:02 UTC
* Number of recursive dependencies: 111

Run `revdep_details(, "txshift")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sl3’
    ```

# UCSCXenaShiny

<details>

* Version: 1.1.9
* GitHub: https://github.com/openbiox/UCSCXenaShiny
* Source code: https://github.com/cran/UCSCXenaShiny
* Date/Publication: 2022-12-12 09:00:03 UTC
* Number of recursive dependencies: 181

Run `revdep_details(, "UCSCXenaShiny")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        doc        1.4Mb
        shinyapp   3.3Mb
    ```

# updog

<details>

* Version: 2.1.3
* GitHub: https://github.com/dcgerard/updog
* Source code: https://github.com/cran/updog
* Date/Publication: 2022-10-18 08:00:02 UTC
* Number of recursive dependencies: 145

Run `revdep_details(, "updog")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        libs   7.1Mb
    ```

# vmeasur

<details>

* Version: 0.1.4
* GitHub: NA
* Source code: https://github.com/cran/vmeasur
* Date/Publication: 2021-11-11 19:00:02 UTC
* Number of recursive dependencies: 117

Run `revdep_details(, "vmeasur")` for more info

</details>

## In both

*   checking whether package ‘vmeasur’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/future/revdep/checks/vmeasur/new/vmeasur.Rcheck/00install.out’ for details.
    ```

# wru

<details>

* Version: 1.0.1
* GitHub: https://github.com/kosukeimai/wru
* Source code: https://github.com/cran/wru
* Date/Publication: 2022-10-21 17:30:02 UTC
* Number of recursive dependencies: 87

Run `revdep_details(, "wru")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        data   3.5Mb
        libs   1.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# XNAString

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/XNAString
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 101

Run `revdep_details(, "XNAString")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
      sub-directories of 1Mb or more:
        libs   9.5Mb
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking compiled code ... NOTE
    ```
    File ‘XNAString/libs/XNAString.so’:
      Found ‘rand’, possibly from ‘rand’ (C)
        Object: ‘./ViennaRNA/utils/utils.o’
      Found ‘srand’, possibly from ‘srand’ (C)
        Object: ‘./ViennaRNA/utils/utils.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

