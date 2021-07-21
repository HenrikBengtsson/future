# AIPW

<details>

* Version: 0.6.3.2
* GitHub: https://github.com/yqzhong7/AIPW
* Source code: https://github.com/cran/AIPW
* Date/Publication: 2021-06-11 09:30:02 UTC
* Number of recursive dependencies: 92

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

# alookr

<details>

* Version: 0.3.4
* GitHub: https://github.com/choonghyunryu/alookr
* Source code: https://github.com/cran/alookr
* Date/Publication: 2021-02-22 14:40:02 UTC
* Number of recursive dependencies: 186

Run `revdep_details(, "alookr")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# AlpsNMR

<details>

* Version: 3.1.5
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
      
      [ FAIL 1 | WARN 1 | SKIP 1 | PASS 73 ]
      Error: Test failures
      Execution halted
    ```

*   checking Rd contents ... WARNING
    ```
    Argument items with no description in Rd object 'MUVR_model_plot':
      ‘ylim’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        dataset-demo   3.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘zip’
      All declared Imports should be used.
    ```

# aroma.affymetrix

<details>

* Version: 3.2.0
* GitHub: https://github.com/HenrikBengtsson/aroma.affymetrix
* Source code: https://github.com/cran/aroma.affymetrix
* Date/Publication: 2019-06-23 06:00:14 UTC
* Number of recursive dependencies: 73

Run `revdep_details(, "aroma.affymetrix")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        R             4.0Mb
        help          2.1Mb
        testScripts   1.1Mb
    ```

# aroma.core

<details>

* Version: 3.2.2
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2021-01-05 05:10:12 UTC
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
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        libs   5.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats4’
      All declared Imports should be used.
    ```

# BatchGetSymbols

<details>

* Version: 2.6.1
* GitHub: NA
* Source code: https://github.com/cran/BatchGetSymbols
* Date/Publication: 2020-11-28 15:10:21 UTC
* Number of recursive dependencies: 85

Run `revdep_details(, "BatchGetSymbols")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# batchr

<details>

* Version: 0.0.1
* GitHub: https://github.com/poissonconsulting/batchr
* Source code: https://github.com/cran/batchr
* Date/Publication: 2021-02-16 10:10:02 UTC
* Number of recursive dependencies: 62

Run `revdep_details(, "batchr")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# bayesmove

<details>

* Version: 0.2.0
* GitHub: https://github.com/joshcullen/bayesmove
* Source code: https://github.com/cran/bayesmove
* Date/Publication: 2021-04-26 22:10:11 UTC
* Number of recursive dependencies: 143

Run `revdep_details(, "bayesmove")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘move’
      All declared Imports should be used.
    ```

# bcmaps

<details>

* Version: 1.0.2
* GitHub: https://github.com/bcgov/bcmaps
* Source code: https://github.com/cran/bcmaps
* Date/Publication: 2021-03-09 23:40:03 UTC
* Number of recursive dependencies: 123

Run `revdep_details(, "bcmaps")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# bkmrhat

<details>

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/bkmrhat
* Date/Publication: 2021-02-17 20:30:09 UTC
* Number of recursive dependencies: 86

Run `revdep_details(, "bkmrhat")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# blavaan

<details>

* Version: 0.3-17
* GitHub: NA
* Source code: https://github.com/cran/blavaan
* Date/Publication: 2021-07-19 22:00:02 UTC
* Number of recursive dependencies: 105

Run `revdep_details(, "blavaan")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 68.9Mb
      sub-directories of 1Mb or more:
        libs  66.8Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# blockCV

<details>

* Version: 2.1.4
* GitHub: https://github.com/rvalavi/blockCV
* Source code: https://github.com/cran/blockCV
* Date/Publication: 2021-06-17 04:50:02 UTC
* Number of recursive dependencies: 117

Run `revdep_details(, "blockCV")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.8Mb
      sub-directories of 1Mb or more:
        extdata   7.8Mb
    ```

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
* Number of recursive dependencies: 227

Run `revdep_details(, "brms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.8Mb
      sub-directories of 1Mb or more:
        R      5.0Mb
        doc    2.4Mb
        help   1.0Mb
    ```

# ChromSCape

<details>

* Version: 1.2.0
* GitHub: https://github.com/vallotlab/ChromSCape
* Source code: https://github.com/cran/ChromSCape
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 264

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
      installed size is  8.4Mb
      sub-directories of 1Mb or more:
        data   1.3Mb
        doc    2.9Mb
        www    2.1Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    CompareWilcox: no visible binding for global variable ‘annot.’
    bams_to_matrix_indexes: no visible binding for global variable
      ‘files_dir_list’
    filter_correlated_cell_scExp: no visible binding for global variable
      ‘run_tsne’
    generate_analysis: no visible binding for global variable ‘k’
    generate_analysis: no visible binding for global variable
      ‘clusterConsensus’
    get_most_variable_cyto: no visible binding for global variable
      ‘cytoBand’
    ...
    plot_reduced_dim_scExp: no visible binding for global variable ‘V1’
    plot_reduced_dim_scExp: no visible binding for global variable ‘V2’
    plot_reduced_dim_scExp: no visible binding for global variable
      ‘cluster’
    subset_bam_call_peaks: no visible binding for global variable
      ‘merged_bam’
    Undefined global functions or variables:
      Fri_cyto Gain_or_Loss V1 V2 absolute_value annot. cluster
      clusterConsensus cytoBand files_dir_list genes k merged_bam ncells
      run_tsne sample_id total_counts
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
* Number of recursive dependencies: 83

Run `revdep_details(, "civis")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
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
      installed size is 11.5Mb
      sub-directories of 1Mb or more:
        libs   9.8Mb
    ```

# codebook

<details>

* Version: 0.9.2
* GitHub: https://github.com/rubenarslan/codebook
* Source code: https://github.com/cran/codebook
* Date/Publication: 2020-06-06 23:40:03 UTC
* Number of recursive dependencies: 153

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

* Version: 0.4.0
* GitHub: https://github.com/M-E-Rademaker/cSEM
* Source code: https://github.com/cran/cSEM
* Date/Publication: 2021-04-19 22:00:18 UTC
* Number of recursive dependencies: 121

Run `revdep_details(, "cSEM")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘cSEM-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: infer
    > ### Title: Inference
    > ### Aliases: infer
    > 
    > ### ** Examples
    > 
    > model <- "
    ...
    + VAL  =~ val1  + val2  + val3  + val4
    + "
    >   
    > ## Estimate the model with bootstrap resampling 
    > a <- csem(satisfaction, model, .resample_method = "bootstrap", .R = 20,
    +           .handle_inadmissibles = "replace")
    Error in do.call(function(...) { : 
      object 'future.call.arguments' not found
    Calls: csem ... resolve.list -> signalConditionsASAP -> signalConditions
    Execution halted
    ```

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
* Number of recursive dependencies: 69

Run `revdep_details(, "CSGo")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘extrafont’ ‘future’
      All declared Imports should be used.
    ```

# datapackage.r

<details>

* Version: 1.3.3
* GitHub: https://github.com/frictionlessdata/datapackage-r
* Source code: https://github.com/cran/datapackage.r
* Date/Publication: 2021-04-16 18:40:03 UTC
* Number of recursive dependencies: 116

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

* Version: 0.26.0
* GitHub: https://github.com/DeclareDesign/DeclareDesign
* Source code: https://github.com/cran/DeclareDesign
* Date/Publication: 2021-02-14 21:50:10 UTC
* Number of recursive dependencies: 149

Run `revdep_details(, "DeclareDesign")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘DesignLibrary’
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
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

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# dipsaus

<details>

* Version: 0.1.6
* GitHub: https://github.com/dipterix/dipsaus
* Source code: https://github.com/cran/dipsaus
* Date/Publication: 2021-07-08 21:50:05 UTC
* Number of recursive dependencies: 80

Run `revdep_details(, "dipsaus")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        doc    1.2Mb
        libs   3.2Mb
    ```

# dragon

<details>

* Version: 1.2.0
* GitHub: https://github.com/sjspielman/dragon
* Source code: https://github.com/cran/dragon
* Date/Publication: 2021-07-07 17:30:10 UTC
* Number of recursive dependencies: 137

Run `revdep_details(, "dragon")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘htmltools’
      All declared Imports should be used.
    ```

# easyalluvial

<details>

* Version: 0.3.0
* GitHub: https://github.com/erblast/easyalluvial
* Source code: https://github.com/cran/easyalluvial
* Date/Publication: 2021-01-13 10:40:09 UTC
* Number of recursive dependencies: 141

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
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        doc    1.0Mb
        libs   5.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘progress’
      All declared Imports should be used.
    ```

# elevatr

<details>

* Version: 0.4.0
* GitHub: https://github.com/jhollist/elevatr
* Source code: https://github.com/cran/elevatr
* Date/Publication: 2021-07-19 20:50:02 UTC
* Number of recursive dependencies: 77

Run `revdep_details(, "elevatr")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(elevatr)
      > 
      > test_check("elevatr")
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-get_elev_point.R:11:1): (code run outside of `test_that()`) ─────
      Error: no arguments in initialization list
    ...
          █
       1. ├─sp::SpatialPoints(coordinates(pt_df), CRS(SRS_string = ll_prj)) test-internal.R:14:0
       2. │ └─methods::new("SpatialPoints", coords = coords, bbox = bbox, proj4string = proj4string)
       3. │   ├─methods::initialize(value, ...)
       4. │   └─methods::initialize(value, ...)
       5. └─sp::CRS(SRS_string = ll_prj)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# envi

<details>

* Version: 0.1.9
* GitHub: https://github.com/Waller-SUSAN/envi
* Source code: https://github.com/cran/envi
* Date/Publication: 2021-07-16 07:30:16 UTC
* Number of recursive dependencies: 127

Run `revdep_details(, "envi")` for more info

</details>

## In both

*   checking whether package ‘envi’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/scratch/henrik/revdepcheck.extras/future/revdep/checks/envi/new/envi.Rcheck/00install.out’ for details.
    ```

# EpiNow2

<details>

* Version: 1.3.2
* GitHub: https://github.com/epiforecasts/EpiNow2
* Source code: https://github.com/cran/EpiNow2
* Date/Publication: 2020-12-14 09:00:15 UTC
* Number of recursive dependencies: 153

Run `revdep_details(, "EpiNow2")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘EpiSoon’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 169.0Mb
      sub-directories of 1Mb or more:
        help    1.1Mb
        libs  166.7Mb
    ```

# ezcox

<details>

* Version: 0.8.1
* GitHub: https://github.com/ShixiangWang/ezcox
* Source code: https://github.com/cran/ezcox
* Date/Publication: 2021-03-16 11:40:02 UTC
* Number of recursive dependencies: 87

Run `revdep_details(, "ezcox")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# fabletools

<details>

* Version: 0.3.1
* GitHub: https://github.com/tidyverts/fabletools
* Source code: https://github.com/cran/fabletools
* Date/Publication: 2021-03-16 22:10:03 UTC
* Number of recursive dependencies: 95

Run `revdep_details(, "fabletools")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
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

# fipe

<details>

* Version: 0.0.1
* GitHub: https://github.com/italocegatta/fipe
* Source code: https://github.com/cran/fipe
* Date/Publication: 2019-08-25 07:20:06 UTC
* Number of recursive dependencies: 62

Run `revdep_details(, "fipe")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# flowGraph

<details>

* Version: 1.0.0
* GitHub: https://github.com/aya49/flowGraph
* Source code: https://github.com/cran/flowGraph
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 83

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
* Number of recursive dependencies: 132

Run `revdep_details(, "foieGras")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 41.0Mb
      sub-directories of 1Mb or more:
        libs  39.7Mb
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

# fundiversity

<details>

* Version: 0.2.0
* GitHub: https://github.com/Bisaloo/fundiversity
* Source code: https://github.com/cran/fundiversity
* Date/Publication: 2021-05-14 07:40:16 UTC
* Number of recursive dependencies: 67

Run `revdep_details(, "fundiversity")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘geometry’
      All declared Imports should be used.
    ```

# future.apply

<details>

* Version: 1.7.0
* GitHub: https://github.com/HenrikBengtsson/future.apply
* Source code: https://github.com/cran/future.apply
* Date/Publication: 2021-01-04 21:20:16 UTC
* Number of recursive dependencies: 14

Run `revdep_details(, "future.apply")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/future_lapply,globals.R’ failed.
    Last 50 lines of output:
      > y_truth <- list(A = NULL, B = list(1), C = list(1), D = list(2))
      > str(y_truth)
      List of 4
       $ A: NULL
       $ B:List of 1
        ..$ : num 1
       $ C:List of 1
    ...
      > message("*** future_lapply() - manual globals ...")
      *** future_lapply() - manual globals ...
      > 
      > d <- 42
      > y <- future_lapply(1:2, FUN = function(x) { x * d },
      +                    future.globals = structure(FALSE, add = "d"))
      Error in do.call(function(...) { : 
        object 'future.call.arguments' not found
      Calls: future_lapply ... resolve.list -> signalConditionsASAP -> signalConditions
      Execution halted
    ```

# future.tests

<details>

* Version: 0.2.1
* GitHub: https://github.com/HenrikBengtsson/future.tests
* Source code: https://github.com/cran/future.tests
* Date/Publication: 2020-03-20 12:40:05 UTC
* Number of recursive dependencies: 12

Run `revdep_details(, "future.tests")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# GetBCBData

<details>

* Version: 0.6
* GitHub: https://github.com/msperlin/GetBCBData
* Source code: https://github.com/cran/GetBCBData
* Date/Publication: 2021-01-21 17:40:07 UTC
* Number of recursive dependencies: 86

Run `revdep_details(, "GetBCBData")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RCurl’ ‘lubridate’ ‘readr’ ‘stats’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# googleComputeEngineR

<details>

* Version: 0.3.0
* GitHub: https://github.com/cloudyr/googleComputeEngineR
* Source code: https://github.com/cran/googleComputeEngineR
* Date/Publication: 2019-05-04 22:40:02 UTC
* Number of recursive dependencies: 66

Run `revdep_details(, "googleComputeEngineR")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
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

* Version: 1.9.0.9
* GitHub: https://github.com/HughParsonage/grattan
* Source code: https://github.com/cran/grattan
* Date/Publication: 2021-07-16 07:30:11 UTC
* Number of recursive dependencies: 115

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
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        libs   4.1Mb
    ```

# greed

<details>

* Version: 0.5.1
* GitHub: https://github.com/comeetie/greed
* Source code: https://github.com/cran/greed
* Date/Publication: 2021-05-10 06:50:03 UTC
* Number of recursive dependencies: 132

Run `revdep_details(, "greed")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 30.4Mb
      sub-directories of 1Mb or more:
        libs  27.9Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 6693 marked UTF-8 strings
    ```

# greta

<details>

* Version: 0.3.1
* GitHub: https://github.com/greta-dev/greta
* Source code: https://github.com/cran/greta
* Date/Publication: 2019-08-09 04:40:03 UTC
* Number of recursive dependencies: 151

Run `revdep_details(, "greta")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# gtfs2gps

<details>

* Version: 1.4-1
* GitHub: https://github.com/ipeaGIT/gtfs2gps
* Source code: https://github.com/cran/gtfs2gps
* Date/Publication: 2021-04-13 12:20:02 UTC
* Number of recursive dependencies: 87

Run `revdep_details(, "gtfs2gps")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘readr’
      All declared Imports should be used.
    ```

# gWQS

<details>

* Version: 3.0.4
* GitHub: NA
* Source code: https://github.com/cran/gWQS
* Date/Publication: 2021-05-20 09:30:02 UTC
* Number of recursive dependencies: 101

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
* Number of recursive dependencies: 63

Run `revdep_details(, "hackeRnews")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# hal9001

<details>

* Version: 0.2.7
* GitHub: https://github.com/tlverse/hal9001
* Source code: https://github.com/cran/hal9001
* Date/Publication: 2021-01-22 05:40:12 UTC
* Number of recursive dependencies: 92

Run `revdep_details(, "hal9001")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        libs   5.9Mb
    ```

# haldensify

<details>

* Version: 0.0.6
* GitHub: https://github.com/nhejazi/haldensify
* Source code: https://github.com/cran/haldensify
* Date/Publication: 2020-09-16 06:40:13 UTC
* Number of recursive dependencies: 83

Run `revdep_details(, "haldensify")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
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

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘iml-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: FeatureEffects
    > ### Title: Effect of a feature on predictions
    > ### Aliases: FeatureEffects
    > 
    > ### ** Examples
    > 
    > # We train a random forest on the Boston dataset:
    ...
    > rf <- rpart(medv ~ ., data = Boston)
    > mod <- Predictor$new(rf, data = Boston)
    > 
    > # Compute the accumulated local effects for all features
    > eff <- FeatureEffects$new(mod)
    > eff$plot()
    Error in do.call(function(...) { : 
      object 'future.call.arguments' not found
    Calls: <Anonymous> ... resolve.list -> signalConditionsASAP -> signalConditions
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
        6.       ├─data.table::rbindlist(...)
        7.       ├─base::unname(...)
        8.       └─future.apply::future_lapply(...)
        9.         └─future.apply:::future_xapply(...)
       10.           ├─future::value(fs)
       11.           └─future:::value.list(fs)
       12.             ├─future::resolve(...)
    ...
       10.           ├─future::value(fs)
       11.           └─future:::value.list(fs)
       12.             ├─future::resolve(...)
       13.             └─future:::resolve.list(...)
       14.               └─future:::signalConditionsASAP(obj, resignal = FALSE, pos = ii)
       15.                 └─future:::signalConditions(...)
      
      [ FAIL 10 | WARN 2 | SKIP 11 | PASS 458 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘keras’
      All declared Imports should be used.
    ```

# infercnv

<details>

* Version: 1.8.0
* GitHub: https://github.com/broadinstitute/inferCNV
* Source code: https://github.com/cran/infercnv
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 130

Run `revdep_details(, "infercnv")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        data      1.0Mb
        extdata   3.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘HiddenMarkov:::makedensity’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .single_tumor_leiden_subclustering: warning in leiden(adjacency_matrix,
      resolution = leiden_resolution): partial argument match of
      'resolution' to 'resolution_parameter'
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

# interflex

<details>

* Version: 1.2.6
* GitHub: NA
* Source code: https://github.com/cran/interflex
* Date/Publication: 2021-05-18 11:40:02 UTC
* Number of recursive dependencies: 115

Run `revdep_details(, "interflex")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        libs   4.5Mb
    ```

# ipc

<details>

* Version: 0.1.3
* GitHub: https://github.com/fellstat/ipc
* Source code: https://github.com/cran/ipc
* Date/Publication: 2019-06-23 06:00:03 UTC
* Number of recursive dependencies: 69

Run `revdep_details(, "ipc")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# isoreader

<details>

* Version: 1.3.0
* GitHub: https://github.com/isoverse/isoreader
* Source code: https://github.com/cran/isoreader
* Date/Publication: 2021-02-16 06:20:07 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "isoreader")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# jstor

<details>

* Version: 0.3.9
* GitHub: https://github.com/ropensci/jstor
* Source code: https://github.com/cran/jstor
* Date/Publication: 2020-06-04 04:50:03 UTC
* Number of recursive dependencies: 75

Run `revdep_details(, "jstor")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      ── Failure (test-writing-to-file.R:80:3): writing error messages to file works ──
      `res` not identical to `correct_res`.
      Objects equal but not identical
      ── Failure (test-writing-to-file.R:91:3): import wrapper works with column names ──
      read_csv("testfiles/correct_meta_data.csv", col_names = TRUE) not identical to read_csv(file.path(temp_dir, "/meta_data-1.csv"), col_names = TRUE).
      Objects equal but not identical
      ── Failure (test-writing-to-file.R:104:3): import wrapper works without column names ──
    ...
      Backtrace:
          █
       1. ├─expected_files %>% purrr::map(test_expected_zip) test-zip.R:51:2
       2. └─purrr::map(., test_expected_zip)
       3.   └─jstor:::.f(.x[[i]], ...)
       4.     └─testthat::expect_identical(...) test-zip.R:48:4
      
      [ FAIL 11 | WARN 1 | SKIP 4 | PASS 242 ]
      Error: Test failures
      Execution halted
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# kernelboot

<details>

* Version: 0.1.7
* GitHub: https://github.com/twolodzko/kernelboot
* Source code: https://github.com/cran/kernelboot
* Date/Publication: 2020-02-13 23:10:03 UTC
* Number of recursive dependencies: 64

Run `revdep_details(, "kernelboot")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# keyATM

<details>

* Version: 0.4.0
* GitHub: https://github.com/keyATM/keyATM
* Source code: https://github.com/cran/keyATM
* Date/Publication: 2021-02-14 17:40:02 UTC
* Number of recursive dependencies: 107

Run `revdep_details(, "keyATM")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 19.1Mb
      sub-directories of 1Mb or more:
        libs  18.5Mb
    ```

# lgr

<details>

* Version: 0.4.2
* GitHub: https://github.com/s-fleck/lgr
* Source code: https://github.com/cran/lgr
* Date/Publication: 2021-01-10 22:30:09 UTC
* Number of recursive dependencies: 61

Run `revdep_details(, "lgr")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# lidR

<details>

* Version: 3.1.4
* GitHub: https://github.com/Jean-Romain/lidR
* Source code: https://github.com/cran/lidR
* Date/Publication: 2021-06-21 14:40:02 UTC
* Number of recursive dependencies: 166

Run `revdep_details(, "lidR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 15.4Mb
      sub-directories of 1Mb or more:
        R         2.0Mb
        doc       1.0Mb
        extdata   1.1Mb
        libs     10.6Mb
    ```

# lightr

<details>

* Version: 1.5.0
* GitHub: https://github.com/ropensci/lightr
* Source code: https://github.com/cran/lightr
* Date/Publication: 2021-06-19 09:30:02 UTC
* Number of recursive dependencies: 71

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

# lmtp

<details>

* Version: 0.9.0
* GitHub: NA
* Source code: https://github.com/cran/lmtp
* Date/Publication: 2021-02-22 15:50:02 UTC
* Number of recursive dependencies: 107

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

*   checking examples ... ERROR
    ```
    Running examples in ‘meedr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_quarterly
    > ### Title: Get data on quarterly market expectations for economic
    > ###   indicators (Focus/BCB)
    > ### Aliases: get_quarterly
    > 
    > ### ** Examples
    > 
    ...
     1. └─meedr::get_quarterly(...)
     2.   ├─dplyr::rename_with(...)
     3.   └─dplyr:::rename_with.data.frame(...)
     4.     └─vctrs::vec_as_names(names, repair = "check_unique")
     5.       └─(function () ...
     6.         └─vctrs:::validate_unique(names = names, arg = arg)
     7.           └─vctrs:::stop_names_must_be_unique(names, arg)
     8.             └─vctrs:::stop_names(...)
     9.               └─vctrs:::stop_vctrs(class = c(class, "vctrs_error_names"), ...)
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lubridate’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# metagam

<details>

* Version: 0.2.0
* GitHub: https://github.com/Lifebrain/metagam
* Source code: https://github.com/cran/metagam
* Date/Publication: 2020-11-12 08:10:02 UTC
* Number of recursive dependencies: 145

Run `revdep_details(, "metagam")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# microservices

<details>

* Version: 0.1.2
* GitHub: https://github.com/tidylab/microservices
* Source code: https://github.com/cran/microservices
* Date/Publication: 2021-06-12 06:10:02 UTC
* Number of recursive dependencies: 69

Run `revdep_details(, "microservices")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘config’ ‘desc’ ‘dplyr’ ‘glue’ ‘withr’
      All declared Imports should be used.
    ```

# mikropml

<details>

* Version: 1.0.0
* GitHub: https://github.com/SchlossLab/mikropml
* Source code: https://github.com/cran/mikropml
* Date/Publication: 2021-05-13 23:20:06 UTC
* Number of recursive dependencies: 111

Run `revdep_details(, "mikropml")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        data   4.0Mb
    ```

# MineICA

<details>

* Version: 1.32.0
* GitHub: NA
* Source code: https://github.com/cran/MineICA
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 206

Run `revdep_details(, "MineICA")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘MineICA-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: IcaSet
    > ### Title: Class to Contain and Describe an ICA decomposition of
    > ###   High-Throughput Data.
    > ### Aliases: class:IcaSet IcaSet IcaSet-class [ [,ANY,ANY,IcaSet-method
    > ###   [,IcaSet,ANY-method [,IcaSet,ANY,ANY-method
    > ###   [,IcaSet,ANY,ANY,ANY-method [<- [<-,IcaSet,ANY,ANY,ANY,ANY-method
    > ###   [<-,IcaSet,ANY,ANY,ANY-method [<-,IcaSet,ANY,ANY-method organism
    ...
    > 
    > ### ** Examples
    > 
    > # create an instance of IcaSet
    > new("IcaSet")
    Ensembl site unresponsive, trying uswest mirror
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Peer's Certificate issuer is not recognized.
    Calls: new ... request_fetch -> request_fetch.write_memory -> <Anonymous>
    Execution halted
    ```

*   checking running R code from vignettes ...
    ```
      ‘MineICA.Rnw’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘MineICA.Rnw’
      ...
    [28] "hgu133aPROSITE"       "hgu133aREFSEQ"        "hgu133aSYMBOL"       
    [31] "hgu133aUNIPROT"       "hgu133a_dbInfo"       "hgu133a_dbconn"      
    [34] "hgu133a_dbfile"       "hgu133a_dbschema"    
    
    > mart <- useMart(biomart = "ensembl", dataset = "hsapiens_gene_ensembl")
    Ensembl site unresponsive, trying uswest mirror
    
      When sourcing ‘MineICA.R’:
    Error: Peer's Certificate issuer is not recognized.
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

# missSBM

<details>

* Version: 1.0.1
* GitHub: https://github.com/grossSBM/missSBM
* Source code: https://github.com/cran/missSBM
* Date/Publication: 2021-06-04 13:10:02 UTC
* Number of recursive dependencies: 100

Run `revdep_details(, "missSBM")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        libs   6.5Mb
    ```

# mistyR

<details>

* Version: 1.0.2
* GitHub: https://github.com/saezlab/mistyR
* Source code: https://github.com/cran/mistyR
* Date/Publication: 2021-05-27
* Number of recursive dependencies: 181

Run `revdep_details(, "mistyR")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      
      Collecting improvements
      Computing triangulation
      Generating juxtaview
      Generating paraview
      Generating paraview using 20 nearest neighbors per unit
      Approximating RBF matrix using the Nystrom method
    ...
        8.         ├─future::value(futures)
        9.         └─future:::value.list(futures)
       10.           ├─future::resolve(...)
       11.           └─future:::resolve.list(...)
       12.             └─future:::signalConditionsASAP(obj, resignal = FALSE, pos = ii)
       13.               └─future:::signalConditions(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 45 ]
      Error: Test failures
      Execution halted
    ```

# mlr3

<details>

* Version: 0.11.0
* GitHub: https://github.com/mlr-org/mlr3
* Source code: https://github.com/cran/mlr3
* Date/Publication: 2021-03-05 14:00:06 UTC
* Number of recursive dependencies: 58

Run `revdep_details(, "mlr3")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# momentuHMM

<details>

* Version: 1.5.3
* GitHub: https://github.com/bmcclintock/momentuHMM
* Source code: https://github.com/cran/momentuHMM
* Date/Publication: 2021-07-07 04:20:02 UTC
* Number of recursive dependencies: 203

Run `revdep_details(, "momentuHMM")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        R      2.0Mb
        doc    1.7Mb
        libs   5.6Mb
    ```

# mrgsim.parallel

<details>

* Version: 0.1.1
* GitHub: https://github.com/kylebaron/mrgsim.parallel
* Source code: https://github.com/cran/mrgsim.parallel
* Date/Publication: 2020-07-06 15:30:02 UTC
* Number of recursive dependencies: 45

Run `revdep_details(, "mrgsim.parallel")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# nfl4th

<details>

* Version: 1.0.0
* GitHub: https://github.com/guga31bb/nfl4th
* Source code: https://github.com/cran/nfl4th
* Date/Publication: 2021-03-17 13:20:08 UTC
* Number of recursive dependencies: 132

Run `revdep_details(, "nfl4th")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# onemapsgapi

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/onemapsgapi
* Date/Publication: 2020-02-06 11:00:02 UTC
* Number of recursive dependencies: 61

Run `revdep_details(, "onemapsgapi")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# OOS

<details>

* Version: 1.0.0
* GitHub: https://github.com/tylerJPike/OOS
* Source code: https://github.com/cran/OOS
* Date/Publication: 2021-03-17 13:20:20 UTC
* Number of recursive dependencies: 119

Run `revdep_details(, "OOS")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
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
* Number of recursive dependencies: 86

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
* Number of recursive dependencies: 103

Run `revdep_details(, "pavo")` for more info

</details>

## In both

*   checking whether package ‘pavo’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/scratch/henrik/revdepcheck.extras/future/revdep/checks/pavo/new/pavo.Rcheck/00install.out’ for details.
    ```

# penaltyLearning

<details>

* Version: 2020.5.13
* GitHub: https://github.com/tdhock/penaltyLearning
* Source code: https://github.com/cran/penaltyLearning
* Date/Publication: 2020-05-14 16:20:02 UTC
* Number of recursive dependencies: 60

Run `revdep_details(, "penaltyLearning")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      Expected match: "after filtering NA and constant features, none remain for training"
      Actual message: "object 'future.call.arguments' not found"
      Backtrace:
           █
        1. ├─testthat::expect_error(...) test-errors.R:110:2
        2. │ └─testthat:::quasi_capture(...)
        3. │   ├─testthat:::.capture(...)
    ...
       14.             ├─future::value(fs)
       15.             └─future:::value.list(fs)
       16.               ├─future::resolve(...)
       17.               └─future:::resolve.list(...)
       18.                 └─future:::signalConditionsASAP(obj, resignal = FALSE, pos = ii)
       19.                   └─future:::signalConditions(...)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 166 ]
      Error: Test failures
      Execution halted
    ```

# photosynthesis

<details>

* Version: 2.0.1
* GitHub: https://github.com/cdmuir/photosynthesis
* Source code: https://github.com/cran/photosynthesis
* Date/Publication: 2021-07-01 04:30:02 UTC
* Number of recursive dependencies: 99

Run `revdep_details(, "photosynthesis")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        doc    3.4Mb
        help   1.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
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

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘phylolm-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: phylolm
    > ### Title: Phylogenetic Linear Model
    > ### Aliases: phylolm
    > 
    > ### ** Examples
    > 
    > set.seed(123456)
    ...
    Note: p-values and R-squared are conditional on lambda=0.7180128.
    > 
    > # adding measurement errors and bootstrap
    > z <- y + rnorm(60,0,1)
    > dat = data.frame(trait=z[taxa],pred=x[taxa])
    > fit = phylolm(trait~pred,data=dat,phy=tre,model="BM",measurement_error=TRUE,boot=100)
    Error in do.call(function(...) { : 
      object 'future.call.arguments' not found
    Calls: phylolm ... resolve.list -> signalConditionsASAP -> signalConditions
    Execution halted
    ```

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
* Number of recursive dependencies: 188

Run `revdep_details(, "PLNmodels")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.0Mb
      sub-directories of 1Mb or more:
        doc    2.1Mb
        libs  10.0Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘DESeq2’
    ```

# plumber

<details>

* Version: 1.1.0
* GitHub: https://github.com/rstudio/plumber
* Source code: https://github.com/cran/plumber
* Date/Publication: 2021-03-24 05:10:02 UTC
* Number of recursive dependencies: 76

Run `revdep_details(, "plumber")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# ppcseq

<details>

* Version: 1.0.0
* GitHub: https://github.com/stemangiola/ppcseq
* Source code: https://github.com/cran/ppcseq
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 112

Run `revdep_details(, "ppcseq")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 45.9Mb
      sub-directories of 1Mb or more:
        data   1.5Mb
        libs  42.8Mb
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
* Number of recursive dependencies: 71

Run `revdep_details(, "prewas")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats’
      All declared Imports should be used.
    ```

# promises

<details>

* Version: 1.2.0.1
* GitHub: https://github.com/rstudio/promises
* Source code: https://github.com/cran/promises
* Date/Publication: 2021-02-11 19:00:02 UTC
* Number of recursive dependencies: 63

Run `revdep_details(, "promises")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# Prostar

<details>

* Version: 1.24.6
* GitHub: https://github.com/samWieczorek/Prostar
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2021-07-04
* Number of recursive dependencies: 318

Run `revdep_details(, "Prostar")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘BiocManager’ ‘DAPAR’ ‘DAPARdata’ ‘DT’ ‘R.utils’ ‘XML’ ‘colourpicker’
      ‘data.table’ ‘future’ ‘highcharter’ ‘htmlwidgets’ ‘later’ ‘promises’
      ‘rclipboard’ ‘rhandsontable’ ‘sass’ ‘shinyAce’ ‘shinyBS’ ‘shinyTree’
      ‘shinyWidgets’ ‘shinycssloaders’ ‘shinyjqui’ ‘shinyjs’ ‘shinythemes’
      ‘tibble’ ‘webshot’
      All declared Imports should be used.
    ```

# QDNAseq

<details>

* Version: 1.28.0
* GitHub: https://github.com/ccagc/QDNAseq
* Source code: https://github.com/cran/QDNAseq
* Date/Publication: 2021-05-19
* Number of recursive dependencies: 75

Run `revdep_details(, "QDNAseq")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# rangeMapper

<details>

* Version: 2.0.2
* GitHub: https://github.com/mpio-be/rangeMapper
* Source code: https://github.com/cran/rangeMapper
* Date/Publication: 2021-02-26 21:40:07 UTC
* Number of recursive dependencies: 116

Run `revdep_details(, "rangeMapper")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘rangeMapper-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: rmap_save_map
    > ### Title: Save maps
    > ### Aliases: rmap_save_map
    > ###   rmap_save_map,rmapConnection,missing,missing,missing,missing,missing-method
    > ###   rmap_save_map,rmapConnection,missing,missing,missing,character,character-method
    > ###   rmap_save_map,rmapConnection,character,character,character,missing,character-method
    > ###   rmap_save_map,rmapConnection,character,character,character,character,character-method
    ...
    +  subset='ss1', dst='mean_bodymass_high_SR')
    > 
    > linmod = function(x) {
    +   lm(clutch_size ~ log(female_tarsus), x) %>% 
    +   summary %>% coefficients %>% data.table %>% .[-1] }
    > rmap_save_map(con, fun= linmod, src='wrens', dst='slope_clutch_size')
    Error in do.call(function(...) { : 
      object 'future.call.arguments' not found
    Calls: rmap_save_map ... resolve.list -> signalConditionsASAP -> signalConditions
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
        1. ├─rangeMapper::rmap_save_map(con, fun = fun, src = "wrens", dst = "m") test-4_maps.R:80:4
        2. └─rangeMapper::rmap_save_map(con, fun = fun, src = "wrens", dst = "m")
        3.   └─rangeMapper:::.rmap_save2(...)
        4.     └─future.apply::future_lapply(...)
        5.       └─future.apply:::future_xapply(...)
        6.         ├─future::value(fs)
        7.         └─future:::value.list(fs)
    ...
       13.           ├─future::resolve(...)
       14.           └─future:::resolve.list(...)
       15.             └─future:::signalConditionsASAP(obj, resignal = FALSE, pos = ii)
       16.               └─future:::signalConditions(...)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 54 ]
      Error: Test failures
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

# regmedint

<details>

* Version: 0.2.1
* GitHub: https://github.com/kaz-yos/regmedint
* Source code: https://github.com/cran/regmedint
* Date/Publication: 2021-05-12 04:30:02 UTC
* Number of recursive dependencies: 120

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
* Number of recursive dependencies: 144

Run `revdep_details(, "rgee")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        doc    3.6Mb
        help   1.0Mb
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

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
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

* Version: 0.0.2
* GitHub: https://github.com/Abson-dev/sdmApp
* Source code: https://github.com/cran/sdmApp
* Date/Publication: 2021-07-07 08:30:02 UTC
* Number of recursive dependencies: 164

Run `revdep_details(, "sdmApp")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘sp’
      All declared Imports should be used.
    ```

# seer

<details>

* Version: 1.1.6
* GitHub: NA
* Source code: https://github.com/cran/seer
* Date/Publication: 2021-06-01 04:50:02 UTC
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

* Version: 4.0.3
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2021-06-10 21:20:02 UTC
* Number of recursive dependencies: 240

Run `revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.4Mb
      sub-directories of 1Mb or more:
        R      1.8Mb
        libs   9.9Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Signac’
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
      installed size is 12.4Mb
      sub-directories of 1Mb or more:
        R      2.0Mb
        help   1.2Mb
        www    8.8Mb
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

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# shinyrecap

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/shinyrecap
* Date/Publication: 2019-01-19 23:40:03 UTC
* Number of recursive dependencies: 95

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

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# sigminer

<details>

* Version: 2.0.3
* GitHub: https://github.com/ShixiangWang/sigminer
* Source code: https://github.com/cran/sigminer
* Date/Publication: 2021-07-18 23:10:07 UTC
* Number of recursive dependencies: 207

Run `revdep_details(, "sigminer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        extdata   2.7Mb
        libs      1.1Mb
    ```

# Signac

<details>

* Version: 1.3.0
* GitHub: https://github.com/timoast/signac
* Source code: https://github.com/cran/Signac
* Date/Publication: 2021-07-12 13:00:02 UTC
* Number of recursive dependencies: 242

Run `revdep_details(, "Signac")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        libs   2.5Mb
    ```

# simfinapi

<details>

* Version: 0.1.0
* GitHub: https://github.com/Plebejer/simfinapi
* Source code: https://github.com/cran/simfinapi
* Date/Publication: 2020-09-28 09:20:02 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "simfinapi")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# simglm

<details>

* Version: 0.8.0
* GitHub: https://github.com/lebebr01/simglm
* Source code: https://github.com/cran/simglm
* Date/Publication: 2020-06-12 20:10:02 UTC
* Number of recursive dependencies: 104

Run `revdep_details(, "simglm")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'sim_pow.Rd':
      ‘corStruct’
    
    Missing link or links in documentation object 'sim_pow_nested.Rd':
      ‘corStruct’
    
    Missing link or links in documentation object 'sim_pow_nested3.Rd':
      ‘corStruct’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
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

# sims

<details>

* Version: 0.0.2
* GitHub: NA
* Source code: https://github.com/cran/sims
* Date/Publication: 2021-01-18 15:50:02 UTC
* Number of recursive dependencies: 70

Run `revdep_details(, "sims")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# skpr

<details>

* Version: 0.66.5
* GitHub: https://github.com/tylermorganwall/skpr
* Source code: https://github.com/cran/skpr
* Date/Publication: 2021-05-11 21:20:02 UTC
* Number of recursive dependencies: 139

Run `revdep_details(, "skpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 50.4Mb
      sub-directories of 1Mb or more:
        libs  48.2Mb
    ```

# solitude

<details>

* Version: 1.1.1
* GitHub: https://github.com/talegari/solitude
* Source code: https://github.com/cran/solitude
* Date/Publication: 2020-09-17 10:10:07 UTC
* Number of recursive dependencies: 147

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
* Number of recursive dependencies: 101

Run `revdep_details(, "spacey")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgdal’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# spaMM

<details>

* Version: 3.8.9
* GitHub: NA
* Source code: https://github.com/cran/spaMM
* Date/Publication: 2021-06-28 05:00:06 UTC
* Number of recursive dependencies: 96

Run `revdep_details(, "spaMM")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'Infusion', 'IsoriX', 'blackbox'
    
    Packages which this enhances but not available for checking:
      'multcomp', 'RLRsim'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 46.0Mb
      sub-directories of 1Mb or more:
        R      2.0Mb
        libs  43.0Mb
    ```

# sparrpowR

<details>

* Version: 0.2.3
* GitHub: https://github.com/machiela-lab/sparrpowR
* Source code: https://github.com/cran/sparrpowR
* Date/Publication: 2021-07-16 07:30:02 UTC
* Number of recursive dependencies: 98

Run `revdep_details(, "sparrpowR")` for more info

</details>

## In both

*   checking whether package ‘sparrpowR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/scratch/henrik/revdepcheck.extras/future/revdep/checks/sparrpowR/new/sparrpowR.Rcheck/00install.out’ for details.
    ```

# SPARSEMODr

<details>

* Version: 1.1.0
* GitHub: https://github.com/NAU-CCL/SPARSEMODr
* Source code: https://github.com/cran/SPARSEMODr
* Date/Publication: 2021-07-01 17:50:02 UTC
* Number of recursive dependencies: 116

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

* Version: 3.0.0
* GitHub: https://github.com/spatial-ews/spatialwarnings
* Source code: https://github.com/cran/spatialwarnings
* Date/Publication: 2021-05-20 00:30:10 UTC
* Number of recursive dependencies: 82

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
        data   1.1Mb
        libs   5.2Mb
    ```

# spNetwork

<details>

* Version: 0.1.1
* GitHub: https://github.com/JeremyGelb/spNetwork
* Source code: https://github.com/cran/spNetwork
* Date/Publication: 2021-01-21 23:30:02 UTC
* Number of recursive dependencies: 119

Run `revdep_details(, "spNetwork")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        extdata   5.6Mb
        libs      3.6Mb
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# stars

<details>

* Version: 0.5-3
* GitHub: https://github.com/r-spatial/stars
* Source code: https://github.com/cran/stars
* Date/Publication: 2021-06-08 14:50:02 UTC
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
      installed size is  8.9Mb
      sub-directories of 1Mb or more:
        doc   2.4Mb
        nc    4.5Mb
    ```

# startR

<details>

* Version: 2.1.0
* GitHub: NA
* Source code: https://github.com/cran/startR
* Date/Publication: 2020-10-29 17:40:02 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "startR")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# synergyfinder

<details>

* Version: 3.0.13
* GitHub: NA
* Source code: https://github.com/cran/synergyfinder
* Date/Publication: 2021-07-18
* Number of recursive dependencies: 177

Run `revdep_details(, "synergyfinder")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        doc   5.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘gstat’ ‘nleqslv’ ‘sp’ ‘tidyverse’
      All declared Imports should be used.
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
      input_type label left metric n pred r response response_CI95
      response_mean response_origin response_origin_CI95
      response_origin_mean response_origin_sd response_origin_sem
      response_sd response_sem right start synergy text theta value x y
    Consider adding
      importFrom("grDevices", "colorRampPalette")
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

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# targets

<details>

* Version: 0.4.2
* GitHub: https://github.com/ropensci/targets
* Source code: https://github.com/cran/targets
* Date/Publication: 2021-04-30 08:50:02 UTC
* Number of recursive dependencies: 138

Run `revdep_details(, "targets")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘arrow’
    ```

# tcplfit2

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/tcplfit2
* Date/Publication: 2021-07-14 08:30:02 UTC
* Number of recursive dependencies: 26

Run `revdep_details(, "tcplfit2")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stringi’
      All declared Imports should be used.
    ```

# text

<details>

* Version: 0.9.10
* GitHub: https://github.com/OscarKjell/text
* Source code: https://github.com/cran/text
* Date/Publication: 2020-12-14 09:50:02 UTC
* Number of recursive dependencies: 141

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
* Number of recursive dependencies: 101

Run `revdep_details(, "TKCat")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘base64enc’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# TriDimRegression

<details>

* Version: 1.0.0.0
* GitHub: https://github.com/alexander-pastukhov/tridim-regression
* Source code: https://github.com/cran/TriDimRegression
* Date/Publication: 2021-05-04 07:00:16 UTC
* Number of recursive dependencies: 91

Run `revdep_details(, "TriDimRegression")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 41.5Mb
      sub-directories of 1Mb or more:
        libs  40.8Mb
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

# tsfeatures

<details>

* Version: 1.0.2
* GitHub: https://github.com/robjhyndman/tsfeatures
* Source code: https://github.com/cran/tsfeatures
* Date/Publication: 2020-06-07 16:10:02 UTC
* Number of recursive dependencies: 94

Run `revdep_details(, "tsfeatures")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
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

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# UCSCXenaShiny

<details>

* Version: 1.1.0
* GitHub: https://github.com/openbiox/UCSCXenaShiny
* Source code: https://github.com/cran/UCSCXenaShiny
* Date/Publication: 2021-07-16 11:20:02 UTC
* Number of recursive dependencies: 205

Run `revdep_details(, "UCSCXenaShiny")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        data       1.9Mb
        doc        1.1Mb
        shinyapp   3.4Mb
    ```

# XNAString

<details>

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/XNAString
* Date/Publication: 2021-06-03
* Number of recursive dependencies: 92

Run `revdep_details(, "XNAString")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘XNAString-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: dt2Set
    > ### Title: Function which creates XNAstringSet object from table with base,
    > ###   sugar and backbone columns.
    > ### Aliases: dt2Set
    > 
    > ### ** Examples
    > 
    ...
    > dt <- data.table::data.table(
    +   base = c("TT", "GG"),
    +   sugar = c("FF", "FO"),
    +   backbone = c("S", "S")
    + )
    > dt2Set(dt)
    Error in do.call(function(...) { : 
      object 'future.call.arguments' not found
    Calls: dt2Set ... resolve.list -> signalConditionsASAP -> signalConditions
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      ── Error (test_XNAStringSetClass.R:237:23): checks if creation of XNAStringSet from data.table 
                          (or data.frame) works ──
      Error: object 'future.call.arguments' not found
      Backtrace:
           █
        1. └─XNAString::dt2Set(dt, "base_t", "sugar_t", "backbone_t") test_XNAStringSetClass.R:237:22
        2.   └─future.apply::future_sapply(...)
    ...
        6.         ├─future::value(fs)
        7.         └─future:::value.list(fs)
        8.           ├─future::resolve(...)
        9.           └─future:::resolve.list(...)
       10.             └─future:::signalConditionsASAP(obj, resignal = FALSE, pos = ii)
       11.               └─future:::signalConditions(...)
      
      [ FAIL 7 | WARN 0 | SKIP 0 | PASS 141 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.9Mb
      sub-directories of 1Mb or more:
        libs   9.7Mb
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

