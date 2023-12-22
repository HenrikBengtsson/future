# AIPW

<details>

* Version: 0.6.3.2
* GitHub: https://github.com/yqzhong7/AIPW
* Source code: https://github.com/cran/AIPW
* Date/Publication: 2021-06-11 09:30:02 UTC
* Number of recursive dependencies: 102

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

* Version: 4.4.0
* GitHub: https://github.com/sipss/AlpsNMR
* Source code: https://github.com/cran/AlpsNMR
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 187

Run `revdep_details(, "AlpsNMR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Vig01-introduction-to-alpsnmr.Rmd’ using rmarkdown
    Error: processing vignette 'Vig01-introduction-to-alpsnmr.Rmd' failed with diagnostics:
    LaTeX failed to compile /wynton/home/cbi/hb/repositories/future/revdep/checks/AlpsNMR/new/AlpsNMR.Rcheck/vign_test/AlpsNMR/vignettes/Vig01-introduction-to-alpsnmr.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips.
    --- failed re-building ‘Vig01-introduction-to-alpsnmr.Rmd’
    
    --- re-building ‘Vig01b-introduction-to-alpsnmr-old-api.Rmd’ using rmarkdown
    Error: processing vignette 'Vig01b-introduction-to-alpsnmr-old-api.Rmd' failed with diagnostics:
    LaTeX failed to compile /wynton/home/cbi/hb/repositories/future/revdep/checks/AlpsNMR/new/AlpsNMR.Rcheck/vign_test/AlpsNMR/vignettes/Vig01b-introduction-to-alpsnmr-old-api.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips.
    ...
    LaTeX failed to compile /wynton/home/cbi/hb/repositories/future/revdep/checks/AlpsNMR/new/AlpsNMR.Rcheck/vign_test/AlpsNMR/vignettes/Vig02-handling-metadata-and-annotations.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips.
    --- failed re-building ‘Vig02-handling-metadata-and-annotations.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘Vig01-introduction-to-alpsnmr.Rmd’
      ‘Vig01b-introduction-to-alpsnmr-old-api.Rmd’
      ‘Vig02-handling-metadata-and-annotations.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# aroma.core

<details>

* Version: 3.3.0
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2022-11-15 18:30:13 UTC
* Number of recursive dependencies: 72

Run `revdep_details(, "aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

# bamm

<details>

* Version: 0.4.3
* GitHub: https://github.com/luismurao/bamm
* Source code: https://github.com/cran/bamm
* Date/Publication: 2022-12-20 11:10:05 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "bamm")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

# batchtools

<details>

* Version: 0.9.17
* GitHub: https://github.com/mllg/batchtools
* Source code: https://github.com/cran/batchtools
* Date/Publication: 2023-04-20 14:20:06 UTC
* Number of recursive dependencies: 84

Run `revdep_details(, "batchtools")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    dev3:pid2802163: PSM3 can't open nic unit: 0 (err=23)
    dev3:pid2802163.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
    dev3:pid2802163.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
    dev3:pid2802163: PSM3 can't open nic unit: 0 (err=23)
    dev3:pid2802163.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
    dev3:pid2802163.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
    dev3:pid2802163: PSM3 can't open nic unit: 0 (err=23)
    dev3:pid2802163.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
    dev3:pid2802163.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
    --------------------------------------------------------------------------
    ...
    dev3:pid2802163.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
    dev3:pid2802163.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
    --------------------------------------------------------------------------
    Open MPI failed an OFI Libfabric library call (fi_endpoint).  This is highly
    unusual; your job may behave unpredictably (and/or abort) after this.
    
      Local host: dev3
      Location: mtl_ofi_component.c:513
      Error: Invalid argument (22)
    --------------------------------------------------------------------------
    ```

*   checking for detritus in the temp directory ... NOTE
    ```
    Found the following files/directories:
      ‘ompi.dev3.34002’
    ```

# BEKKs

<details>

* Version: 1.4.3
* GitHub: NA
* Source code: https://github.com/cran/BEKKs
* Date/Publication: 2023-03-26 11:00:02 UTC
* Number of recursive dependencies: 99

Run `revdep_details(, "BEKKs")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        libs   7.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘forecast’
      All declared Imports should be used.
    ```

# bigDM

<details>

* Version: 0.5.3
* GitHub: https://github.com/spatialstatisticsupna/bigDM
* Source code: https://github.com/cran/bigDM
* Date/Publication: 2023-10-17 12:50:02 UTC
* Number of recursive dependencies: 135

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

* Version: 1.1.2
* GitHub: https://github.com/alexander-pastukhov/bistablehistory
* Source code: https://github.com/cran/bistablehistory
* Date/Publication: 2023-09-13 13:20:09 UTC
* Number of recursive dependencies: 92

Run `revdep_details(, "bistablehistory")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 22.5Mb
      sub-directories of 1Mb or more:
        libs  22.3Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# blavaan

<details>

* Version: 0.5-2
* GitHub: NA
* Source code: https://github.com/cran/blavaan
* Date/Publication: 2023-09-25 22:20:02 UTC
* Number of recursive dependencies: 98

Run `revdep_details(, "blavaan")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 53.8Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        libs  52.6Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# brms

<details>

* Version: 2.20.4
* GitHub: https://github.com/paul-buerkner/brms
* Source code: https://github.com/cran/brms
* Date/Publication: 2023-09-25 19:00:09 UTC
* Number of recursive dependencies: 200

Run `revdep_details(, "brms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

# brpop

<details>

* Version: 0.3.0
* GitHub: NA
* Source code: https://github.com/cran/brpop
* Date/Publication: 2023-10-24 13:20:02 UTC
* Number of recursive dependencies: 45

Run `revdep_details(, "brpop")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      Backtrace:
           ▆
        1. ├─brpop::regsaude_female_pop(type = "reg_saude_449") at test-regsaude_female_pop.R:8:3
        2. │ └─... %>% dplyr::ungroup()
        3. ├─dplyr::ungroup(.)
        4. ├─dplyr::collect(.)
    ...
        7. │ └─multidplyr::cluster_assign_each(cluster, `:=`(!!name, shards))
        8. │   └─multidplyr::cluster_assign(...)
        9. └─base::loadNamespace(x)
       10.   └─base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
       11.     └─base (local) withOneRestart(expr, restarts[[1L]])
       12.       └─base (local) doWithOneRestart(return(expr), restart)
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 6 ]
      Error: Test failures
      Execution halted
    ```

# campsis

<details>

* Version: 1.5.0
* GitHub: https://github.com/Calvagone/campsis
* Source code: https://github.com/cran/campsis
* Date/Publication: 2023-10-13 13:40:02 UTC
* Number of recursive dependencies: 161

Run `revdep_details(, "campsis")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
              comment = NA_character_), new("theta", unit = NA_character_, 
              name = "V2", index = 3L, value = 80, fix = FALSE, label = NA_character_, 
              comment = NA_character_), new("theta", unit = NA_character_, 
              name = "V3", index = 4L, value = 20, fix = FALSE, label = NA_character_, 
              comment = NA_character_), new("theta", unit = NA_character_, 
              name = "Q", index = 5L, value = 4, fix = FALSE, label = NA_character_, 
    ...
      Deleting unused snapshots:
      • testDefaultPlots/scatterplot-colour-scenario.svg
      • testDefaultPlots/scatterplot-no-colour.svg
      • testDefaultPlots/shadedplot-colour-arm-strat-wt.svg
      • testDefaultPlots/shadedplot-colour-arm-wt-strat-wt.svg
      • testDefaultPlots/shadedplot-colour-scenario.svg
      • testDefaultPlots/spaghettiplot-colour-arm-strat-wt.svg
      • testDefaultPlots/spaghettiplot-colour-scenario.svg
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘campsis.Rmd’ using rmarkdown
    
    Quitting from lines 43-45 [unnamed-chunk-4] (campsis.Rmd)
    Error: processing vignette 'campsis.Rmd' failed with diagnostics:
    ℹ In index: 1.
    Caused by error:
    ℹ In index: 1.
    Caused by error in `loadNamespace()`:
    ! there is no package called 'qs'
    --- failed re-building ‘campsis.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘campsis.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# ceRNAnetsim

<details>

* Version: 1.14.1
* GitHub: https://github.com/selcenari/ceRNAnetsim
* Source code: https://github.com/cran/ceRNAnetsim
* Date/Publication: 2023-12-18
* Number of recursive dependencies: 101

Run `revdep_details(, "ceRNAnetsim")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    simulate: no visible binding for global variable ‘avg_count_current’
    simulate: no visible binding for global variable ‘avg_count_pre’
    Undefined global functions or variables:
      avg_count_current avg_count_pre
    ```

# ChromSCape

<details>

* Version: 1.12.0
* GitHub: https://github.com/vallotlab/ChromSCape
* Source code: https://github.com/cran/ChromSCape
* Date/Publication: 2023-10-25
* Number of recursive dependencies: 235

Run `revdep_details(, "ChromSCape")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘qs’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# clickR

<details>

* Version: 0.9.39
* GitHub: NA
* Source code: https://github.com/cran/clickR
* Date/Publication: 2023-08-07 17:40:06 UTC
* Number of recursive dependencies: 9

Run `revdep_details(, "clickR")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# codebook

<details>

* Version: 0.9.2
* GitHub: https://github.com/rubenarslan/codebook
* Source code: https://github.com/cran/codebook
* Date/Publication: 2020-06-06 23:40:03 UTC
* Number of recursive dependencies: 158

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

# collinear

<details>

* Version: 1.1.1
* GitHub: NA
* Source code: https://github.com/cran/collinear
* Date/Publication: 2023-12-08 08:50:02 UTC
* Number of recursive dependencies: 55

Run `revdep_details(, "collinear")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 89 marked Latin-1 strings
      Note: found 1203 marked UTF-8 strings
    ```

# cSEM

<details>

* Version: 0.5.0
* GitHub: https://github.com/M-E-Rademaker/cSEM
* Source code: https://github.com/cran/cSEM
* Date/Publication: 2022-11-24 17:50:05 UTC
* Number of recursive dependencies: 128

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
* Number of recursive dependencies: 77

Run `revdep_details(, "CSGo")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘extrafont’ ‘future’
      All declared Imports should be used.
    ```

# dispositionEffect

<details>

* Version: 1.0.1
* GitHub: https://github.com/marcozanotti/dispositionEffect
* Source code: https://github.com/cran/dispositionEffect
* Date/Publication: 2022-05-30 07:50:02 UTC
* Number of recursive dependencies: 136

Run `revdep_details(, "dispositionEffect")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      ── Failure ('test-realized_duration.R:113:2'): realized_duration works (realized_only = TRUE) ──
      realized_duration(...) not equal to c(...).
      1/4 mismatches
      [2] 34 - 28 == 6
      ── Failure ('test-realized_duration.R:116:2'): realized_duration works (realized_only = TRUE) ──
      realized_duration(...) not equal to c(...).
    ...
      1/4 mismatches
      [2] 34 - 28 == 6
      ── Failure ('test-realized_duration.R:161:2'): realized_duration works (realized_only = TRUE) ──
      realized_duration(...) not equal to c(...).
      1/4 mismatches
      [1] 34 - 28 == 6
      
      [ FAIL 36 | WARN 0 | SKIP 0 | PASS 331 ]
      Error: Test failures
      Execution halted
    ```

# dragon

<details>

* Version: 1.2.1
* GitHub: https://github.com/sjspielman/dragon
* Source code: https://github.com/cran/dragon
* Date/Publication: 2022-04-08 08:42:33 UTC
* Number of recursive dependencies: 131

Run `revdep_details(, "dragon")` for more info

</details>

## In both

*   checking package subdirectories ... NOTE
    ```
    Problems with news in ‘NEWS.md’:
    No news entries found.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘htmltools’
      All declared Imports should be used.
    ```

# drake

<details>

* Version: 7.13.8
* GitHub: https://github.com/ropensci/drake
* Source code: https://github.com/cran/drake
* Date/Publication: 2023-11-06 15:40:02 UTC
* Number of recursive dependencies: 165

Run `revdep_details(, "drake")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘qs’
    ```

# EFAtools

<details>

* Version: 0.4.4
* GitHub: https://github.com/mdsteiner/EFAtools
* Source code: https://github.com/cran/EFAtools
* Date/Publication: 2023-01-06 14:50:40 UTC
* Number of recursive dependencies: 94

Run `revdep_details(, "EFAtools")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘progress’
      All declared Imports should be used.
    ```

# EGAnet

<details>

* Version: 2.0.3
* GitHub: https://github.com/hfgolino/EGAnet
* Source code: https://github.com/cran/EGAnet
* Date/Publication: 2023-11-17 17:30:05 UTC
* Number of recursive dependencies: 190

Run `revdep_details(, "EGAnet")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘EGAnet-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: community.detection
    > ### Title: Apply a Community Detection Algorithm
    > ### Aliases: community.detection
    > 
    > ### ** Examples
    > 
    > # Load data
    ...
        1     1     1     1     1     2     2     2     3     3     2     2     3 
    wmt14 wmt15 wmt16 wmt17 wmt18 
        3     2     3     2     2 
    > 
    > # Compute Optimal (identifies maximum modularity solution)
    > community.detection(network, algorithm = "optimal")
    Error in (function (graph, weights = NULL)  : 
      At core/community/optimal_modularity.c:86 : GLPK is not available, Unimplemented function call
    Calls: community.detection -> do.call -> <Anonymous>
    Execution halted
    ```

# envi

<details>

* Version: 0.1.17
* GitHub: https://github.com/lance-waller-lab/envi
* Source code: https://github.com/cran/envi
* Date/Publication: 2023-02-02 00:40:02 UTC
* Number of recursive dependencies: 110

Run `revdep_details(, "envi")` for more info

</details>

## In both

*   checking whether package ‘envi’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/envi/new/envi.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RStoolbox’
    ```

# EpiNow2

<details>

* Version: 1.4.0
* GitHub: https://github.com/epiforecasts/EpiNow2
* Source code: https://github.com/cran/EpiNow2
* Date/Publication: 2023-09-26 12:00:02 UTC
* Number of recursive dependencies: 129

Run `revdep_details(, "EpiNow2")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 77.1Mb
      sub-directories of 1Mb or more:
        libs  76.3Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# epitweetr

<details>

* Version: 2.2.16
* GitHub: https://github.com/EU-ECDC/epitweetr
* Source code: https://github.com/cran/epitweetr
* Date/Publication: 2023-11-15 09:30:08 UTC
* Number of recursive dependencies: 149

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
      ‘httpuv’ ‘knitr’ ‘plyr’ ‘tidyverse’ ‘xml2’
      All declared Imports should be used.
    ```

# fastRhockey

<details>

* Version: 0.4.0
* GitHub: https://github.com/sportsdataverse/fastRhockey
* Source code: https://github.com/cran/fastRhockey
* Date/Publication: 2022-10-25 20:55:15 UTC
* Number of recursive dependencies: 116

Run `revdep_details(, "fastRhockey")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘qs’
    ```

# fdacluster

<details>

* Version: 0.3.0
* GitHub: https://github.com/astamm/fdacluster
* Source code: https://github.com/cran/fdacluster
* Date/Publication: 2023-07-04 15:53:04 UTC
* Number of recursive dependencies: 120

Run `revdep_details(, "fdacluster")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.6Mb
      sub-directories of 1Mb or more:
        R      1.7Mb
        libs   7.8Mb
    ```

# fect

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/fect
* Date/Publication: 2022-10-14 09:52:32 UTC
* Number of recursive dependencies: 81

Run `revdep_details(, "fect")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        libs   6.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘panelView’
      All declared Imports should be used.
    ```

# FLAMES

<details>

* Version: 1.8.0
* GitHub: https://github.com/OliverVoogd/FLAMES
* Source code: https://github.com/cran/FLAMES
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 255

Run `revdep_details(, "FLAMES")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘FLAMES-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: sc_heatmap_expression
    > ### Title: FLAMES heetmap plots
    > ### Aliases: sc_heatmap_expression
    > 
    > ### ** Examples
    > 
    > combined_sce <- combine_sce(
    ...
    > sc_heatmap_expression(gene = "ENSG00000108107", multiAssay = combined_sce)
    Running PCA for experiments(multiAssay)$gene_counts ...
    harmonizing input:
      removing 257 sampleMap rows with 'colname' not in colnames of experiments
      removing 236 colData rownames not in sampleMap 'primary'
    Running UMAP for experiments(multiAssay)$gene_counts ...
    Error in irlba::irlba(L, nv = n, nu = 0, maxit = iters) : 
      function 'as_cholmod_sparse' not provided by package 'Matrix'
    Calls: sc_heatmap_expression ... irlba_tsvd_normalized_laplacian_init -> irlba_spectral_tsvd
    Execution halted
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking whether package ‘FLAMES’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/FLAMES/new/FLAMES.Rcheck/00install.out’ for details.
    ```

*   checking R code for possible problems ... NOTE
    ```
    annotation_to_fasta: no visible global function definition for
      'write.table'
    generate_sc_sce: no visible binding for global variable 'FSM_match'
    plot_coverage: no visible binding for global variable 'x'
    plot_coverage: no visible binding for global variable 'transcript'
    plot_coverage: no visible binding for global variable 'length_bin'
    plot_demultiplex: no visible binding for global variable 'Freq'
    plot_demultiplex: no visible binding for global variable '.'
    plot_demultiplex: no visible binding for global variable 'x'
    plot_demultiplex: no visible binding for global variable
    ...
    sc_umap_expression : plot_idx: no visible binding for global variable
      'y'
    transcript_coverage: no visible binding for global variable 'mat'
    Undefined global functions or variables:
      . BarcodeEditDist FSM_match FlankEditDist Freq all_vars cell_id cnt
      everything gene_id heatmap_annotation_colors label length_bin mat n
      name tr_id transcript transcript_id value write.table x y
    Consider adding
      importFrom("utils", "write.table")
    to your NAMESPACE file.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# flowGraph

<details>

* Version: 1.10.0
* GitHub: https://github.com/aya49/flowGraph
* Source code: https://github.com/cran/flowGraph
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 94

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

*   checking for non-standard things in the check directory ... NOTE
    ```
    Found the following files/directories:
      ‘temp’ ‘tmp’
    ```

# forecastML

<details>

* Version: 0.9.0
* GitHub: https://github.com/nredell/forecastML
* Source code: https://github.com/cran/forecastML
* Date/Publication: 2020-05-07 15:10:17 UTC
* Number of recursive dependencies: 105

Run `revdep_details(, "forecastML")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dtplyr’
      All declared Imports should be used.
    ```

# future.batchtools

<details>

* Version: 0.12.1
* GitHub: https://github.com/HenrikBengtsson/future.batchtools
* Source code: https://github.com/cran/future.batchtools
* Date/Publication: 2023-12-20 12:20:02 UTC
* Number of recursive dependencies: 36

Run `revdep_details(, "future.batchtools")` for more info

</details>

## In both

*   checking for non-standard things in the check directory ... NOTE
    ```
    Found the following files/directories:
      ‘.future-set-during-startup’
    ```

# googleComputeEngineR

<details>

* Version: 0.3.0
* GitHub: https://github.com/cloudyr/googleComputeEngineR
* Source code: https://github.com/cran/googleComputeEngineR
* Date/Publication: 2019-05-04 22:40:02 UTC
* Number of recursive dependencies: 69

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
* Number of recursive dependencies: 71

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
* Number of recursive dependencies: 98

Run `revdep_details(, "greed")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 17.1Mb
      sub-directories of 1Mb or more:
        libs  16.5Mb
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
* Number of recursive dependencies: 77

Run `revdep_details(, "gsynth")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

# gtfs2gps

<details>

* Version: 2.1-1
* GitHub: https://github.com/ipeaGIT/gtfs2gps
* Source code: https://github.com/cran/gtfs2gps
* Date/Publication: 2023-04-28 19:50:02 UTC
* Number of recursive dependencies: 90

Run `revdep_details(, "gtfs2gps")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(gtfs2gps)
      gtfs2gps version 2.1-1 is now loaded
      NOTE: All filter functions from gtfs2gps were removed
      Please replace them by similar functions from gtfstools
      > library(magrittr)
    ...
       4.     └─terra (local) .local(x, ...)
       5.       ├─terra::makeValid(x)
       6.       └─terra::makeValid(x)
       7.         └─terra (local) .local(x, ...)
       8.           └─terra:::messages(x)
       9.             └─terra:::error(f, x@cpp$getError())
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 119 ]
      Error: Test failures
      Execution halted
    ```

# hackeRnews

<details>

* Version: 0.1.0
* GitHub: https://github.com/szymanskir/hackeRnews
* Source code: https://github.com/cran/hackeRnews
* Date/Publication: 2019-12-13 13:20:05 UTC
* Number of recursive dependencies: 71

Run `revdep_details(, "hackeRnews")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# hero

<details>

* Version: 0.6
* GitHub: NA
* Source code: https://github.com/cran/hero
* Date/Publication: 2023-07-15 21:10:09 UTC
* Number of recursive dependencies: 162

Run `revdep_details(, "hero")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    dev3:pid3635515: PSM3 can't open nic unit: 0 (err=23)
    dev3:pid3635515.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
    dev3:pid3635515.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
    dev3:pid3635515: PSM3 can't open nic unit: 0 (err=23)
    dev3:pid3635515.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
    dev3:pid3635515.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
    dev3:pid3635515: PSM3 can't open nic unit: 0 (err=23)
    dev3:pid3635515.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
    dev3:pid3635515.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
    --------------------------------------------------------------------------
    ...
    dev3:pid3635515.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
    dev3:pid3635515.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
    --------------------------------------------------------------------------
    Open MPI failed an OFI Libfabric library call (fi_endpoint).  This is highly
    unusual; your job may behave unpredictably (and/or abort) after this.
    
      Local host: dev3
      Location: mtl_ofi_component.c:513
      Error: Invalid argument (22)
    --------------------------------------------------------------------------
    ```

*   checking for detritus in the temp directory ... NOTE
    ```
    Found the following files/directories:
      ‘ompi.dev3.34002’
    ```

# hoopR

<details>

* Version: 2.1.0
* GitHub: https://github.com/sportsdataverse/hoopR
* Source code: https://github.com/cran/hoopR
* Date/Publication: 2023-11-25 23:40:20 UTC
* Number of recursive dependencies: 116

Run `revdep_details(, "hoopR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘qs’
    ```

# hwep

<details>

* Version: 2.0.2
* GitHub: https://github.com/dcgerard/hwep
* Source code: https://github.com/cran/hwep
* Date/Publication: 2023-05-16 17:40:02 UTC
* Number of recursive dependencies: 110

Run `revdep_details(, "hwep")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 28.1Mb
      sub-directories of 1Mb or more:
        libs  27.7Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# infercnv

<details>

* Version: 1.18.1
* GitHub: https://github.com/broadinstitute/inferCNV
* Source code: https://github.com/cran/infercnv
* Date/Publication: 2023-12-01
* Number of recursive dependencies: 205

Run `revdep_details(, "infercnv")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘HiddenMarkov:::makedensity’
      See the note in ?`:::` about the use of this operator.
    ```

# InPAS

<details>

* Version: 2.10.0
* GitHub: NA
* Source code: https://github.com/cran/InPAS
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 172

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
* Number of recursive dependencies: 103

Run `revdep_details(, "interflex")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

# ivmte

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/ivmte
* Date/Publication: 2021-09-17 12:20:07 UTC
* Number of recursive dependencies: 112

Run `revdep_details(, "ivmte")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'gurobi', 'cplexAPI'
    ```

# keyATM

<details>

* Version: 0.5.0
* GitHub: https://github.com/keyATM/keyATM
* Source code: https://github.com/cran/keyATM
* Date/Publication: 2023-05-11 07:20:03 UTC
* Number of recursive dependencies: 107

Run `revdep_details(, "keyATM")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.3Mb
      sub-directories of 1Mb or more:
        libs   9.1Mb
    ```

# ldsr

<details>

* Version: 0.0.2
* GitHub: https://github.com/ntthung/ldsr
* Source code: https://github.com/cran/ldsr
* Date/Publication: 2020-05-04 14:40:09 UTC
* Number of recursive dependencies: 80

Run `revdep_details(, "ldsr")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

# lidR

<details>

* Version: 4.0.4
* GitHub: https://github.com/r-lidar/lidR
* Source code: https://github.com/cran/lidR
* Date/Publication: 2023-09-07 15:20:05 UTC
* Number of recursive dependencies: 155

Run `revdep_details(, "lidR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        libs   6.8Mb
    ```

# lightr

<details>

* Version: 1.7.0
* GitHub: https://github.com/ropensci/lightr
* Source code: https://github.com/cran/lightr
* Date/Publication: 2022-05-14 13:50:02 UTC
* Number of recursive dependencies: 88

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

* Version: 1.8.0
* GitHub: https://github.com/KechrisLab/MAI
* Source code: https://github.com/cran/MAI
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 178

Run `revdep_details(, "MAI")` for more info

</details>

## In both

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

# migraph

<details>

* Version: 1.2.1
* GitHub: https://github.com/snlab-ch/migraph
* Source code: https://github.com/cran/migraph
* Date/Publication: 2023-12-17 22:30:02 UTC
* Number of recursive dependencies: 115

Run `revdep_details(, "migraph")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘migraph-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: community
    > ### Title: Community partitioning algorithms
    > ### Aliases: community node_optimal node_kernighanlin node_edge_betweenness
    > ###   node_fast_greedy node_leading_eigen node_walktrap node_infomap
    > ###   node_spinglass node_louvain node_leiden
    > 
    > ### ** Examples
    > 
    > node_optimal(ison_adolescents)
    Error in igraph::cluster_optimal(manynet::as_igraph(.data)) : 
      At core/community/optimal_modularity.c:86 : GLPK is not available, Unimplemented function call
    Calls: node_optimal -> <Anonymous>
    Execution halted
    ```

# MineICA

<details>

* Version: 1.42.0
* GitHub: NA
* Source code: https://github.com/cran/MineICA
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 216

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

*   checking for non-standard things in the check directory ... NOTE
    ```
    Found the following files/directories:
      ‘ProjByComp’ ‘carbayo’ ‘gene2MixingMatrix’ ‘myGraph.txt’
      ‘nodeInfo.txt’ ‘outputHyper_example.htm’ ‘resMineICACarbayo’ ‘toy’
    ```

# mistyR

<details>

* Version: 1.10.0
* GitHub: https://github.com/saezlab/mistyR
* Source code: https://github.com/cran/mistyR
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 156

Run `revdep_details(, "mistyR")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    aggregate_results: no visible binding for global variable ‘measure’
    aggregate_results: no visible binding for global variable ‘target’
    aggregate_results: no visible binding for global variable ‘value’
    aggregate_results: no visible binding for global variable ‘sd’
    aggregate_results: no visible binding for global variable ‘view’
    aggregate_results: no visible binding for global variable ‘.PT’
    aggregate_results: no visible binding for global variable ‘Importance’
    aggregate_results_subset: no visible binding for global variable ‘view’
    aggregate_results_subset: no visible binding for global variable ‘.PT’
    aggregate_results_subset: no visible binding for global variable
    ...
    run_misty : <anonymous>: no visible binding for global variable
      ‘multi.R2’
    svm_model: no visible binding for global variable ‘index’
    Undefined global functions or variables:
      .PT Importance Predictor Target fraction index intra.R2 intra.RMSE
      measure multi.R2 multi.RMSE nsamples p prediction sd target total ts
      value view
    Consider adding
      importFrom("stats", "sd", "ts")
    to your NAMESPACE file.
    ```

*   checking for non-standard things in the check directory ... NOTE
    ```
    Found the following files/directories:
      ‘results’
    ```

# mlr3resampling

<details>

* Version: 2023.12.20
* GitHub: https://github.com/tdhock/mlr3resampling
* Source code: https://github.com/cran/mlr3resampling
* Date/Publication: 2023-12-21 16:40:07 UTC
* Number of recursive dependencies: 86

Run `revdep_details(, "mlr3resampling")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Simulations.Rmd’ using rmarkdown
    
    Quitting from lines 543-708 [SimulationsAnimintClassification] (Simulations.Rmd)
    Error: processing vignette 'Simulations.Rmd' failed with diagnostics:
    Passed a vector of type 'NULL'. Needs to be type 'character'.
    --- failed re-building ‘Simulations.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Simulations.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# mrgsim.parallel

<details>

* Version: 0.2.1
* GitHub: https://github.com/kylebaron/mrgsim.parallel
* Source code: https://github.com/cran/mrgsim.parallel
* Date/Publication: 2022-03-17 19:50:05 UTC
* Number of recursive dependencies: 76

Run `revdep_details(, "mrgsim.parallel")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘qs’
    ```

# nebula

<details>

* Version: 1.4.2
* GitHub: NA
* Source code: https://github.com/cran/nebula
* Date/Publication: 2023-07-05 23:20:07 UTC
* Number of recursive dependencies: 74

Run `revdep_details(, "nebula")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.5Mb
      sub-directories of 1Mb or more:
        libs   9.3Mb
    ```

# nfl4th

<details>

* Version: 1.0.4
* GitHub: https://github.com/nflverse/nfl4th
* Source code: https://github.com/cran/nfl4th
* Date/Publication: 2023-08-21 09:32:33 UTC
* Number of recursive dependencies: 111

Run `revdep_details(, "nfl4th")` for more info

</details>

## In both

*   checking whether package ‘nfl4th’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: GitHub.com seems offline, and `options(nfl4th.keep_games)` is not set to TRUE. Deleting the games cache, and predictions may not be available without an internet connection.
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/nfl4th/new/nfl4th.Rcheck/00install.out’ for details.
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: GitHub.com seems offline, and `options(nfl4th.keep_games)` is not set to TRUE. Deleting the games cache, and predictions may not be available without an internet connection.
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

# nflfastR

<details>

* Version: 4.6.0
* GitHub: https://github.com/nflverse/nflfastR
* Source code: https://github.com/cran/nflfastR
* Date/Publication: 2023-10-20 15:30:07 UTC
* Number of recursive dependencies: 104

Run `revdep_details(, "nflfastR")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘qs’
    ```

# oncomsm

<details>

* Version: 0.1.4
* GitHub: https://github.com/Boehringer-Ingelheim/oncomsm
* Source code: https://github.com/cran/oncomsm
* Date/Publication: 2023-04-17 07:00:02 UTC
* Number of recursive dependencies: 125

Run `revdep_details(, "oncomsm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 19.9Mb
      sub-directories of 1Mb or more:
        libs  19.6Mb
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
* Number of recursive dependencies: 71

Run `revdep_details(, "onemapsgapi")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rgdal’
    ```

# OOS

<details>

* Version: 1.0.0
* GitHub: https://github.com/tylerJPike/OOS
* Source code: https://github.com/cran/OOS
* Date/Publication: 2021-03-17 13:20:20 UTC
* Number of recursive dependencies: 137

Run `revdep_details(, "OOS")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# pareg

<details>

* Version: 1.6.0
* GitHub: https://github.com/cbg-ethz/pareg
* Source code: https://github.com/cran/pareg
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 320

Run `revdep_details(, "pareg")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘pareg-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: as.data.frame.pareg
    > ### Title: as.data.frame for an object of class 'pareg'.
    > ### Aliases: as.data.frame.pareg
    > 
    > ### ** Examples
    > 
    > df_genes <- data.frame(
    ...
    [Errno 2] No such file or directory: '/wynton/home/cbi/hb/.cache/R/basilisk/1.14.1/0/envs/fallback/share/aclocal'
    [Errno 2] No such file or directory: '/wynton/home/cbi/hb/.cache/R/basilisk/1.14.1/0/envs/fallback/lib/gettext'
    [Errno 2] No such file or directory: '/wynton/home/cbi/hb/.cache/R/basilisk/1.14.1/0/envs/fallback/lib/pkgconfig'
    [Errno 2] No such file or directory: '/wynton/home/cbi/hb/.cache/R/basilisk/1.14.1/0/envs/fallback/man/man1'
    [Errno 2] No such file or directory: '/wynton/home/cbi/hb/.cache/R/basilisk/1.14.1/0/envs/fallback/share/man/man1'
    [Errno 2] No such file or directory: '/wynton/home/cbi/hb/.cache/R/basilisk/1.14.1/0/envs/fallback/lib/bfd-plugins'
    [Errno 2] No such file or directory: '/wynton/home/cbi/hb/.cache/R/basilisk/1.14.1/0/envs/fallback/include'
    
    Error: Error creating conda environment 'fallback' [exit code 1]
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
        pthread-stubs      conda-forge/linux-64::pthread-stubs-0.4-h36c2ea0_1001
        python             conda-forge/linux-64::python-3.9.18-h0755675_0_cpython
        r-base             conda-forge/linux-64::r-base-4.3.2-hb8ee39d_1
        r-here             conda-forge/noarch::r-here-1.0.1-r43hc72bb7e_2
        r-jsonlite         conda-forge/linux-64::r-jsonlite-1.8.8-r43h57805ef_0
        r-lattice          conda-forge/linux-64::r-lattice-0.22_5-r43h57805ef_0
    ...
      done
      Executing transaction: ...working... done
      sh: /wynton/home/cbi/hb/.cache/R/basilisk/1.14.1/0/envs/fallback/bin/Rscript: No such file or directory
      Error in makePSOCKcluster(1, rscript = rscript) : 
        Cluster setup failed. 1 worker of 1 failed to connect.
      Calls: <Anonymous> ... .activate_fallback -> basiliskStart -> makePSOCKcluster
      In addition: Warning message:
      In check_forbidden_install("Conda Environments") :
        cannot install Conda Environments during R CMD check
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘pareg.Rmd’ using rmarkdown
    The magick package is required to crop "/wynton/home/cbi/hb/repositories/future/revdep/checks/pareg/new/pareg.Rcheck/vign_test/pareg/vignettes/pareg_files/figure-html/unnamed-chunk-4-1.png" but not available.
    The magick package is required to crop "/wynton/home/cbi/hb/repositories/future/revdep/checks/pareg/new/pareg.Rcheck/vign_test/pareg/vignettes/pareg_files/figure-html/unnamed-chunk-5-1.png" but not available.
    2023-12-21 15:55:36.343997: I tensorflow/core/platform/cpu_feature_guard.cc:193] This TensorFlow binary is optimized with oneAPI Deep Neural Network Library (oneDNN) to use the following CPU instructions in performance-critical operations:  SSE4.1 SSE4.2 AVX AVX2 FMA
    To enable them in other operations, rebuild TensorFlow with the appropriate compiler flags.
    sh: /wynton/home/cbi/hb/.cache/R/basilisk/1.14.1/0/envs/fallback/bin/Rscript: No such file or directory
    
    Quitting from lines 145-150 [unnamed-chunk-9] (pareg.Rmd)
    ...
    --- re-building ‘pathway_similarities.Rmd’ using rmarkdown
    The magick package is required to crop "/wynton/home/cbi/hb/repositories/future/revdep/checks/pareg/new/pareg.Rcheck/vign_test/pareg/vignettes/pathway_similarities_files/figure-html/unnamed-chunk-2-1.png" but not available.
    The magick package is required to crop "/wynton/home/cbi/hb/repositories/future/revdep/checks/pareg/new/pareg.Rcheck/vign_test/pareg/vignettes/pathway_similarities_files/figure-html/unnamed-chunk-3-1.png" but not available.
    --- finished re-building ‘pathway_similarities.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘pareg.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking for portable file names ... NOTE
    ```
    Found the following non-portable file paths:
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_ablation_study/config.yaml
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_ablation_study/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_dispersion_fitting/config.yaml
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_dispersion_fitting/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_real_datasets/config.yaml
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_real_datasets/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_regularization_effect/config.yaml
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_regularization_effect/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_regularization_parameter/config.yaml
    ...
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_response_distribution/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_similarity_measures/config.yaml
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_similarity_measures/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/workflow/scripts/compare_rocauc_vs_loss.R
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_regularization_parameter
    
    Tarballs are only required to store paths of up to 100 bytes and cannot
    store those of more than 256 bytes, with restrictions including to 100
    bytes for the final component.
    See section ‘Package structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking whether package ‘pareg’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/pareg/new/pareg.Rcheck/00install.out’ for details.
    ```

# partR2

<details>

* Version: 0.9.1
* GitHub: https://github.com/mastoffel/partR2
* Source code: https://github.com/cran/partR2
* Date/Publication: 2021-01-18 16:30:04 UTC
* Number of recursive dependencies: 94

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

* Version: 2.9.0
* GitHub: https://github.com/rmaia/pavo
* Source code: https://github.com/cran/pavo
* Date/Publication: 2023-09-24 10:10:02 UTC
* Number of recursive dependencies: 104

Run `revdep_details(, "pavo")` for more info

</details>

## In both

*   checking whether package ‘pavo’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/pavo/new/pavo.Rcheck/00install.out’ for details.
    ```

# PCRedux

<details>

* Version: 1.1-2
* GitHub: https://github.com/PCRuniversum/PCRedux
* Source code: https://github.com/cran/PCRedux
* Date/Publication: 2022-05-11 11:40:02 UTC
* Number of recursive dependencies: 155

Run `revdep_details(, "PCRedux")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘PCRedux-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: encu
    > ### Title: A function to calculate numerous features from amplification
    > ###   curve data from a quantitative PCR experiment.
    > ### Aliases: encu
    > ### Keywords: intercept normalization preprocessing slope
    > 
    > ### ** Examples
    ...
    Loading required package: MASS
    Loading required package: minpack.lm
    Loading required package: rgl
    Loading required package: robustbase
    Loading required package: Matrix
    > res_encu <- encu(testdat[, 1:3])
    Error in validObject(.Object) : 
      invalid class “der” object: superclass "mMatrix" not defined in the environment of the object's class
    Calls: encu ... initialize -> initialize -> initMatrix -> validObject
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
        8.           ├─chipPCR::bg.max(x, y)
        9.           └─chipPCR::bg.max(x, y)
       10.             ├─chipPCR::inder(x, y, smooth.method = "supsmu")
       11.             └─chipPCR::inder(x, y, smooth.method = "supsmu")
       12.               └─methods::new("der", .Data = dat, method = smooth.method)
    ...
       11.             └─chipPCR::inder(x, y, smooth.method = "supsmu")
       12.               └─methods::new("der", .Data = dat, method = smooth.method)
       13.                 ├─methods::initialize(value, ...)
       14.                 └─methods::initialize(value, ...)
       15.                   └─methods (local) initMatrix(.Object, ...)
       16.                     └─methods::validObject(.Object)
      
      [ FAIL 4 | WARN 4 | SKIP 0 | PASS 37 ]
      Error: Test failures
      Execution halted
    ```

# photosynthesis

<details>

* Version: 2.1.4
* GitHub: https://github.com/cdmuir/photosynthesis
* Source code: https://github.com/cran/photosynthesis
* Date/Publication: 2023-08-15 07:20:05 UTC
* Number of recursive dependencies: 144

Run `revdep_details(, "photosynthesis")` for more info

</details>

## In both

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

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘geiger’, ‘caper’
    ```

# PLNmodels

<details>

* Version: 1.0.4
* GitHub: https://github.com/pln-team/PLNmodels
* Source code: https://github.com/cran/PLNmodels
* Date/Publication: 2023-08-24 15:10:02 UTC
* Number of recursive dependencies: 150

Run `revdep_details(, "PLNmodels")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.7Mb
      sub-directories of 1Mb or more:
        libs   7.8Mb
    ```

# portvine

<details>

* Version: 1.0.2
* GitHub: https://github.com/EmanuelSommer/portvine
* Source code: https://github.com/cran/portvine
* Date/Publication: 2023-01-06 09:40:04 UTC
* Number of recursive dependencies: 132

Run `revdep_details(, "portvine")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 17.7Mb
      sub-directories of 1Mb or more:
        libs  17.4Mb
    ```

# projpred

<details>

* Version: 2.8.0
* GitHub: https://github.com/stan-dev/projpred
* Source code: https://github.com/cran/projpred
* Date/Publication: 2023-12-15 00:00:02 UTC
* Number of recursive dependencies: 158

Run `revdep_details(, "projpred")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

# Prostar

<details>

* Version: 1.34.3
* GitHub: https://github.com/prostarproteomics/Prostar
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2023-11-27
* Number of recursive dependencies: 331

Run `revdep_details(, "Prostar")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Prostar_UserManual.Rmd’ using rmarkdown
    ! Undefined control sequence.
    <inserted text> dataset\textquotesingle 
                                            {{}}\textquotesingle {{}},
    l.556 ...textquotesingle{}\textquotesingle{}, one}
                                                      imputed dataset'\,' and so...
    
    Error: processing vignette 'Prostar_UserManual.Rmd' failed with diagnostics:
    LaTeX failed to compile /wynton/home/cbi/hb/repositories/future/revdep/checks/Prostar/new/Prostar.Rcheck/vign_test/Prostar/vignettes/Prostar_UserManual.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See Prostar_UserManual.log for more info.
    --- failed re-building ‘Prostar_UserManual.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Prostar_UserManual.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking dependencies in R code ... WARNING
    ```
    '::' or ':::' import not declared from: ‘Biobase’
    Namespaces in Imports field not imported from:
      ‘DT’ ‘R.utils’ ‘RColorBrewer’ ‘XML’ ‘colourpicker’ ‘gtools’ ‘knitr’
      ‘rclipboard’ ‘sass’ ‘shinyTree’ ‘shinyWidgets’
      All declared Imports should be used.
    ```

# pseudohouseholds

<details>

* Version: 0.1.1
* GitHub: https://github.com/chris31415926535/pseudohouseholds
* Source code: https://github.com/cran/pseudohouseholds
* Date/Publication: 2023-07-19 09:30:02 UTC
* Number of recursive dependencies: 105

Run `revdep_details(, "pseudohouseholds")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 596 marked UTF-8 strings
    ```

# QDNAseq

<details>

* Version: 1.38.0
* GitHub: https://github.com/ccagc/QDNAseq
* Source code: https://github.com/cran/QDNAseq
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 93

Run `revdep_details(, "QDNAseq")` for more info

</details>

## In both

*   R CMD check timed out
    

# RAINBOWR

<details>

* Version: 0.1.33
* GitHub: NA
* Source code: https://github.com/cran/RAINBOWR
* Date/Publication: 2023-09-12 05:40:02 UTC
* Number of recursive dependencies: 167

Run `revdep_details(, "RAINBOWR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.7Mb
      sub-directories of 1Mb or more:
        libs  10.8Mb
    ```

# regmedint

<details>

* Version: 1.0.0
* GitHub: https://github.com/kaz-yos/regmedint
* Source code: https://github.com/cran/regmedint
* Date/Publication: 2022-04-06 20:20:02 UTC
* Number of recursive dependencies: 155

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

* Version: 2.0.10
* GitHub: https://github.com/PredictiveEcology/reproducible
* Source code: https://github.com/cran/reproducible
* Date/Publication: 2023-11-22 04:40:02 UTC
* Number of recursive dependencies: 103

Run `revdep_details(, "reproducible")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘test-all.R’
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 50 lines of output:
        'test-preProcessWorks.R:315:3', 'test-preProcessWorks.R:328:3',
        'test-preProcessWorks.R:348:3', 'test-preProcessWorks.R:361:3',
        'test-preProcessWorks.R:374:3', 'test-preProcessWorks.R:391:3',
        'test-preProcessWorks.R:409:3', 'test-preProcessWorks.R:438:3',
        'test-preProcessWorks.R:459:3', 'test-preProcessWorks.R:487:3',
        'test-preProcessWorks.R:543:3', 'test-preProcessWorks.R:569:3',
    ...
       4.       └─reproducible:::makeVal(x)
       5.         ├─terra::makeValid(x)
       6.         └─terra::makeValid(x)
       7.           └─terra (local) .local(x, ...)
       8.             └─terra:::messages(x)
       9.               └─terra:::error(f, x@cpp$getError())
      
      [ FAIL 2 | WARN 7 | SKIP 92 | PASS 389 ]
      Error: Test failures
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘qs’
    ```

# rgee

<details>

* Version: 1.1.7
* GitHub: https://github.com/r-spatial/rgee
* Source code: https://github.com/cran/rgee
* Date/Publication: 2023-09-27 08:30:02 UTC
* Number of recursive dependencies: 146

Run `revdep_details(, "rgee")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘geojsonio’
    ```

# robotstxt

<details>

* Version: 0.7.13
* GitHub: https://github.com/ropensci/robotstxt
* Source code: https://github.com/cran/robotstxt
* Date/Publication: 2020-09-03 19:30:02 UTC
* Number of recursive dependencies: 70

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

# rpm

<details>

* Version: 0.7-1
* GitHub: https://github.com/handcock/rpm
* Source code: https://github.com/cran/rpm
* Date/Publication: 2023-04-21 23:30:02 UTC
* Number of recursive dependencies: 66

Run `revdep_details(, "rpm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        libs   5.6Mb
    ```

# sapfluxnetr

<details>

* Version: 0.1.4
* GitHub: https://github.com/sapfluxnet/sapfluxnetr
* Source code: https://github.com/cran/sapfluxnetr
* Date/Publication: 2023-01-25 15:30:02 UTC
* Number of recursive dependencies: 83

Run `revdep_details(, "sapfluxnetr")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# sctransform

<details>

* Version: 0.4.1
* GitHub: https://github.com/satijalab/sctransform
* Source code: https://github.com/cran/sctransform
* Date/Publication: 2023-10-19 04:40:02 UTC
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
* Number of recursive dependencies: 177

Run `revdep_details(, "sdmApp")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'rgdal', 'rgeos'
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘sp’
      All declared Imports should be used.
    ```

# sdmTMB

<details>

* Version: 0.4.1
* GitHub: https://github.com/pbs-assess/sdmTMB
* Source code: https://github.com/cran/sdmTMB
* Date/Publication: 2023-11-03 07:20:02 UTC
* Number of recursive dependencies: 117

Run `revdep_details(, "sdmTMB")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 31.4Mb
      sub-directories of 1Mb or more:
        libs  30.9Mb
    ```

# sentopics

<details>

* Version: 0.7.2
* GitHub: https://github.com/odelmarcelle/sentopics
* Source code: https://github.com/cran/sentopics
* Date/Publication: 2023-05-28 09:50:02 UTC
* Number of recursive dependencies: 173

Run `revdep_details(, "sentopics")` for more info

</details>

## In both

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

* Version: 5.0.1
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2023-11-17 23:10:06 UTC
* Number of recursive dependencies: 264

Run `revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'BPCells', 'presto'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        R      1.6Mb
        libs   5.0Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Signac’
    ```

# SeuratObject

<details>

* Version: 5.0.1
* GitHub: https://github.com/mojaveazure/seurat-object
* Source code: https://github.com/cran/SeuratObject
* Date/Publication: 2023-11-17 22:40:16 UTC
* Number of recursive dependencies: 105

Run `revdep_details(, "SeuratObject")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘BPCells’
    
    Package which this enhances but not available for checking: ‘Seurat’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘plotly’
    ```

# shiny.worker

<details>

* Version: 0.0.1
* GitHub: NA
* Source code: https://github.com/cran/shiny.worker
* Date/Publication: 2021-01-21 11:00:02 UTC
* Number of recursive dependencies: 65

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

# Signac

<details>

* Version: 1.12.0
* GitHub: https://github.com/stuart-lab/signac
* Source code: https://github.com/cran/Signac
* Date/Publication: 2023-11-08 09:30:02 UTC
* Number of recursive dependencies: 251

Run `revdep_details(, "Signac")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'ggseqlogo', 'qlcMatrix'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘ggseqlogo’ in Rd xrefs
    ```

# signeR

<details>

* Version: 2.4.0
* GitHub: https://github.com/TojalLab/signeR
* Source code: https://github.com/cran/signeR
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 244

Run `revdep_details(, "signeR")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking R code for possible problems ... NOTE
    ```
    covariate: no visible binding for global variable ‘.’
    explorepage: no visible binding for global variable ‘.’
    genCountMatrixFromMAF: no visible binding for global variable
      ‘Variant_Type’
    genCountMatrixFromMAF: no visible binding for global variable
      ‘Reference_Allele’
    genCountMatrixFromMAF: no visible binding for global variable
      ‘Tumor_Seq_Allele2’
    genCountMatrixFromMAF: no visible binding for global variable
      ‘Tumor_Seq_Allele1’
    ...
    ExposureCorrelation,SignExp-numeric: no visible binding for global
      variable ‘exposure’
    ExposureCorrelation,matrix-numeric: no visible binding for global
      variable ‘Feature’
    ExposureCorrelation,matrix-numeric: no visible binding for global
      variable ‘exposure’
    Undefined global functions or variables:
      . Col Feature Frequency Reference_Allele Row Samples Signatures
      Tumor_Seq_Allele1 Tumor_Seq_Allele2 Variant_Type alt<- exposure fc
      project sig sig_test
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

*   checking for non-standard things in the check directory ... NOTE
    ```
    Found the following files/directories:
      ‘tmp.pdf’
    ```

# sits

<details>

* Version: 1.4.2-1
* GitHub: https://github.com/e-sensing/sits
* Source code: https://github.com/cran/sits
* Date/Publication: 2023-11-02 15:10:02 UTC
* Number of recursive dependencies: 221

Run `revdep_details(, "sits")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        R      1.1Mb
        libs   4.6Mb
    ```

# skpr

<details>

* Version: 1.6.1
* GitHub: https://github.com/tylermorganwall/skpr
* Source code: https://github.com/cran/skpr
* Date/Publication: 2023-12-07 16:50:02 UTC
* Number of recursive dependencies: 149

Run `revdep_details(, "skpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 20.8Mb
      sub-directories of 1Mb or more:
        libs  20.3Mb
    ```

# SmCCNet

<details>

* Version: 2.0.1
* GitHub: https://github.com/KechrisLab/SmCCNet
* Source code: https://github.com/cran/SmCCNet
* Date/Publication: 2023-10-03 21:50:16 UTC
* Number of recursive dependencies: 163

Run `revdep_details(, "SmCCNet")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘SmCCNet_Vignette_AutoSmCCNet.Rmd’ using rmarkdown
    ! LaTeX Error: File `ucharcat.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'SmCCNet_Vignette_AutoSmCCNet.Rmd' failed with diagnostics:
    LaTeX failed to compile /wynton/home/cbi/hb/repositories/future/revdep/checks/SmCCNet/new/SmCCNet.Rcheck/vign_test/SmCCNet/vignettes/SmCCNet_Vignette_AutoSmCCNet.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See SmCCNet_Vignette_AutoSmCCNet.log for more info.
    --- failed re-building ‘SmCCNet_Vignette_AutoSmCCNet.Rmd’
    ...
    Error: processing vignette 'SmCCNet_Vignette_SingleOmics.Rmd' failed with diagnostics:
    LaTeX failed to compile /wynton/home/cbi/hb/repositories/future/revdep/checks/SmCCNet/new/SmCCNet.Rcheck/vign_test/SmCCNet/vignettes/SmCCNet_Vignette_SingleOmics.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See SmCCNet_Vignette_SingleOmics.log for more info.
    --- failed re-building ‘SmCCNet_Vignette_SingleOmics.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘SmCCNet_Vignette_AutoSmCCNet.Rmd’ ‘SmCCNet_Vignette_MultiOmics.Rmd’
      ‘SmCCNet_Vignette_SingleOmics.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# solitude

<details>

* Version: 1.1.3
* GitHub: https://github.com/talegari/solitude
* Source code: https://github.com/cran/solitude
* Date/Publication: 2021-07-29 20:00:02 UTC
* Number of recursive dependencies: 131

Run `revdep_details(, "solitude")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R6’ ‘lgr’
      All declared Imports should be used.
    ```

# SpaDES.core

<details>

* Version: 2.0.3
* GitHub: https://github.com/PredictiveEcology/SpaDES.core
* Source code: https://github.com/cran/SpaDES.core
* Date/Publication: 2023-11-10 10:20:02 UTC
* Number of recursive dependencies: 139

Run `revdep_details(, "SpaDES.core")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘qs’
    
    Package suggested but not available for checking: ‘NLMR’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# spaMM

<details>

* Version: 4.4.16
* GitHub: NA
* Source code: https://github.com/cran/spaMM
* Date/Publication: 2023-12-20 13:50:02 UTC
* Number of recursive dependencies: 102

Run `revdep_details(, "spaMM")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'IsoriX', 'ROI.plugin.glpk'
    
    Packages which this enhances but not available for checking:
      'multcomp', 'RLRsim', 'lmerTest'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 21.3Mb
      sub-directories of 1Mb or more:
        R      2.6Mb
        libs  18.2Mb
    ```

# sparrpowR

<details>

* Version: 0.2.7
* GitHub: https://github.com/machiela-lab/sparrpowR
* Source code: https://github.com/cran/sparrpowR
* Date/Publication: 2023-02-02 01:00:02 UTC
* Number of recursive dependencies: 130

Run `revdep_details(, "sparrpowR")` for more info

</details>

## In both

*   checking whether package ‘sparrpowR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/sparrpowR/new/sparrpowR.Rcheck/00install.out’ for details.
    ```

# SPARSEMODr

<details>

* Version: 1.2.0
* GitHub: https://github.com/NAU-CCL/SPARSEMODr
* Source code: https://github.com/cran/SPARSEMODr
* Date/Publication: 2022-07-19 20:50:02 UTC
* Number of recursive dependencies: 127

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

* Version: 3.0.3
* GitHub: https://github.com/spatial-ews/spatialwarnings
* Source code: https://github.com/cran/spatialwarnings
* Date/Publication: 2022-03-21 13:00:02 UTC
* Number of recursive dependencies: 97

Run `revdep_details(, "spatialwarnings")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'indictest.Rd':
      ‘mgcv’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

# sphunif

<details>

* Version: 1.3.0
* GitHub: https://github.com/egarpor/sphunif
* Source code: https://github.com/cran/sphunif
* Date/Publication: 2023-12-04 19:50:02 UTC
* Number of recursive dependencies: 79

Run `revdep_details(, "sphunif")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.1Mb
      sub-directories of 1Mb or more:
        libs   9.8Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 189 marked UTF-8 strings
    ```

# spNetwork

<details>

* Version: 0.4.3.8
* GitHub: https://github.com/JeremyGelb/spNetwork
* Source code: https://github.com/cran/spNetwork
* Date/Publication: 2023-08-24 11:20:05 UTC
* Number of recursive dependencies: 149

Run `revdep_details(, "spNetwork")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.2Mb
      sub-directories of 1Mb or more:
        libs   8.8Mb
    ```

# squat

<details>

* Version: 0.2.1
* GitHub: https://github.com/LMJL-Alea/squat
* Source code: https://github.com/cran/squat
* Date/Publication: 2023-07-09 09:10:05 UTC
* Number of recursive dependencies: 133

Run `revdep_details(, "squat")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        libs   6.1Mb
    ```

# ssdtools

<details>

* Version: 1.0.6
* GitHub: https://github.com/bcgov/ssdtools
* Source code: https://github.com/cran/ssdtools
* Date/Publication: 2023-09-07 14:10:02 UTC
* Number of recursive dependencies: 120

Run `revdep_details(, "ssdtools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        libs  10.0Mb
    ```

# stars

<details>

* Version: 0.6-4
* GitHub: https://github.com/r-spatial/stars
* Source code: https://github.com/cran/stars
* Date/Publication: 2023-09-11 11:50:02 UTC
* Number of recursive dependencies: 163

Run `revdep_details(, "stars")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'ncdfgeom', 'starsdata'
    ```

# stppSim

<details>

* Version: 1.3.2
* GitHub: https://github.com/Manalytics/stppSim
* Source code: https://github.com/cran/stppSim
* Date/Publication: 2023-10-29 21:20:02 UTC
* Number of recursive dependencies: 134

Run `revdep_details(, "stppSim")` for more info

</details>

## In both

*   checking whether package ‘stppSim’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/stppSim/new/stppSim.Rcheck/00install.out’ for details.
    ```

# synergyfinder

<details>

* Version: 3.10.0
* GitHub: NA
* Source code: https://github.com/cran/synergyfinder
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 202

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
      response_mean response_origin response_origin_CI95
      response_origin_mean response_origin_sd response_origin_sem
      response_sd response_sem right start synergy t.test text theta value
      x y
    Consider adding
      importFrom("grDevices", "dev.list", "dev.off")
      importFrom("graphics", "text")
      importFrom("stats", "end", "start", "t.test")
      importFrom("utils", "data", "head")
    to your NAMESPACE file.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) FitDoseResponse.Rd:55: Escaped LaTeX specials: \&
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

* Version: 0.4
* GitHub: https://github.com/kkholst/targeted
* Source code: https://github.com/cran/targeted
* Date/Publication: 2023-12-19 22:50:02 UTC
* Number of recursive dependencies: 100

Run `revdep_details(, "targeted")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.6Mb
      sub-directories of 1Mb or more:
        libs   9.3Mb
    ```

# targets

<details>

* Version: 1.4.0
* GitHub: https://github.com/ropensci/targets
* Source code: https://github.com/cran/targets
* Date/Publication: 2023-12-11 17:00:02 UTC
* Number of recursive dependencies: 166

Run `revdep_details(, "targets")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘qs’
    ```

# text

<details>

* Version: 1.0
* GitHub: https://github.com/OscarKjell/text
* Source code: https://github.com/cran/text
* Date/Publication: 2023-08-09 16:40:05 UTC
* Number of recursive dependencies: 155

Run `revdep_details(, "text")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3 marked UTF-8 strings
    ```

# TriDimRegression

<details>

* Version: 1.0.2
* GitHub: https://github.com/alexander-pastukhov/tridim-regression
* Source code: https://github.com/cran/TriDimRegression
* Date/Publication: 2023-09-13 14:10:03 UTC
* Number of recursive dependencies: 100

Run `revdep_details(, "TriDimRegression")` for more info

</details>

## In both

*   checking whether package ‘TriDimRegression’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/TriDimRegression/new/TriDimRegression.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘TriDimRegression’ ...
** package ‘TriDimRegression’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘TriDimRegression’
* removing ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/TriDimRegression/new/TriDimRegression.Rcheck/TriDimRegression’


```
### CRAN

```
* installing *source* package ‘TriDimRegression’ ...
** package ‘TriDimRegression’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘TriDimRegression’
* removing ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/TriDimRegression/old/TriDimRegression.Rcheck/TriDimRegression’


```
# txshift

<details>

* Version: 0.3.8
* GitHub: https://github.com/nhejazi/txshift
* Source code: https://github.com/cran/txshift
* Date/Publication: 2022-02-09 22:30:02 UTC
* Number of recursive dependencies: 113

Run `revdep_details(, "txshift")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sl3’
    ```

# vmeasur

<details>

* Version: 0.1.4
* GitHub: NA
* Source code: https://github.com/cran/vmeasur
* Date/Publication: 2021-11-11 19:00:02 UTC
* Number of recursive dependencies: 119

Run `revdep_details(, "vmeasur")` for more info

</details>

## In both

*   checking whether package ‘vmeasur’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/vmeasur/new/vmeasur.Rcheck/00install.out’ for details.
    ```

# WeightedCluster

<details>

* Version: 1.6-4
* GitHub: NA
* Source code: https://github.com/cran/WeightedCluster
* Date/Publication: 2023-07-07 07:50:02 UTC
* Number of recursive dependencies: 43

Run `revdep_details(, "WeightedCluster")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘WeightedCluster.Rnw’ using knitr
    --- finished re-building ‘WeightedCluster.Rnw’
    
    --- re-building ‘WeightedClusterFR.Rnw’ using knitr
    Error: processing vignette 'WeightedClusterFR.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'WeightedClusterFR.tex' failed.
    LaTeX errors:
    ! Package babel Error: Unknown option `frenchb'. Either you misspelled it
    (babel)                or the language definition file frenchb.ldf was not foun
    ...
    l.85 \usepackage
                    {tikz}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘WeightedClusterPreview.Rnw’
    
    SUMMARY: processing the following files failed:
      ‘WeightedClusterFR.Rnw’ ‘WeightedClusterPreview.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# wru

<details>

* Version: 1.0.1
* GitHub: https://github.com/kosukeimai/wru
* Source code: https://github.com/cran/wru
* Date/Publication: 2022-10-21 17:30:02 UTC
* Number of recursive dependencies: 89

Run `revdep_details(, "wru")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# XNAString

<details>

* Version: 1.10.0
* GitHub: NA
* Source code: https://github.com/cran/XNAString
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 106

Run `revdep_details(, "XNAString")` for more info

</details>

## In both

*   checking compiled code ... WARNING
    ```
    File ‘XNAString/libs/XNAString.so’:
      Found ‘rand’, possibly from ‘rand’ (C)
        Object: ‘./ViennaRNA/utils/utils.o’
      Found ‘sprintf’, possibly from ‘sprintf’ (C)
        Objects: ‘./ViennaRNA/part_func_up.o’, ‘./ViennaRNA/RNAstruct.o’,
          ‘./ViennaRNA/model.o’
      Found ‘srand’, possibly from ‘srand’ (C)
        Object: ‘./ViennaRNA/utils/utils.o’
    
    Compiled code should not call entry points which might terminate R nor
    write to stdout/stderr instead of to the console, nor use Fortran I/O
    nor system RNGs nor [v]sprintf.
    
    See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

