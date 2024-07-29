# AIPW

<details>

* Version: 0.6.3.2
* GitHub: https://github.com/yqzhong7/AIPW
* Source code: https://github.com/cran/AIPW
* Date/Publication: 2021-06-11 09:30:02 UTC
* Number of recursive dependencies: 99

Run `revdepcheck::revdep_details(, "AIPW")` for more info

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

* Version: 4.6.0
* GitHub: https://github.com/sipss/AlpsNMR
* Source code: https://github.com/cran/AlpsNMR
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 185

Run `revdepcheck::revdep_details(, "AlpsNMR")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Vig01-introduction-to-alpsnmr.Rmd’ using rmarkdown
    Error: processing vignette 'Vig01-introduction-to-alpsnmr.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/future/revdep/checks/AlpsNMR/new/AlpsNMR.Rcheck/vign_test/AlpsNMR/vignettes/Vig01-introduction-to-alpsnmr.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips.
    --- failed re-building ‘Vig01-introduction-to-alpsnmr.Rmd’
    
    --- re-building ‘Vig01b-introduction-to-alpsnmr-old-api.Rmd’ using rmarkdown
    Error: processing vignette 'Vig01b-introduction-to-alpsnmr-old-api.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/future/revdep/checks/AlpsNMR/new/AlpsNMR.Rcheck/vign_test/AlpsNMR/vignettes/Vig01b-introduction-to-alpsnmr-old-api.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips.
    ...
    LaTeX failed to compile /c4/home/henrik/repositories/future/revdep/checks/AlpsNMR/new/AlpsNMR.Rcheck/vign_test/AlpsNMR/vignettes/Vig02-handling-metadata-and-annotations.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips.
    --- failed re-building ‘Vig02-handling-metadata-and-annotations.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘Vig01-introduction-to-alpsnmr.Rmd’
      ‘Vig01b-introduction-to-alpsnmr-old-api.Rmd’
      ‘Vig02-handling-metadata-and-annotations.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# altdoc

<details>

* Version: 0.4.0
* GitHub: https://github.com/etiennebacher/altdoc
* Source code: https://github.com/cran/altdoc
* Date/Publication: 2024-07-23 21:10:02 UTC
* Number of recursive dependencies: 85

Run `revdepcheck::revdep_details(, "altdoc")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
        5. │     │ └─base::withCallingHandlers(...)
        6. │     └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        7. └─altdoc::render_docs(path = getwd())
        8.   └─altdoc:::.import_vignettes(...)
        9.     └─base::vapply(...)
    ...
       2.   └─altdoc:::.import_vignettes(...)
       3.     └─base::vapply(...)
       4.       └─altdoc (local) FUN(X[[i]], ...)
       5.         └─altdoc:::.render_one_vignette(...)
       6.           └─altdoc:::.qmd2md(origin, tar_dir, verbose = verbose, preamble = pre)
       7.             └─base::cat(out[[2]])
      
      [ FAIL 8 | WARN 0 | SKIP 8 | PASS 55 ]
      Error: Test failures
      Execution halted
    ```

# apsimx

<details>

* Version: 2.7.7
* GitHub: https://github.com/femiguez/apsimx
* Source code: https://github.com/cran/apsimx
* Date/Publication: 2024-05-06 18:20:03 UTC
* Number of recursive dependencies: 194

Run `revdepcheck::revdep_details(, "apsimx")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        extdata   5.5Mb
    ```

# aroma.affymetrix

<details>

* Version: 3.2.2
* GitHub: https://github.com/HenrikBengtsson/aroma.affymetrix
* Source code: https://github.com/cran/aroma.affymetrix
* Date/Publication: 2024-02-18 20:40:03 UTC
* Number of recursive dependencies: 85

Run `revdepcheck::revdep_details(, "aroma.affymetrix")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        R             2.5Mb
        help          1.1Mb
        testScripts   1.1Mb
    ```

# aroma.core

<details>

* Version: 3.3.1
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2024-02-19 08:40:02 UTC
* Number of recursive dependencies: 67

Run `revdepcheck::revdep_details(, "aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

# BAMBI

<details>

* Version: 2.3.5
* GitHub: https://github.com/c7rishi/BAMBI
* Source code: https://github.com/cran/BAMBI
* Date/Publication: 2023-03-08 23:10:05 UTC
* Number of recursive dependencies: 53

Run `revdepcheck::revdep_details(, "BAMBI")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        libs   7.4Mb
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) contour.angmcmc.Rd:48: Lost braces; missing escapes or markup?
        48 | Ignored if {show.data == FALSE}.}
           |            ^
    checkRd: (-1) contour.angmcmc.Rd:51: Lost braces; missing escapes or markup?
        51 | Ignored if {show.data == FALSE}.}
           |            ^
    checkRd: (-1) fit_incremental_angmix.Rd:104: Lost braces; missing escapes or markup?
       104 | \item{alpha}{significance level used in the test H_{0K}: expected log predictive density (elpd) for the fitted model with  K components >= elpd for the fitted model
           |                                                    ^
    checkRd: (-1) fit_incremental_angmix.Rd:148: Lost braces; missing escapes or markup?
       148 | H_{0K}: expected log predictive density (elpd) for the fitted model with  K components >= elpd for the fitted model
           |   ^
    checkRd: (-1) fit_incremental_angmix.Rd:163: Lost braces; missing escapes or markup?
       163 | The incremental fitting stops if  H_{0K} cannot be rejected
           |                                     ^
    ```

# bamm

<details>

* Version: 0.5.0
* GitHub: https://github.com/luismurao/bamm
* Source code: https://github.com/cran/bamm
* Date/Publication: 2024-07-06 20:22:11 UTC
* Number of recursive dependencies: 104

Run `revdepcheck::revdep_details(, "bamm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        libs   2.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘crosstalk’ ‘plotly’
      All declared Imports should be used.
    ```

# batchtools

<details>

* Version: 0.9.17
* GitHub: https://github.com/mllg/batchtools
* Source code: https://github.com/cran/batchtools
* Date/Publication: 2023-04-20 14:20:06 UTC
* Number of recursive dependencies: 82

Run `revdepcheck::revdep_details(, "batchtools")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘doMPI’
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) JobCollection.Rd:41: Lost braces
        41 |  \item{namespaces}{code{character} with required packages to load via \code{\link[base]{requireNamespace}}.}
           |                        ^
    checkRd: (-1) addAlgorithm.Rd:31: Lost braces
        31 | Algorithms are functions which get the code{data} part as well as the problem instance (the return value of the
           |                                            ^
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Rmpi’
    ```

# bayesmove

<details>

* Version: 0.2.1
* GitHub: https://github.com/joshcullen/bayesmove
* Source code: https://github.com/cran/bayesmove
* Date/Publication: 2021-10-22 08:50:09 UTC
* Number of recursive dependencies: 168

Run `revdepcheck::revdep_details(, "bayesmove")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) insert_NAs.Rd:22: Lost braces; missing escapes or markup?
        22 | A data frame where new rows have been inserted to regularize the \code{date} column. This results in values provided for \code{id}, \code{date}, and {dt} while inserting NAs for all other columns. Additionally, observations with duplicate date-times are removed.
           |                                                                                                                                                      ^
    ```

# bbknnR

<details>

* Version: 1.1.1
* GitHub: https://github.com/ycli1995/bbknnR
* Source code: https://github.com/cran/bbknnR
* Date/Publication: 2024-02-13 10:20:03 UTC
* Number of recursive dependencies: 163

Run `revdepcheck::revdep_details(, "bbknnR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        data   3.0Mb
        libs   1.6Mb
    ```

# BEKKs

<details>

* Version: 1.4.4
* GitHub: NA
* Source code: https://github.com/cran/BEKKs
* Date/Publication: 2024-01-14 15:50:09 UTC
* Number of recursive dependencies: 86

Run `revdepcheck::revdep_details(, "BEKKs")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 18.7Mb
      sub-directories of 1Mb or more:
        libs  17.8Mb
    ```

# bigDM

<details>

* Version: 0.5.4
* GitHub: https://github.com/spatialstatisticsupna/bigDM
* Source code: https://github.com/cran/bigDM
* Date/Publication: 2024-05-30 15:20:10 UTC
* Number of recursive dependencies: 128

Run `revdepcheck::revdep_details(, "bigDM")` for more info

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
* Number of recursive dependencies: 96

Run `revdepcheck::revdep_details(, "bistablehistory")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 72.0Mb
      sub-directories of 1Mb or more:
        libs  71.0Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# blavaan

<details>

* Version: 0.5-5
* GitHub: https://github.com/ecmerkle/blavaan
* Source code: https://github.com/cran/blavaan
* Date/Publication: 2024-06-09 21:00:02 UTC
* Number of recursive dependencies: 97

Run `revdepcheck::revdep_details(, "blavaan")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 187.8Mb
      sub-directories of 1Mb or more:
        R           1.2Mb
        libs      184.9Mb
        testdata    1.4Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# brms

<details>

* Version: 2.21.0
* GitHub: https://github.com/paul-buerkner/brms
* Source code: https://github.com/cran/brms
* Date/Publication: 2024-03-20 12:30:08 UTC
* Number of recursive dependencies: 200

Run `revdepcheck::revdep_details(, "brms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.7Mb
      sub-directories of 1Mb or more:
        R     3.7Mb
        doc   3.6Mb
    ```

# bslib

<details>

* Version: 0.7.0
* GitHub: https://github.com/rstudio/bslib
* Source code: https://github.com/cran/bslib
* Date/Publication: 2024-03-29 01:00:03 UTC
* Number of recursive dependencies: 79

Run `revdepcheck::revdep_details(, "bslib")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.7Mb
      sub-directories of 1Mb or more:
        components   1.0Mb
        fonts        2.8Mb
        lib          5.2Mb
    ```

# ceRNAnetsim

<details>

* Version: 1.16.0
* GitHub: https://github.com/selcenari/ceRNAnetsim
* Source code: https://github.com/cran/ceRNAnetsim
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 100

Run `revdepcheck::revdep_details(, "ceRNAnetsim")` for more info

</details>

## In both

*   checking R code for possible problems ... NOTE
    ```
    find_node_perturbation: no visible binding for global variable
      ‘perturbation_efficiency’
    find_node_perturbation: no visible binding for global variable
      ‘perturbed_count’
    simulate: no visible binding for global variable ‘avg_count_current’
    simulate: no visible binding for global variable ‘avg_count_pre’
    Undefined global functions or variables:
      avg_count_current avg_count_pre perturbation_efficiency
      perturbed_count
    ```

# ChromSCape

<details>

* Version: 1.14.0
* GitHub: https://github.com/vallotlab/ChromSCape
* Source code: https://github.com/cran/ChromSCape
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 232

Run `revdepcheck::revdep_details(, "ChromSCape")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    'library' or 'require' call not declared from: ‘dplyr’
    'library' or 'require' call to ‘dplyr’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Codoc mismatches from Rd file 'generate_analysis.Rd':
    generate_analysis
      Code: function(input_data_folder, analysis_name = "Analysis_1",
                     output_directory = "./", input_data_type = c("scBED",
                     "DenseMatrix", "SparseMatrix", "scBAM")[1],
                     feature_count_on = c("bins", "genebody", "peaks")[1],
                     feature_count_parameter = 50000, rebin_sparse_matrix =
                     FALSE, ref_genome = c("hg38", "mm10")[1], run =
                     c("filter", "CNA", "cluster", "consensus", "coverage",
                     "DA", "GSA", "report")[c(1, 3, 5, 6, 7, 8)],
    ...
      Mismatches in argument names:
        Position: 5 Code: feature_count_on Docs: rebin_sparse_matrix
        Position: 6 Code: feature_count_parameter Docs: feature_count_on
        Position: 7 Code: rebin_sparse_matrix Docs: feature_count_parameter
      Mismatches in argument default values:
        Name: 'run'
        Code: c("filter", "CNA", "cluster", "consensus", "coverage", "DA", 
              "GSA", "report")[c(1, 3, 5, 6, 7, 8)]
        Docs: c("filter", "CNA", "cluster", "consensus", "peak_call", "coverage", 
              "DA", "GSA", "report")[c(1, 3, 6, 7, 8, 9)]
    ```

*   checking Rd \usage sections ... WARNING
    ```
    Undocumented arguments in Rd file 'rebin_matrix.Rd'
      ‘rebin_function’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for hidden files and directories ... NOTE
    ```
    Found the following hidden files and directories:
      .BBSoptions
    These were most likely included in error. See section ‘Package
    structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        data   1.5Mb
        doc    2.9Mb
        libs   1.1Mb
        www    2.1Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    bams_to_matrix_indexes: no visible binding for global variable
      ‘files_dir_list’
    enrich_TF_ChEA3_genes: no visible binding for global variable
      ‘CheA3_TF_nTargets’
    filter_correlated_cell_scExp: no visible binding for global variable
      ‘run_tsne’
    generate_analysis: no visible global function definition for ‘head’
    generate_analysis: no visible binding for global variable ‘k’
    generate_analysis: no visible binding for global variable
      ‘clusterConsensus’
    ...
    subset_bam_call_peaks: no visible binding for global variable
      ‘merged_bam’
    Undefined global functions or variables:
      CheA3_TF_nTargets Component Fri_cyto Gain_or_Loss Gene TF V1 V2
      absolute_value cluster clusterConsensus cytoBand files_dir_list genes
      group head k merged_bam molecule ncells new_row orientation
      origin_value percent_active run_tsne sample_id total_counts
    Consider adding
      importFrom("utils", "head")
    to your NAMESPACE file.
    ```

*   checking Rd files ... NOTE
    ```
    prepare_Rd: raw_counts_to_sparse_matrix.Rd:6-8: Dropping empty section \source
    ```

# civis

<details>

* Version: 3.1.2
* GitHub: https://github.com/civisanalytics/civis-r
* Source code: https://github.com/cran/civis
* Date/Publication: 2023-03-31 08:00:03 UTC
* Number of recursive dependencies: 89

Run `revdepcheck::revdep_details(, "civis")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) enhancements_get_civis_data_match.Rd:60: Lost braces; missing escapes or markup?
        60 | \item{inputFieldMapping}{list, The field (i.e., column) mapping for the input table. See https://api.civisanalytics.com/enhancements/field-mapping for a list of valid field types and descriptions. Each field type should be mapped to a string specifying a column name in the input table. For field types that support multiple values (e.g., the "phone" field), a list of column names can be provided (e.g., {"phone": ["home_phone", "mobile_phone"], ...}).}
           |                                                                                                                                                                                                                                                                                                                                                                                                                      ^
    checkRd: (-1) enhancements_patch_civis_data_match.Rd:53: Lost braces; missing escapes or markup?
        53 | \item{input_field_mapping}{list optional. The field (i.e., column) mapping for the input table. See https://api.civisanalytics.com/enhancements/field-mapping for a list of valid field types and descriptions. Each field type should be mapped to a string specifying a column name in the input table. For field types that support multiple values (e.g., the "phone" field), a list of column names can be provided (e.g., {"phone": ["home_phone", "mobile_phone"], ...}).}
           |                                                                                                                                                                                                                                                                                                                                                                                                                                 ^
    checkRd: (-1) enhancements_patch_civis_data_match.Rd:125: Lost braces; missing escapes or markup?
       125 | \item{inputFieldMapping}{list, The field (i.e., column) mapping for the input table. See https://api.civisanalytics.com/enhancements/field-mapping for a list of valid field types and descriptions. Each field type should be mapped to a string specifying a column name in the input table. For field types that support multiple values (e.g., the "phone" field), a list of column names can be provided (e.g., {"phone": ["home_phone", "mobile_phone"], ...}).}
           |                                                                                                                                                                                                                                                                                                                                                                                                                      ^
    checkRd: (-1) enhancements_post_civis_data_match.Rd:24: Lost braces; missing escapes or markup?
    ...
           |                                                                                                                                                                                         ^
    checkRd: (-1) templates_patch_scripts.Rd:42: Lost braces; missing escapes or markup?
        42 | \item allowedValues array, The possible values this parameter can take, effectively making this an enumerable parameter. Allowed values is an array of hashes of the following format: `{label: 'Import', 'value': 'import'}`
           |                                                                                                                                                                                         ^
    checkRd: (-1) templates_post_scripts.Rd:45: Lost braces; missing escapes or markup?
        45 | \item allowedValues array, The possible values this parameter can take, effectively making this an enumerable parameter. Allowed values is an array of hashes of the following format: `{label: 'Import', 'value': 'import'}`
           |                                                                                                                                                                                         ^
    checkRd: (-1) templates_put_scripts.Rd:42: Lost braces; missing escapes or markup?
        42 | \item allowedValues array, The possible values this parameter can take, effectively making this an enumerable parameter. Allowed values is an array of hashes of the following format: `{label: 'Import', 'value': 'import'}`
           |                                                                                                                                                                                         ^
    ```

# clickR

<details>

* Version: 0.9.39
* GitHub: NA
* Source code: https://github.com/cran/clickR
* Date/Publication: 2023-08-07 17:40:06 UTC
* Number of recursive dependencies: 9

Run `revdepcheck::revdep_details(, "clickR")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1 marked UTF-8 string
    ```

# codalm

<details>

* Version: 0.1.2
* GitHub: https://github.com/jfiksel/codalm
* Source code: https://github.com/cran/codalm
* Date/Publication: 2021-07-26 18:40:02 UTC
* Number of recursive dependencies: 57

Run `revdepcheck::revdep_details(, "codalm")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) educFM.Rd:22: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) educFM.Rd:23: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) educFM.Rd:24: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) educFM.Rd:25: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) educFM.Rd:26: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) educFM.Rd:27: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) educFM.Rd:28: Lost braces in \itemize; meant \describe ?
    ```

# codebook

<details>

* Version: 0.9.2
* GitHub: https://github.com/rubenarslan/codebook
* Source code: https://github.com/cran/codebook
* Date/Publication: 2020-06-06 23:40:03 UTC
* Number of recursive dependencies: 155

Run `revdepcheck::revdep_details(, "codebook")` for more info

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

Run `revdepcheck::revdep_details(, "collinear")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 89 marked Latin-1 strings
      Note: found 1203 marked UTF-8 strings
    ```

# Coxmos

<details>

* Version: 1.0.2
* GitHub: https://github.com/BiostatOmics/Coxmos
* Source code: https://github.com/cran/Coxmos
* Date/Publication: 2024-03-25 20:32:38 UTC
* Number of recursive dependencies: 194

Run `revdepcheck::revdep_details(, "Coxmos")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        R      1.0Mb
        data   1.2Mb
        doc    2.9Mb
    ```

# cSEM

<details>

* Version: 0.5.0
* GitHub: https://github.com/M-E-Rademaker/cSEM
* Source code: https://github.com/cran/cSEM
* Date/Publication: 2022-11-24 17:50:05 UTC
* Number of recursive dependencies: 128

Run `revdepcheck::revdep_details(, "cSEM")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rdpack’
      All declared Imports should be used.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) calculateEffects.Rd:24: Lost braces; missing escapes or markup?
        24 | equals (I-B)^{-1}Gamma. The indirect effect equals the difference between
           |              ^
    ```

# CSGo

<details>

* Version: 0.6.7
* GitHub: https://github.com/adsoncostanzifilho/CSGo
* Source code: https://github.com/cran/CSGo
* Date/Publication: 2021-05-07 18:50:02 UTC
* Number of recursive dependencies: 76

Run `revdepcheck::revdep_details(, "CSGo")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘extrafont’ ‘future’
      All declared Imports should be used.
    ```

# dar

<details>

* Version: 1.0.0
* GitHub: https://github.com/MicrobialGenomics-IrsicaixaOrg/dar
* Source code: https://github.com/cran/dar
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 378

Run `revdepcheck::revdep_details(, "dar")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        doc   4.2Mb
    ```

# deseats

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/deseats
* Date/Publication: 2024-07-12 10:50:15 UTC
* Number of recursive dependencies: 115

Run `revdepcheck::revdep_details(, "deseats")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.5Mb
      sub-directories of 1Mb or more:
        libs   7.8Mb
    ```

# dipsaus

<details>

* Version: 0.2.9
* GitHub: https://github.com/dipterix/dipsaus
* Source code: https://github.com/cran/dipsaus
* Date/Publication: 2024-06-27 11:10:01 UTC
* Number of recursive dependencies: 69

Run `revdepcheck::revdep_details(, "dipsaus")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        doc    1.1Mb
        libs   4.2Mb
    ```

# disk.frame

<details>

* Version: 0.8.3
* GitHub: https://github.com/DiskFrame/disk.frame
* Source code: https://github.com/cran/disk.frame
* Date/Publication: 2023-08-24 16:20:10 UTC
* Number of recursive dependencies: 98

Run `revdepcheck::revdep_details(, "disk.frame")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) csv_to_disk.frame.Rd:56: Lost braces; missing escapes or markup?
        56 | strings, and you are encouraged to use {fasttime} to convert the strings to
           |                                        ^
    checkRd: (-1) purrr_as_mapper.Rd:10: Lost braces; missing escapes or markup?
        10 | \item{.f}{a normal function or purrr syntax function i.e. `~{ ...code...}`}
           |                                                             ^
    ```

# dispositionEffect

<details>

* Version: 1.0.1
* GitHub: https://github.com/marcozanotti/dispositionEffect
* Source code: https://github.com/cran/dispositionEffect
* Date/Publication: 2022-05-30 07:50:02 UTC
* Number of recursive dependencies: 136

Run `revdepcheck::revdep_details(, "dispositionEffect")` for more info

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

# DT

<details>

* Version: 0.33
* GitHub: https://github.com/rstudio/DT
* Source code: https://github.com/cran/DT
* Date/Publication: 2024-04-04 05:03:17 UTC
* Number of recursive dependencies: 52

Run `revdepcheck::revdep_details(, "DT")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        htmlwidgets   5.5Mb
    ```

# EFAtools

<details>

* Version: 0.4.4
* GitHub: https://github.com/mdsteiner/EFAtools
* Source code: https://github.com/cran/EFAtools
* Date/Publication: 2023-01-06 14:50:40 UTC
* Number of recursive dependencies: 93

Run `revdepcheck::revdep_details(, "EFAtools")` for more info

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
        libs   6.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘progress’
      All declared Imports should be used.
    ```

# envi

<details>

* Version: 0.1.19
* GitHub: https://github.com/lance-waller-lab/envi
* Source code: https://github.com/cran/envi
* Date/Publication: 2024-01-23 14:40:03 UTC
* Number of recursive dependencies: 153

Run `revdepcheck::revdep_details(, "envi")` for more info

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

* Version: 1.5.2
* GitHub: https://github.com/epiforecasts/EpiNow2
* Source code: https://github.com/cran/EpiNow2
* Date/Publication: 2024-05-16 22:50:06 UTC
* Number of recursive dependencies: 132

Run `revdepcheck::revdep_details(, "EpiNow2")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 227.1Mb
      sub-directories of 1Mb or more:
        doc        1.8Mb
        extdata    2.3Mb
        libs     221.6Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘cmdstanr’
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
* Number of recursive dependencies: 148

Run `revdepcheck::revdep_details(, "epitweetr")` for more info

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

# erah

<details>

* Version: 2.0.1
* GitHub: https://github.com/xdomingoal/erah-devel
* Source code: https://github.com/cran/erah
* Date/Publication: 2023-12-20 10:10:02 UTC
* Number of recursive dependencies: 91

Run `revdepcheck::revdep_details(, "erah")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘mzR’
    ```

# fabletools

<details>

* Version: 0.4.2
* GitHub: https://github.com/tidyverts/fabletools
* Source code: https://github.com/cran/fabletools
* Date/Publication: 2024-04-22 11:22:41 UTC
* Number of recursive dependencies: 106

Run `revdepcheck::revdep_details(, "fabletools")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘fable’
    ```

# fastRhockey

<details>

* Version: 0.4.0
* GitHub: https://github.com/sportsdataverse/fastRhockey
* Source code: https://github.com/cran/fastRhockey
* Date/Publication: 2022-10-25 20:55:15 UTC
* Number of recursive dependencies: 116

Run `revdepcheck::revdep_details(, "fastRhockey")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) update_nhl_db.Rd:51-53: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) update_nhl_db.Rd:54-57: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) update_phf_db.Rd:51-53: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) update_phf_db.Rd:54-57: Lost braces in \itemize; meant \describe ?
    ```

# fdacluster

<details>

* Version: 0.3.0
* GitHub: https://github.com/astamm/fdacluster
* Source code: https://github.com/cran/fdacluster
* Date/Publication: 2023-07-04 15:53:04 UTC
* Number of recursive dependencies: 127

Run `revdepcheck::revdep_details(, "fdacluster")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 22.7Mb
      sub-directories of 1Mb or more:
        R      1.8Mb
        doc    1.5Mb
        help   2.1Mb
        libs  16.8Mb
    ```

# fect

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/fect
* Date/Publication: 2022-10-14 09:52:32 UTC
* Number of recursive dependencies: 80

Run `revdepcheck::revdep_details(, "fect")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 14.7Mb
      sub-directories of 1Mb or more:
        libs  13.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘panelView’
      All declared Imports should be used.
    ```

# FLAMES

<details>

* Version: 1.10.0
* GitHub: https://github.com/mritchielab/FLAMES
* Source code: https://github.com/cran/FLAMES
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 259

Run `revdepcheck::revdep_details(, "FLAMES")` for more info

</details>

## In both

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
    See ‘/c4/home/henrik/repositories/future/revdep/checks/FLAMES/new/FLAMES.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        data   2.7Mb
        doc    1.7Mb
        libs   1.5Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Package listed in more than one of Depends, Imports, Suggests, Enhances:
      ‘txdbmaker’
    A package should be listed in only one of these fields.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'IRanges'
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    find_variants_grange: no visible binding for global variable
      'which_label'
    find_variants_grange: no visible binding for global variable
      'nucleotide'
    find_variants_grange: no visible binding for global variable 'pos'
    find_variants_grange: no visible binding for global variable 'count'
    find_variants_grange: no visible binding for global variable
      'counts_no_ins'
    find_variants_grange: no visible binding for global variable 'ref'
    generate_sc_sce: no visible binding for global variable 'FSM_match'
    ...
    variant_count_tb: no visible binding for global variable 'barcode'
    variant_count_tb: no visible binding for global variable 'allele_count'
    variant_count_tb: no visible binding for global variable
      'cell_total_reads'
    Undefined global functions or variables:
      . BarcodeEditDist FSM_match FlankEditDist Freq all_vars allele_count
      bam_index barcode cell_id cell_total_reads cnt count counts_no_ins
      everything gene_id heatmap_annotation_colors label length_bin mat
      mutation_index n name nucleotide pct pos ref tr_id transcript
      transcript_id value which_label x y
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) bulk_long_pipeline.Rd:80-81: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) bulk_long_pipeline.Rd:82-83: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) bulk_long_pipeline.Rd:84-86: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) bulk_long_pipeline.Rd:40: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) bulk_long_pipeline.Rd:41: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) bulk_long_pipeline.Rd:42: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) bulk_long_pipeline.Rd:43: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) bulk_long_pipeline.Rd:44: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) bulk_long_pipeline.Rd:45: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) create_config.Rd:14: Lost braces in \itemize; meant \describe ?
    ...
    checkRd: (-1) sc_long_multisample_pipeline.Rd:92-94: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) sc_long_pipeline.Rd:94-95: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) sc_long_pipeline.Rd:96-97: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) sc_long_pipeline.Rd:98-100: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) sc_long_pipeline.Rd:53: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) sc_long_pipeline.Rd:54: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) sc_long_pipeline.Rd:55: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) sc_long_pipeline.Rd:56: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) sc_long_pipeline.Rd:57: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) sc_long_pipeline.Rd:58: Lost braces in \itemize; \value handles \item{}{} directly
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# flowGraph

<details>

* Version: 1.12.0
* GitHub: https://github.com/aya49/flowGraph
* Source code: https://github.com/cran/flowGraph
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 93

Run `revdepcheck::revdep_details(, "flowGraph")` for more info

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

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) fg_get_graph.Rd:13: Lost braces
        13 | A list containing two data frames (\code{v} and ]code{e})
           |                                                      ^
    checkRd: (-1) ggdf.Rd:22: Lost braces
        22 | code{ggdf} adds to the data frames \code{v} and \code{e} in slot
           |     ^
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘doParallel’
    ```

# forecastML

<details>

* Version: 0.9.0
* GitHub: https://github.com/nredell/forecastML
* Source code: https://github.com/cran/forecastML
* Date/Publication: 2020-05-07 15:10:17 UTC
* Number of recursive dependencies: 104

Run `revdepcheck::revdep_details(, "forecastML")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dtplyr’
      All declared Imports should be used.
    ```

# GeDS

<details>

* Version: 0.2.3
* GitHub: https://github.com/emilioluissaenzguillen/GeDS
* Source code: https://github.com/cran/GeDS
* Date/Publication: 2024-07-19 14:30:02 UTC
* Number of recursive dependencies: 33

Run `revdepcheck::revdep_details(, "GeDS")` for more info

</details>

## In both

*   checking whether package ‘GeDS’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/future/revdep/checks/GeDS/new/GeDS.Rcheck/00install.out’ for details.
    ```

# geocmeans

<details>

* Version: 0.3.4
* GitHub: https://github.com/JeremyGelb/geocmeans
* Source code: https://github.com/cran/geocmeans
* Date/Publication: 2023-09-12 03:10:02 UTC
* Number of recursive dependencies: 200

Run `revdepcheck::revdep_details(, "geocmeans")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.3Mb
      sub-directories of 1Mb or more:
        extdata   3.0Mb
        libs      9.0Mb
    ```

# GeoModels

<details>

* Version: 2.0.4
* GitHub: https://github.com/vmoprojs/GeoModels
* Source code: https://github.com/cran/GeoModels
* Date/Publication: 2024-07-09 14:50:12 UTC
* Number of recursive dependencies: 54

Run `revdepcheck::revdep_details(, "GeoModels")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        R      1.0Mb
        data   1.9Mb
        libs   2.8Mb
    ```

# googleComputeEngineR

<details>

* Version: 0.3.0
* GitHub: https://github.com/cloudyr/googleComputeEngineR
* Source code: https://github.com/cran/googleComputeEngineR
* Date/Publication: 2019-05-04 22:40:02 UTC
* Number of recursive dependencies: 66

Run `revdepcheck::revdep_details(, "googleComputeEngineR")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        doc   4.5Mb
    ```

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) docker_cmd.gce_instance.Rd:21: Lost braces; missing escapes or markup?
        21 | \item{nvidia}{If true will use \code{nvidia-docker} instead of {docker}}
           |                                                                ^
    checkRd: (-1) gce_list_disks.Rd:11: Lost braces; missing escapes or markup?
        11 | \item{filter}{Sets a filter expression for filtering listed resources, in the form filter={expression}}
           |                                                                                           ^
    checkRd: (-1) gce_list_disks_all.Rd:11: Lost braces; missing escapes or markup?
        11 | \item{filter}{Sets a filter expression for filtering listed resources, in the form filter={expression}}
           |                                                                                           ^
    checkRd: (-1) gce_list_firewall_rules.Rd:11: Lost braces; missing escapes or markup?
    ...
           |                                                                                           ^
    checkRd: (-1) gce_list_networks.Rd:11: Lost braces; missing escapes or markup?
        11 | \item{filter}{Sets a filter expression for filtering listed resources, in the form filter={expression}}
           |                                                                                           ^
    checkRd: (-1) gce_list_zone_op.Rd:11: Lost braces; missing escapes or markup?
        11 | \item{filter}{Sets a filter expression for filtering listed resources, in the form filter={expression}}
           |                                                                                           ^
    checkRd: (-1) gce_list_zones.Rd:13: Lost braces; missing escapes or markup?
        13 | \item{filter}{Sets a filter expression for filtering listed resources, in the form filter={expression}}
           |                                                                                           ^
    ```

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
* Number of recursive dependencies: 68

Run `revdepcheck::revdep_details(, "googleTagManageR")` for more info

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
* Number of recursive dependencies: 97

Run `revdepcheck::revdep_details(, "greed")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 38.4Mb
      sub-directories of 1Mb or more:
        libs  36.1Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 989 marked UTF-8 strings
    ```

# gstat

<details>

* Version: 2.1-1
* GitHub: https://github.com/r-spatial/gstat
* Source code: https://github.com/cran/gstat
* Date/Publication: 2023-04-06 10:32:40 UTC
* Number of recursive dependencies: 39

Run `revdepcheck::revdep_details(, "gstat")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) jura.Rd:29: Lost braces; missing escapes or markup?
        29 |         \item{Cd}{ mg cadmium kg^{-1} topsoil }
           |                                  ^
    checkRd: (-1) jura.Rd:30: Lost braces; missing escapes or markup?
        30 |         \item{Co}{ mg cobalt kg^{-1} topsoil }
           |                                 ^
    checkRd: (-1) jura.Rd:31: Lost braces; missing escapes or markup?
        31 |         \item{Cr}{ mg chromium kg^{-1} topsoil }
           |                                   ^
    checkRd: (-1) jura.Rd:32: Lost braces; missing escapes or markup?
    ...
           |                               ^
    checkRd: (-1) jura.Rd:35: Lost braces; missing escapes or markup?
        35 |         \item{Zn}{ mg zinc kg^{-1} topsoil }
           |                               ^
    checkRd: (-1) variogramST.Rd:49: Lost braces; missing escapes or markup?
        49 |   time lag $t$, the pseudo cross variogram $(Z_i(s)-Z_{i+t}(s+h))^2$ is averaged over all time 
           |                                                       ^
    checkRd: (-1) variogramST.Rd:50: Lost braces; missing escapes or markup?
        50 |   lagged observation sets $Z_i$ and $Z_{i+t}$ available (weighted by the number of pairs involved).
           |                                        ^
    ```

# gsynth

<details>

* Version: 1.2.1
* GitHub: NA
* Source code: https://github.com/cran/gsynth
* Date/Publication: 2021-08-06 07:50:05 UTC
* Number of recursive dependencies: 76

Run `revdepcheck::revdep_details(, "gsynth")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        libs   5.2Mb
    ```

# gtfs2gps

<details>

* Version: 2.1-1
* GitHub: https://github.com/ipeaGIT/gtfs2gps
* Source code: https://github.com/cran/gtfs2gps
* Date/Publication: 2023-04-28 19:50:02 UTC
* Number of recursive dependencies: 87

Run `revdepcheck::revdep_details(, "gtfs2gps")` for more info

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
       9.             └─terra:::error(f, x@ptr$getError())
      
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
* Number of recursive dependencies: 68

Run `revdepcheck::revdep_details(, "hackeRnews")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# hal9001

<details>

* Version: 0.4.6
* GitHub: https://github.com/tlverse/hal9001
* Source code: https://github.com/cran/hal9001
* Date/Publication: 2023-11-14 15:00:02 UTC
* Number of recursive dependencies: 99

Run `revdepcheck::revdep_details(, "hal9001")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        libs   4.9Mb
    ```

# hbamr

<details>

* Version: 2.3.1
* GitHub: https://github.com/jbolstad/hbamr
* Source code: https://github.com/cran/hbamr
* Date/Publication: 2024-06-04 15:50:06 UTC
* Number of recursive dependencies: 90

Run `revdepcheck::revdep_details(, "hbamr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 342.1Mb
      sub-directories of 1Mb or more:
        libs  340.5Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# hero

<details>

* Version: 0.6
* GitHub: NA
* Source code: https://github.com/cran/hero
* Date/Publication: 2023-07-15 21:10:09 UTC
* Number of recursive dependencies: 159

Run `revdepcheck::revdep_details(, "hero")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Rmpi’
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) hero.Rd:67-68: Lost braces
        67 | then \code{\link[pbapply]{pblapply}} is used. If code{package ==
           |                                                      ^
    checkRd: (-1) hero.Rd:69: Lost braces
        69 | code{package == "Rmpi"}, then \code{\link[Rmpi]{mpi.applyLB}} is used.}
           |     ^
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Rmpi’
    ```

# heterogen

<details>

* Version: 1.2.33
* GitHub: https://github.com/patauchi/heterogen
* Source code: https://github.com/cran/heterogen
* Date/Publication: 2023-08-17 07:42:33 UTC
* Number of recursive dependencies: 55

Run `revdepcheck::revdep_details(, "heterogen")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.8Mb
      sub-directories of 1Mb or more:
        extdata   2.6Mb
        libs      6.0Mb
    ```

# httpgd

<details>

* Version: 2.0.2
* GitHub: https://github.com/nx10/httpgd
* Source code: https://github.com/cran/httpgd
* Date/Publication: 2024-06-05 21:40:27 UTC
* Number of recursive dependencies: 66

Run `revdepcheck::revdep_details(, "httpgd")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’/software/c4/cbi/software/_rocky8/R-4.4.1-gcc13/lib64/R/bin/BATCH: line 60: 1026404 Segmentation fault      (core dumped) ${R_HOME}/bin/R -f ${in} ${opts} ${R_BATCH_OPTIONS} > ${out} 2>&1
    
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
       1. └─jsonlite::fromJSON(httr::content(res, as = "text")) at test-server.R:62:3
       2.   └─jsonlite:::parse_and_simplify(...)
       3.     └─jsonlite:::parseJSON(txt, bigint_as_char)
       4.       └─jsonlite:::parse_string(txt, bigint_as_char)
      ── Error ('test-server.R:83:5'): Clear plots ───────────────────────────────────
    ...
      1/1 mismatches
      [1] 503 - 404 == 99
      
      [ FAIL 16 | WARN 0 | SKIP 0 | PASS 2 ]
      Error: Test failures
      Execution halted
      
       *** caught segfault ***
      address 0x4adfdb0, cause 'invalid permissions'
      An irrecoverable exception occurred. R is aborting now ...
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++14: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 12.5Mb
      sub-directories of 1Mb or more:
        libs  11.9Mb
    ```

# hwep

<details>

* Version: 2.0.2
* GitHub: https://github.com/dcgerard/hwep
* Source code: https://github.com/cran/hwep
* Date/Publication: 2023-05-16 17:40:02 UTC
* Number of recursive dependencies: 115

Run `revdepcheck::revdep_details(, "hwep")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 80.5Mb
      sub-directories of 1Mb or more:
        libs  79.9Mb
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) simgl.Rd:50: Lost braces; missing escapes or markup?
        50 | Uses the {updog} R package for simulating read counts and generating
           |          ^
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# hydroloom

<details>

* Version: 1.0.2
* GitHub: https://github.com/DOI-USGS/hydroloom
* Source code: https://github.com/cran/hydroloom
* Date/Publication: 2024-01-15 16:20:02 UTC
* Number of recursive dependencies: 145

Run `revdepcheck::revdep_details(, "hydroloom")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘hydroloom-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: index_points_to_waterbodies
    > ### Title: Index Points to Waterbodies
    > ### Aliases: index_points_to_waterbodies
    > 
    > ### ** Examples
    > 
    > 
    > source(system.file("extdata/sample_data.R", package = "nhdplusTools"))
    Error in source(system.file("extdata/sample_data.R", package = "nhdplusTools")) : 
      empty file/url name
    Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘advanced_network.Rmd’ using rmarkdown
    --- finished re-building ‘advanced_network.Rmd’
    
    --- re-building ‘flow-table.Rmd’ using rmarkdown
    
    Quitting from lines 12-32 [setup] (flow-table.Rmd)
    Error: processing vignette 'flow-table.Rmd' failed with diagnostics:
    there is no package called 'nhdplusTools'
    ...
    --- finished re-building ‘hydroloom.Rmd’
    
    --- re-building ‘non-dendritic.Rmd’ using rmarkdown
    --- finished re-building ‘non-dendritic.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘flow-table.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘nhdplusTools’
    ```

# infercnv

<details>

* Version: 1.20.0
* GitHub: https://github.com/broadinstitute/inferCNV
* Source code: https://github.com/cran/infercnv
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 205

Run `revdepcheck::revdep_details(, "infercnv")` for more info

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

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) run.Rd:268: Lost braces; missing escapes or markup?
       268 | \item{require_DE_all_normals}{If mask_nonDE_genes is set, those genes will be masked only if they are are found as DE according to test.use and mask_nonDE_pval in each of the comparisons to normal cells options: {"any", "most", "all"} (default: "any")
           |                                                                                                                                                                                                                     ^
    ```

# InPAS

<details>

* Version: 2.12.0
* GitHub: NA
* Source code: https://github.com/cran/InPAS
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 165

Run `revdepcheck::revdep_details(, "InPAS")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in Rd file 'get_ssRleCov.Rd':
      ‘[BSgenome:BSgenomeForge]{BSgenome::forgeBSgenomeDataPkg()}’
    
    Missing link or links in Rd file 'set_globals.Rd':
      ‘[BSgenome:BSgenomeForge]{BSgenome::forgeBSgenomeDataPkg()}’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking dependencies in R code ... NOTE
    ```
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘adjust_distalCPs’ ‘adjust_proximalCPs’ ‘adjust_proximalCPsByNBC’
      ‘adjust_proximalCPsByPWM’ ‘calculate_mse’ ‘find_valleyBySpline’
      ‘get_PAscore’ ‘get_PAscore2’ ‘remove_convergentUTR3s’
      ‘search_distalCPs’ ‘search_proximalCPs’
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Documented arguments not in \usage in Rd file 'get_UTR3TotalCov.Rd':
      ‘gcCompensationensation’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# interflex

<details>

* Version: 1.2.6
* GitHub: NA
* Source code: https://github.com/cran/interflex
* Date/Publication: 2021-05-18 11:40:02 UTC
* Number of recursive dependencies: 91

Run `revdepcheck::revdep_details(, "interflex")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        libs   5.3Mb
    ```

# ISAnalytics

<details>

* Version: 1.14.0
* GitHub: https://github.com/calabrialab/ISAnalytics
* Source code: https://github.com/cran/ISAnalytics
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 179

Run `revdepcheck::revdep_details(, "ISAnalytics")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.6Mb
      sub-directories of 1Mb or more:
        R      1.0Mb
        data   1.4Mb
        doc    3.6Mb
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) refGenes_hg19.Rd:21: Lost braces; missing escapes or markup?
        21 | \item Download from {http://hgdownload.soe.ucsc.edu/goldenPath/hg19/database/}
           |                     ^
    ```

# ivmte

<details>

* Version: 1.4.0
* GitHub: NA
* Source code: https://github.com/cran/ivmte
* Date/Publication: 2021-09-17 12:20:07 UTC
* Number of recursive dependencies: 116

Run `revdepcheck::revdep_details(, "ivmte")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'gurobi', 'cplexAPI'
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) sTsls.Rd:17: Lost braces; missing escapes or markup?
        17 | \item{pi}{the matrix E[XZ']E[ZZ']^{-1}}
           |                                   ^
    checkRd: (-1) sTslsSplines.Rd:20: Lost braces; missing escapes or markup?
        20 | \item{pi}{matrix, corresponds to E[XZ']E[ZZ']^{-1}, the first stage
           |                                               ^
    ```

# keyATM

<details>

* Version: 0.5.2
* GitHub: https://github.com/keyATM/keyATM
* Source code: https://github.com/cran/keyATM
* Date/Publication: 2024-04-24 14:50:06 UTC
* Number of recursive dependencies: 102

Run `revdepcheck::revdep_details(, "keyATM")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 25.4Mb
      sub-directories of 1Mb or more:
        libs  24.9Mb
    ```

# latentcor

<details>

* Version: 2.0.1
* GitHub: NA
* Source code: https://github.com/cran/latentcor
* Date/Publication: 2022-09-05 20:50:02 UTC
* Number of recursive dependencies: 143

Run `revdepcheck::revdep_details(, "latentcor")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) evaluation.Rd:38: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) evaluation.Rd:39: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) evaluation.Rd:40: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) evaluation.Rd:41: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) evaluation.Rd:42: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) evaluation.Rd:43: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) evaluation.Rd:44: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) evaluation.Rd:45: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) evaluation.Rd:46: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) evaluation.Rd:47: Lost braces in \itemize; \value handles \item{}{} directly
    ...
    checkRd: (-1) gen_data.Rd:35: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) gen_data.Rd:36-37: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) get_types.Rd:17: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) interpolation.Rd:23: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) interpolation.Rd:24: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) latentcor.Rd:38: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) latentcor.Rd:39: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) latentcor.Rd:40: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) latentcor.Rd:41: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) latentcor.Rd:42: Lost braces in \itemize; \value handles \item{}{} directly
    ```

# lava

<details>

* Version: 1.8.0
* GitHub: https://github.com/kkholst/lava
* Source code: https://github.com/cran/lava
* Date/Publication: 2024-03-05 13:00:02 UTC
* Number of recursive dependencies: 131

Run `revdepcheck::revdep_details(, "lava")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘lavaSearch2’
    ```

# ldsr

<details>

* Version: 0.0.2
* GitHub: https://github.com/ntthung/ldsr
* Source code: https://github.com/cran/ldsr
* Date/Publication: 2020-05-04 14:40:09 UTC
* Number of recursive dependencies: 77

Run `revdepcheck::revdep_details(, "ldsr")` for more info

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
        libs   7.0Mb
    ```

# lidR

<details>

* Version: 4.1.2
* GitHub: https://github.com/r-lidar/lidR
* Source code: https://github.com/cran/lidR
* Date/Publication: 2024-07-09 08:40:02 UTC
* Number of recursive dependencies: 147

Run `revdepcheck::revdep_details(, "lidR")` for more info

</details>

## Newly fixed

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > Sys.setenv("R_TESTS" = "")
      > 
      > library(testthat)
      > library(lidR)
      > test_check("lidR")
      Tests using raster: terra 
    ...
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-locate_trees.R:36:3'): find_trees is backward compatible ─────
      dim(ttops) not equal to c(177, 2).
      1/2 mismatches
      [1] 178 - 177 == 1
      
      [ FAIL 1 | WARN 0 | SKIP 43 | PASS 1303 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 19.1Mb
      sub-directories of 1Mb or more:
        R         1.0Mb
        doc       1.0Mb
        extdata   1.2Mb
        libs     15.4Mb
    ```

# lightr

<details>

* Version: 1.7.1
* GitHub: https://github.com/ropensci/lightr
* Source code: https://github.com/cran/lightr
* Date/Publication: 2024-03-21 21:50:10 UTC
* Number of recursive dependencies: 92

Run `revdepcheck::revdep_details(, "lightr")` for more info

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

* Version: 1.10.0
* GitHub: https://github.com/KechrisLab/MAI
* Source code: https://github.com/cran/MAI
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 176

Run `revdepcheck::revdep_details(, "MAI")` for more info

</details>

## In both

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

# manynet

<details>

* Version: 1.0.2
* GitHub: https://github.com/stocnet/manynet
* Source code: https://github.com/cran/manynet
* Date/Publication: 2024-07-22 07:50:02 UTC
* Number of recursive dependencies: 152

Run `revdepcheck::revdep_details(, "manynet")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘migraph’
    
    Package which this enhances but not available for checking: ‘Rgraphviz’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 7 marked UTF-8 strings
    ```

# mapme.biodiversity

<details>

* Version: 0.8.0
* GitHub: https://github.com/mapme-initiative/mapme.biodiversity
* Source code: https://github.com/cran/mapme.biodiversity
* Date/Publication: 2024-07-03 05:30:02 UTC
* Number of recursive dependencies: 106

Run `revdepcheck::revdep_details(, "mapme.biodiversity")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error ('test-calc_deforestation_drivers.R:13:3'): deforestation drivers works ──
      <Rcpp::exception/C++Error/error/condition>
      Error: crs not found: is it missing?
      Backtrace:
          ▆
    ...
       12. │               └─jsonlite:::parseJSON(txt, bigint_as_char)
       13. │                 └─jsonlite:::parse_string(txt, bigint_as_char)
       14. └─base::.handleSimpleError(...)
       15.   └─purrr (local) h(simpleError(msg, call))
       16.     └─cli::cli_abort(...)
       17.       └─rlang::abort(...)
      
      [ FAIL 3 | WARN 1 | SKIP 33 | PASS 298 ]
      Error: Test failures
      Execution halted
    ```

# metaGE

<details>

* Version: 1.0.3
* GitHub: NA
* Source code: https://github.com/cran/metaGE
* Date/Publication: 2023-09-28 08:50:02 UTC
* Number of recursive dependencies: 148

Run `revdepcheck::revdep_details(, "metaGE")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        data   4.2Mb
    ```

# mice

<details>

* Version: 3.16.0
* GitHub: https://github.com/amices/mice
* Source code: https://github.com/cran/mice
* Date/Publication: 2023-06-05 14:40:02 UTC
* Number of recursive dependencies: 131

Run `revdepcheck::revdep_details(, "mice")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘miceadds’
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) ampute.Rd:143: Lost braces
       143 | we refer to \doi{10.1177/0049124118799376}{Schouten and Vink, 2018}.
           |                                           ^
    checkRd: (-1) ampute.Rd:188: Lost braces
       188 | \doi{10.1080/00949655.2018.1491577}{Schouten, Lugtig and Vink, 2018}.
           |                                    ^
    checkRd: (-1) ampute.Rd:223: Lost braces
       223 | Schouten, R.M. and Vink, G. (2018){The Dance of the Mechanisms: How Observed Information Influences the Validity of Missingness Assumptions}.
           |                                   ^
    checkRd: (-1) mice.Rd:348: Lost braces; missing escapes or markup?
       348 | The \pkg{mice} software was published in the {Journal of Statistical Software} (Van Buuren and Groothuis-Oudshoorn, 2011). \doi{10.18637/jss.v045.i03}
           |                                              ^
    checkRd: (-1) mice.impute.pmm.Rd:87: Lost braces; missing escapes or markup?
        87 | \item{Construct \eqn{n_0} sets \eqn{Z_j}, each containing \eqn{d} candidate donors, from Y_{obs} such that \eqn{\sum_d\dot\eta(i,j)} is minimum for all \eqn{j=1,\dots,n_0}. Break ties randomly.}
           |                                                                                            ^
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘miceadds’
    ```

# mikropml

<details>

* Version: 1.6.1
* GitHub: https://github.com/SchlossLab/mikropml
* Source code: https://github.com/cran/mikropml
* Date/Publication: 2023-08-21 15:10:05 UTC
* Number of recursive dependencies: 130

Run `revdepcheck::revdep_details(, "mikropml")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) create_grouped_data_partition.Rd:60: Lost braces; missing escapes or markup?
        60 | Zena Lapp, {zenalapp@umich.edu}
           |            ^
    checkRd: (-1) create_grouped_data_partition.Rd:62: Lost braces; missing escapes or markup?
        62 | Kelly Sovacool, {sovacool@umich.edu}
           |                 ^
    checkRd: (-1) create_grouped_k_multifolds.Rd:30: Lost braces; missing escapes or markup?
        30 | Zena Lapp, {zenalapp@umich.edu}
           |            ^
    checkRd: (-1) get_partition_indices.Rd:58: Lost braces; missing escapes or markup?
        58 | Kelly Sovacool, {sovacool@umich.edu}
           |                 ^
    checkRd: (-1) set_hparams_glmnet.Rd:16: Lost braces; missing escapes or markup?
        16 | Zena Lapp, {zenalapp@umich.edu}
           |            ^
    ```

# MineICA

<details>

* Version: 1.44.0
* GitHub: NA
* Source code: https://github.com/cran/MineICA
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 217

Run `revdepcheck::revdep_details(, "MineICA")` for more info

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
    Missing link or links in Rd file 'Alist.Rd':
      ‘class-IcaSet’
    
    Missing link or links in Rd file 'Slist.Rd':
      ‘class-IcaSet’
    
    Missing link or links in Rd file 'class-IcaSet.Rd':
      ‘class-IcaSet’
    
    Missing link or links in Rd file 'getComp.Rd':
      ‘class-IcaSet’
    
    Missing link or links in Rd file 'runAn.Rd':
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

*   checking re-building of vignette outputs ... WARNING
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

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) clusterFastICARuns.Rd:47: Lost braces
        47 |   \item{...}{Additional parameters for code{funClus}}
           |                                            ^
    checkRd: (-1) clusterFastICARuns.Rd:52: Lost braces
        52 |   item{W}{the estimated unmixing matrix}, \item{Iq}{Iq
           |       ^
    checkRd: (-1) clusterFastICARuns.Rd:52: Lost braces
        52 |   item{W}{the estimated unmixing matrix}, \item{Iq}{Iq
           |          ^
    checkRd: (-1) plotDensOneAnnotInAllComp.Rd:104: Lost braces
    ...
           |                                 ^
    checkRd: (-1) runICA.Rd:44: Lost braces
        44 |   item{W}{the estimated unmixing matrix}}
           |       ^
    checkRd: (-1) runICA.Rd:44: Lost braces
        44 |   item{W}{the estimated unmixing matrix}}
           |          ^
    checkRd: (-1) writeProjByComp.Rd:38: Lost braces
        38 | their annotations, please remember to modify code{genesPath(params)}, or
           |                                                  ^
    ```

# missSBM

<details>

* Version: 1.0.4
* GitHub: https://github.com/grossSBM/missSBM
* Source code: https://github.com/cran/missSBM
* Date/Publication: 2023-10-24 16:00:05 UTC
* Number of recursive dependencies: 113

Run `revdepcheck::revdep_details(, "missSBM")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.1Mb
      sub-directories of 1Mb or more:
        R      1.0Mb
        libs   7.9Mb
    ```

# mistyR

<details>

* Version: 1.12.0
* GitHub: https://github.com/saezlab/mistyR
* Source code: https://github.com/cran/mistyR
* Date/Publication: 2024-05-01
* Number of recursive dependencies: 153

Run `revdepcheck::revdep_details(, "mistyR")` for more info

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

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) collect_results.Rd:32: Lost braces; missing escapes or markup?
        32 |             for all performance measures for each {target} over all samples.}
           |                                                   ^
    ```

# modelsummary

<details>

* Version: 2.1.1
* GitHub: https://github.com/vincentarelbundock/modelsummary
* Source code: https://github.com/cran/modelsummary
* Date/Publication: 2024-06-14 14:20:06 UTC
* Number of recursive dependencies: 300

Run `revdepcheck::revdep_details(, "modelsummary")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        help       3.8Mb
        tinytest   1.7Mb
    ```

# momentuHMM

<details>

* Version: 1.5.5
* GitHub: https://github.com/bmcclintock/momentuHMM
* Source code: https://github.com/cran/momentuHMM
* Date/Publication: 2022-10-18 20:52:35 UTC
* Number of recursive dependencies: 149

Run `revdepcheck::revdep_details(, "momentuHMM")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.0Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        doc    1.7Mb
        libs   7.1Mb
    ```

# MOSS

<details>

* Version: 0.2.2
* GitHub: https://github.com/agugonrey/MOSS
* Source code: https://github.com/cran/MOSS
* Date/Publication: 2022-03-25 15:50:05 UTC
* Number of recursive dependencies: 182

Run `revdepcheck::revdep_details(, "MOSS")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) ssvdEN_sol_path.Rd:58: Lost braces; missing escapes or markup?
        58 | \item{tol}{Convergence is determined when ||U_j - U_{j-1}||_F < tol,
           |                                                     ^
    checkRd: (-1) ssvdEN_sol_path_par.Rd:59: Lost braces; missing escapes or markup?
        59 | \item{tol}{Convergence is determined when ||U_j - U_{j-1}||_F < tol,
           |                                                     ^
    ```

# multilevelcoda

<details>

* Version: 1.3.0.2
* GitHub: https://github.com/florale/multilevelcoda
* Source code: https://github.com/cran/multilevelcoda
* Date/Publication: 2024-07-09 14:50:02 UTC
* Number of recursive dependencies: 171

Run `revdepcheck::revdep_details(, "multilevelcoda")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        doc   6.4Mb
    ```

# multitool

<details>

* Version: 0.1.4
* GitHub: https://github.com/ethan-young/multitool
* Source code: https://github.com/cran/multitool
* Date/Publication: 2024-02-08 17:40:02 UTC
* Number of recursive dependencies: 161

Run `revdepcheck::revdep_details(, "multitool")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.0Mb
      sub-directories of 1Mb or more:
        doc   4.3Mb
    ```

# multiverse

<details>

* Version: 0.6.1
* GitHub: https://github.com/MUCollective/multiverse
* Source code: https://github.com/cran/multiverse
* Date/Publication: 2022-07-04 13:20:02 UTC
* Number of recursive dependencies: 133

Run `revdepcheck::revdep_details(, "multiverse")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) durante.Rd:60-61: Lost braces
        60 | in their study, \doi{10.1177/0956797612466416}{\emph{The
           |                                               ^
    checkRd: (-1) hurricane.Rd:34: Lost braces
        34 | in their study, \doi{10.1073/pnas.1402786111}{\emph{Female hurricanes are deadlier than male hurricanes}}.
           |                                              ^
    checkRd: (-1) userlogs.Rd:33: Lost braces
        33 | \doi{10.1145/2470654.2481359}{Evaluating the Efficiency of Physical Visualizations}
           |                              ^
    ```

# nebula

<details>

* Version: 1.5.3
* GitHub: https://github.com/lhe17/nebula
* Source code: https://github.com/cran/nebula
* Date/Publication: 2024-02-15 23:00:02 UTC
* Number of recursive dependencies: 173

Run `revdepcheck::revdep_details(, "nebula")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 35.4Mb
      sub-directories of 1Mb or more:
        libs  33.7Mb
    ```

# nflseedR

<details>

* Version: 1.2.0
* GitHub: https://github.com/nflverse/nflseedR
* Source code: https://github.com/cran/nflseedR
* Date/Publication: 2023-01-05 21:50:31 UTC
* Number of recursive dependencies: 87

Run `revdepcheck::revdep_details(, "nflseedR")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) load_schedules.Rd:27: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) load_schedules.Rd:28: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) load_schedules.Rd:29: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) load_schedules.Rd:30: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) load_schedules.Rd:31: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) load_schedules.Rd:60: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) load_schedules.Rd:61: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) load_schedules.Rd:62: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) load_schedules.Rd:63: Lost braces in \itemize; \value handles \item{}{} directly
    ```

# nhdplusTools

<details>

* Version: 1.2.1
* GitHub: https://github.com/doi-usgs/nhdplusTools
* Source code: https://github.com/cran/nhdplusTools
* Date/Publication: 2024-06-05 18:20:02 UTC
* Number of recursive dependencies: 138

Run `revdepcheck::revdep_details(, "nhdplusTools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.5Mb
      sub-directories of 1Mb or more:
        data   1.6Mb
        doc    4.2Mb
    ```

# oncomsm

<details>

* Version: 0.1.4
* GitHub: https://github.com/Boehringer-Ingelheim/oncomsm
* Source code: https://github.com/cran/oncomsm
* Date/Publication: 2023-04-17 07:00:02 UTC
* Number of recursive dependencies: 126

Run `revdepcheck::revdep_details(, "oncomsm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 64.2Mb
      sub-directories of 1Mb or more:
        doc    1.1Mb
        libs  62.0Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# OOS

<details>

* Version: 1.0.0
* GitHub: https://github.com/tylerJPike/OOS
* Source code: https://github.com/cran/OOS
* Date/Publication: 2021-03-17 13:20:20 UTC
* Number of recursive dependencies: 136

Run `revdepcheck::revdep_details(, "OOS")` for more info

</details>

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# OptimalGoldstandardDesigns

<details>

* Version: 1.0.1
* GitHub: https://github.com/jan-imbi/OptimalGoldstandardDesigns
* Source code: https://github.com/cran/OptimalGoldstandardDesigns
* Date/Publication: 2023-09-11 10:40:05 UTC
* Number of recursive dependencies: 72

Run `revdepcheck::revdep_details(, "OptimalGoldstandardDesigns")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) calc_n_from_c.Rd:5: Lost braces; missing escapes or markup?
         5 | \title{Helper function to calculate other n's given n_{1,T} and allocation ratios}
           |                                                       ^
    checkRd: (-1) calc_n_from_c.Rd:15: Lost braces; missing escapes or markup?
        15 | Helper function to calculate other n's given n_{1,T} and allocation ratios
           |                                                ^
    ```

# pareg

<details>

* Version: 1.8.0
* GitHub: https://github.com/cbg-ethz/pareg
* Source code: https://github.com/cran/pareg
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 317

Run `revdepcheck::revdep_details(, "pareg")` for more info

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
    Failed to load the native TensorFlow runtime.
    See https://www.tensorflow.org/install/errors for some common causes and solutions.
    If you need help, create an issue at https://github.com/tensorflow/tensorflow/issues and include the entire stack trace above this error message.
    Run `reticulate::py_last_error()` for details.
    Warning in serverSocket(port = port) :
      unable to load shared object '/software/c4/cbi/software/_rocky8/R-4.4.1-gcc13/lib64/R/modules//internet.so':
      /lib64/libk5crypto.so.3: undefined symbol: EVP_KDF_ctrl, version OPENSSL_1_1_1b
    Error in serverSocket(port = port) : internet routines cannot be loaded
    Calls: pareg ... .activate_fallback -> basiliskStart -> makePSOCKcluster -> serverSocket
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(pareg)
      Loading required package: tensorflow
      Loading required package: tfprobability
      
      
    ...
      See https://www.tensorflow.org/install/errors for some common causes and solutions.
      If you need help, create an issue at https://github.com/tensorflow/tensorflow/issues and include the entire stack trace above this error message.
      Run `reticulate::py_last_error()` for details.
      Error in serverSocket(port = port) : internet routines cannot be loaded
      Calls: <Anonymous> ... .activate_fallback -> basiliskStart -> makePSOCKcluster -> serverSocket
      In addition: Warning message:
      In serverSocket(port = port) :
        unable to load shared object '/software/c4/cbi/software/_rocky8/R-4.4.1-gcc13/lib64/R/modules//internet.so':
        /lib64/libk5crypto.so.3: undefined symbol: EVP_KDF_ctrl, version OPENSSL_1_1_1b
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘pareg.Rmd’ using rmarkdown
    The magick package is required to crop "/c4/home/henrik/repositories/future/revdep/checks/pareg/new/pareg.Rcheck/vign_test/pareg/vignettes/pareg_files/figure-html/unnamed-chunk-4-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/future/revdep/checks/pareg/new/pareg.Rcheck/vign_test/pareg/vignettes/pareg_files/figure-html/unnamed-chunk-5-1.png" but not available.
    2024-07-29 06:07:21.892909: I tensorflow/core/platform/cpu_feature_guard.cc:193] This TensorFlow binary is optimized with oneAPI Deep Neural Network Library (oneDNN) to use the following CPU instructions in performance-critical operations:  SSE4.1 SSE4.2 AVX AVX2 FMA
    To enable them in other operations, rebuild TensorFlow with the appropriate compiler flags.
    
    Quitting from lines 145-150 [unnamed-chunk-9] (pareg.Rmd)
    Error: processing vignette 'pareg.Rmd' failed with diagnostics:
    ...
    --- re-building ‘pathway_similarities.Rmd’ using rmarkdown
    The magick package is required to crop "/c4/home/henrik/repositories/future/revdep/checks/pareg/new/pareg.Rcheck/vign_test/pareg/vignettes/pathway_similarities_files/figure-html/unnamed-chunk-2-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/future/revdep/checks/pareg/new/pareg.Rcheck/vign_test/pareg/vignettes/pathway_similarities_files/figure-html/unnamed-chunk-3-1.png" but not available.
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
    See ‘/c4/home/henrik/repositories/future/revdep/checks/pareg/new/pareg.Rcheck/00install.out’ for details.
    ```

# partR2

<details>

* Version: 0.9.2
* GitHub: https://github.com/mastoffel/partR2
* Source code: https://github.com/cran/partR2
* Date/Publication: 2024-03-04 13:20:02 UTC
* Number of recursive dependencies: 93

Run `revdepcheck::revdep_details(, "partR2")` for more info

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
* Number of recursive dependencies: 103

Run `revdepcheck::revdep_details(, "pavo")` for more info

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

* Version: 2.1.4
* GitHub: https://github.com/cdmuir/photosynthesis
* Source code: https://github.com/cran/photosynthesis
* Date/Publication: 2023-08-15 07:20:05 UTC
* Number of recursive dependencies: 121

Run `revdepcheck::revdep_details(, "photosynthesis")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        doc   6.1Mb
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

Run `revdepcheck::revdep_details(, "phylolm")` for more info

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

* Version: 1.2.0
* GitHub: https://github.com/pln-team/PLNmodels
* Source code: https://github.com/cran/PLNmodels
* Date/Publication: 2024-03-05 15:50:03 UTC
* Number of recursive dependencies: 155

Run `revdepcheck::revdep_details(, "PLNmodels")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 27.7Mb
      sub-directories of 1Mb or more:
        R      1.0Mb
        data   1.4Mb
        doc    2.1Mb
        libs  22.4Mb
    ```

# portvine

<details>

* Version: 1.0.3
* GitHub: https://github.com/EmanuelSommer/portvine
* Source code: https://github.com/cran/portvine
* Date/Publication: 2024-01-18 16:30:02 UTC
* Number of recursive dependencies: 129

Run `revdepcheck::revdep_details(, "portvine")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 50.2Mb
      sub-directories of 1Mb or more:
        libs  49.1Mb
    ```

# ProFAST

<details>

* Version: 1.4
* GitHub: https://github.com/feiyoung/ProFAST
* Source code: https://github.com/cran/ProFAST
* Date/Publication: 2024-03-18 08:10:06 UTC
* Number of recursive dependencies: 245

Run `revdepcheck::revdep_details(, "ProFAST")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 24.5Mb
      sub-directories of 1Mb or more:
        data   2.2Mb
        libs  21.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# projpred

<details>

* Version: 2.8.0
* GitHub: https://github.com/stan-dev/projpred
* Source code: https://github.com/cran/projpred
* Date/Publication: 2023-12-15 00:00:02 UTC
* Number of recursive dependencies: 157

Run `revdepcheck::revdep_details(, "projpred")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        doc    1.4Mb
        libs   3.6Mb
    ```

# Prostar

<details>

* Version: 1.36.2
* GitHub: https://github.com/prostarproteomics/Prostar
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2024-06-12
* Number of recursive dependencies: 191

Run `revdepcheck::revdep_details(, "Prostar")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘Prostar_UserManual.Rmd’ using rmarkdown
    ! LaTeX Error: File `titling.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'Prostar_UserManual.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/future/revdep/checks/Prostar/new/Prostar.Rcheck/vign_test/Prostar/vignettes/Prostar_UserManual.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See Prostar_UserManual.log for more info.
    --- failed re-building ‘Prostar_UserManual.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Prostar_UserManual.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DT’ ‘R.utils’ ‘RColorBrewer’ ‘XML’ ‘colourpicker’ ‘gtools’
      ‘markdown’ ‘rclipboard’ ‘sass’ ‘shinyTree’ ‘shinyWidgets’
      All declared Imports should be used.
    ```

# psborrow2

<details>

* Version: 0.0.3.4
* GitHub: https://github.com/Genentech/psborrow2
* Source code: https://github.com/cran/psborrow2
* Date/Publication: 2024-04-30 21:30:02 UTC
* Number of recursive dependencies: 152

Run `revdepcheck::revdep_details(, "psborrow2")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

# pseudohouseholds

<details>

* Version: 0.1.1
* GitHub: https://github.com/chris31415926535/pseudohouseholds
* Source code: https://github.com/cran/pseudohouseholds
* Date/Publication: 2023-07-19 09:30:02 UTC
* Number of recursive dependencies: 104

Run `revdepcheck::revdep_details(, "pseudohouseholds")` for more info

</details>

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        data   5.0Mb
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 596 marked UTF-8 strings
    ```

# qape

<details>

* Version: 2.1
* GitHub: NA
* Source code: https://github.com/cran/qape
* Date/Publication: 2023-08-21 14:10:12 UTC
* Number of recursive dependencies: 39

Run `revdepcheck::revdep_details(, "qape")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) srswrRe.Rd:10: Lost braces
        10 |   \item{listRanef}{{\emph{ranef(model)}} object where {\emph{model}} is an { \emph{lmer}} object.}
           |                                                                            ^
    ```

# QDNAseq

<details>

* Version: 1.40.0
* GitHub: https://github.com/ccagc/QDNAseq
* Source code: https://github.com/cran/QDNAseq
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 94

Run `revdepcheck::revdep_details(, "QDNAseq")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘QDNAseq.Rnw’ using Sweave
    EM algorithm started ... 
    
    Warning in allprior/tot :
      Recycling array of length 1 in vector-array arithmetic is deprecated.
      Use c() or as.vector() instead.
    Warning in allprior/tot :
      Recycling array of length 1 in vector-array arithmetic is deprecated.
      Use c() or as.vector() instead.
    ...
    l.197 \RequirePackage
                         {parnotes}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘QDNAseq.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘QDNAseq.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) exportBins.Rd:41: Lost braces
        41 |         \code{"bed"}.  This argument is ignored if code{type = "calls"}.}
           |                                                        ^
    ```

# qgcomp

<details>

* Version: 2.15.2
* GitHub: https://github.com/alexpkeil1/qgcomp
* Source code: https://github.com/cran/qgcomp
* Date/Publication: 2023-08-10 09:10:06 UTC
* Number of recursive dependencies: 156

Run `revdepcheck::revdep_details(, "qgcomp")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) qgcomp.survcurve.boot.Rd:17-19: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) qgcomp.survcurve.boot.Rd:20-21: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) qgcomp.survcurve.boot.Rd:22-23: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) qgcomp.survcurve.boot.Rd:24-25: Lost braces in \itemize; \value handles \item{}{} directly
    ```

# RAINBOWR

<details>

* Version: 0.1.35
* GitHub: NA
* Source code: https://github.com/cran/RAINBOWR
* Date/Publication: 2024-03-03 09:12:36 UTC
* Number of recursive dependencies: 154

Run `revdepcheck::revdep_details(, "RAINBOWR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 42.9Mb
      sub-directories of 1Mb or more:
        libs  41.5Mb
    ```

# Rcurvep

<details>

* Version: 1.3.1
* GitHub: https://github.com/moggces/Rcurvep
* Source code: https://github.com/cran/Rcurvep
* Date/Publication: 2024-01-09 08:20:32 UTC
* Number of recursive dependencies: 112

Run `revdepcheck::revdep_details(, "Rcurvep")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data   1.2Mb
        java   4.0Mb
    ```

# receptiviti

<details>

* Version: 0.1.8
* GitHub: https://github.com/Receptiviti/receptiviti-r
* Source code: https://github.com/cran/receptiviti
* Date/Publication: 2024-03-29 18:00:03 UTC
* Number of recursive dependencies: 66

Run `revdepcheck::revdep_details(, "receptiviti")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(receptiviti)
      > 
      > test_check("receptiviti")
      Status: ERROR
      Message: 400
    ...
       7. └─receptiviti::receptiviti(...)
      ── Failure ('test-receptiviti_status.R:5:3'): failures works ───────────────────
      receptiviti_status(...) is not NULL
      
      `actual` is a list
      `expected` is NULL
      
      [ FAIL 2 | WARN 0 | SKIP 2 | PASS 6 ]
      Error: Test failures
      Execution halted
    ```

# regmedint

<details>

* Version: 1.0.1
* GitHub: https://github.com/kaz-yos/regmedint
* Source code: https://github.com/cran/regmedint
* Date/Publication: 2024-01-13 00:50:02 UTC
* Number of recursive dependencies: 153

Run `revdepcheck::revdep_details(, "regmedint")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Deriv’
      All declared Imports should be used.
    ```

# reproducible

<details>

* Version: 2.1.0
* GitHub: https://github.com/PredictiveEcology/reproducible
* Source code: https://github.com/cran/reproducible
* Date/Publication: 2024-05-30 00:20:02 UTC
* Number of recursive dependencies: 104

Run `revdepcheck::revdep_details(, "reproducible")` for more info

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
       9.               └─terra:::error(f, x@ptr$getError())
      
      [ FAIL 2 | WARN 0 | SKIP 91 | PASS 412 ]
      Error: Test failures
      Execution halted
    ```

# rgee

<details>

* Version: 1.1.7
* GitHub: https://github.com/r-spatial/rgee
* Source code: https://github.com/cran/rgee
* Date/Publication: 2023-09-27 08:30:02 UTC
* Number of recursive dependencies: 136

Run `revdepcheck::revdep_details(, "rgee")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘geojsonio’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.4Mb
      sub-directories of 1Mb or more:
        doc   6.9Mb
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) ee_Authenticate.Rd:40: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_Authenticate.Rd:41: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_Authenticate.Rd:42: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_Authenticate.Rd:43: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_Authenticate.Rd:44: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_Initialize.Rd:49: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_Initialize.Rd:50: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_Initialize.Rd:51: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_Initialize.Rd:52: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_Initialize.Rd:53: Lost braces in \itemize; meant \describe ?
    ...
    checkRd: (-1) ee_imagecollection_to_local.Rd:105: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_imagecollection_to_local.Rd:106: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_imagecollection_to_local.Rd:107: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_imagecollection_to_local.Rd:108: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_install.Rd:35-37: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_install.Rd:38-39: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_install.Rd:40: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_install.Rd:41-44: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_install.Rd:45: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) ee_install.Rd:46: Lost braces in \itemize; meant \describe ?
    ```

# robotstxt

<details>

* Version: 0.7.13
* GitHub: https://github.com/ropensci/robotstxt
* Source code: https://github.com/cran/robotstxt
* Date/Publication: 2020-09-03 19:30:02 UTC
* Number of recursive dependencies: 69

Run `revdepcheck::revdep_details(, "robotstxt")` for more info

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

* Version: 0.7-3
* GitHub: https://github.com/handcock/rpm
* Source code: https://github.com/cran/rpm
* Date/Publication: 2024-04-18 08:20:03 UTC
* Number of recursive dependencies: 66

Run `revdepcheck::revdep_details(, "rpm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.4Mb
      sub-directories of 1Mb or more:
        libs  12.8Mb
    ```

# sampcompR

<details>

* Version: 0.2.1
* GitHub: NA
* Source code: https://github.com/cran/sampcompR
* Date/Publication: 2024-07-15 19:11:15 UTC
* Number of recursive dependencies: 182

Run `revdepcheck::revdep_details(, "sampcompR")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘stargazer’
    ```

# sapfluxnetr

<details>

* Version: 0.1.4
* GitHub: https://github.com/sapfluxnet/sapfluxnetr
* Source code: https://github.com/cran/sapfluxnetr
* Date/Publication: 2023-01-25 15:30:02 UTC
* Number of recursive dependencies: 82

Run `revdepcheck::revdep_details(, "sapfluxnetr")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# SCArray.sat

<details>

* Version: 1.4.0
* GitHub: https://github.com/AbbVie-ComputationalGenomics/SCArray
* Source code: https://github.com/cran/SCArray.sat
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 181

Run `revdepcheck::revdep_details(, "SCArray.sat")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘Seurat:::DEmethods_counts’ ‘Seurat:::DEmethods_nocorrect’
      ‘Seurat:::FastExpMean’ ‘Seurat:::FastLogVMR’ ‘Seurat:::NBResiduals’
      ‘Seurat:::UpdateKey’ ‘Seurat:::ValidateDataForMerge’
      See the note in ?`:::` about the use of this operator.
    ```

# sctransform

<details>

* Version: 0.4.1
* GitHub: https://github.com/satijalab/sctransform
* Source code: https://github.com/cran/sctransform
* Date/Publication: 2023-10-19 04:40:02 UTC
* Number of recursive dependencies: 68

Run `revdepcheck::revdep_details(, "sctransform")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘glmGamPoi’
    ```

# sdmTMB

<details>

* Version: 0.6.0
* GitHub: https://github.com/pbs-assess/sdmTMB
* Source code: https://github.com/cran/sdmTMB
* Date/Publication: 2024-05-30 00:00:02 UTC
* Number of recursive dependencies: 149

Run `revdepcheck::revdep_details(, "sdmTMB")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 98.5Mb
      sub-directories of 1Mb or more:
        libs  96.6Mb
    ```

# sentopics

<details>

* Version: 0.7.3
* GitHub: https://github.com/odelmarcelle/sentopics
* Source code: https://github.com/cran/sentopics
* Date/Publication: 2024-04-18 13:12:38 UTC
* Number of recursive dependencies: 172

Run `revdepcheck::revdep_details(, "sentopics")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        data   1.2Mb
        libs   6.2Mb
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

* Version: 5.1.0
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2024-05-10 17:23:17 UTC
* Number of recursive dependencies: 267

Run `revdepcheck::revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'BPCells', 'hdf5r', 'presto'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.8Mb
      sub-directories of 1Mb or more:
        R      2.0Mb
        help   1.0Mb
        libs  13.5Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Signac’
    ```

# SeuratObject

<details>

* Version: 5.0.2
* GitHub: https://github.com/satijalab/seurat-object
* Source code: https://github.com/cran/SeuratObject
* Date/Publication: 2024-05-08 13:40:06 UTC
* Number of recursive dependencies: 102

Run `revdepcheck::revdep_details(, "SeuratObject")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘BPCells’
    
    Package which this enhances but not available for checking: ‘Seurat’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        libs   3.2Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘plotly’
    ```

# sharp

<details>

* Version: 1.4.6
* GitHub: https://github.com/barbarabodinier/sharp
* Source code: https://github.com/cran/sharp
* Date/Publication: 2024-02-03 17:30:02 UTC
* Number of recursive dependencies: 156

Run `revdepcheck::revdep_details(, "sharp")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rCOSA’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rCOSA’
    ```

# shiny

<details>

* Version: 1.8.1.1
* GitHub: https://github.com/rstudio/shiny
* Source code: https://github.com/cran/shiny
* Date/Publication: 2024-04-02 17:22:03 UTC
* Number of recursive dependencies: 92

Run `revdepcheck::revdep_details(, "shiny")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.2Mb
      sub-directories of 1Mb or more:
        R     1.5Mb
        www  10.2Mb
    ```

# shiny.worker

<details>

* Version: 0.0.1
* GitHub: NA
* Source code: https://github.com/cran/shiny.worker
* Date/Publication: 2021-01-21 11:00:02 UTC
* Number of recursive dependencies: 64

Run `revdepcheck::revdep_details(, "shiny.worker")` for more info

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

# sigminer

<details>

* Version: 2.3.1
* GitHub: https://github.com/ShixiangWang/sigminer
* Source code: https://github.com/cran/sigminer
* Date/Publication: 2024-05-11 08:50:02 UTC
* Number of recursive dependencies: 209

Run `revdepcheck::revdep_details(, "sigminer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        extdata   1.0Mb
        help      1.7Mb
        libs      1.6Mb
    ```

# Signac

<details>

* Version: 1.13.0
* GitHub: https://github.com/stuart-lab/signac
* Source code: https://github.com/cran/Signac
* Date/Publication: 2024-04-04 02:42:57 UTC
* Number of recursive dependencies: 247

Run `revdepcheck::revdep_details(, "Signac")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        R      1.1Mb
        libs   2.9Mb
    ```

# signeR

<details>

* Version: 2.6.0
* GitHub: https://github.com/TojalLab/signeR
* Source code: https://github.com/cran/signeR
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 234

Run `revdepcheck::revdep_details(, "signeR")` for more info

</details>

## In both

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        R     1.2Mb
        doc   4.5Mb
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

# SimDesign

<details>

* Version: 2.16
* GitHub: https://github.com/philchalmers/SimDesign
* Source code: https://github.com/cran/SimDesign
* Date/Publication: 2024-07-08 16:20:02 UTC
* Number of recursive dependencies: 135

Run `revdepcheck::revdep_details(, "SimDesign")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        doc   6.5Mb
    ```

# sits

<details>

* Version: 1.5.0
* GitHub: https://github.com/e-sensing/sits
* Source code: https://github.com/cran/sits
* Date/Publication: 2024-05-09 19:00:03 UTC
* Number of recursive dependencies: 228

Run `revdepcheck::revdep_details(, "sits")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘gdalcubes’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 15.8Mb
      sub-directories of 1Mb or more:
        R         1.5Mb
        extdata   1.2Mb
        libs     12.4Mb
    ```

# skpr

<details>

* Version: 1.7.1
* GitHub: https://github.com/tylermorganwall/skpr
* Source code: https://github.com/cran/skpr
* Date/Publication: 2024-03-26 01:30:02 UTC
* Number of recursive dependencies: 152

Run `revdepcheck::revdep_details(, "skpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 59.6Mb
      sub-directories of 1Mb or more:
        libs  59.0Mb
    ```

# SmCCNet

<details>

* Version: 2.0.3
* GitHub: https://github.com/KechrisLab/SmCCNet
* Source code: https://github.com/cran/SmCCNet
* Date/Publication: 2024-04-16 05:20:02 UTC
* Number of recursive dependencies: 161

Run `revdepcheck::revdep_details(, "SmCCNet")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘SmCCNet_Vignette_AutoSmCCNet.Rmd’ using rmarkdown
    ! LaTeX Error: File `ucharcat.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    ! kpathsea: Running mktexfmt xelatex.fmt
    ! mktexfmt: mktexfmt is using the following fmtutil.cnf files (in precedence order):
    ! mktexfmt:   /usr/share/texlive/texmf-dist/web2c/fmtutil.cnf
    ...
    Error: processing vignette 'SmCCNet_Vignette_SingleOmics.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/future/revdep/checks/SmCCNet/new/SmCCNet.Rcheck/vign_test/SmCCNet/vignettes/SmCCNet_Vignette_SingleOmics.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See SmCCNet_Vignette_SingleOmics.log for more info.
    --- failed re-building ‘SmCCNet_Vignette_SingleOmics.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘SmCCNet_Vignette_AutoSmCCNet.Rmd’ ‘SmCCNet_Vignette_MultiOmics.Rmd’
      ‘SmCCNet_Vignette_SingleOmics.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# smoots

<details>

* Version: 1.1.4
* GitHub: NA
* Source code: https://github.com/cran/smoots
* Date/Publication: 2023-09-11 08:50:02 UTC
* Number of recursive dependencies: 75

Run `revdepcheck::revdep_details(, "smoots")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        libs   6.5Mb
    ```

# solitude

<details>

* Version: 1.1.3
* GitHub: https://github.com/talegari/solitude
* Source code: https://github.com/cran/solitude
* Date/Publication: 2021-07-29 20:00:02 UTC
* Number of recursive dependencies: 131

Run `revdepcheck::revdep_details(, "solitude")` for more info

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

* Version: 2.1.0
* GitHub: https://github.com/PredictiveEcology/SpaDES.core
* Source code: https://github.com/cran/SpaDES.core
* Date/Publication: 2024-06-02 11:02:47 UTC
* Number of recursive dependencies: 136

Run `revdepcheck::revdep_details(, "SpaDES.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘NLMR’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        R   5.0Mb
    ```

# spaMM

<details>

* Version: 4.5.0
* GitHub: NA
* Source code: https://github.com/cran/spaMM
* Date/Publication: 2024-06-09 22:20:02 UTC
* Number of recursive dependencies: 103

Run `revdepcheck::revdep_details(, "spaMM")` for more info

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
      installed size is 54.6Mb
      sub-directories of 1Mb or more:
        R      3.1Mb
        libs  50.2Mb
    ```

# sparrpowR

<details>

* Version: 0.2.8
* GitHub: https://github.com/machiela-lab/sparrpowR
* Source code: https://github.com/cran/sparrpowR
* Date/Publication: 2024-01-23 15:20:02 UTC
* Number of recursive dependencies: 131

Run `revdepcheck::revdep_details(, "sparrpowR")` for more info

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
* Number of recursive dependencies: 126

Run `revdepcheck::revdep_details(, "SPARSEMODr")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        doc    1.2Mb
        libs   4.0Mb
    ```

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

Run `revdepcheck::revdep_details(, "spatialwarnings")` for more info

</details>

## In both

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in Rd file 'indictest.Rd':
      ‘mgcv’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        libs   6.2Mb
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) pl_fit.Rd:75: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) pl_fit.Rd:76-77: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) pl_fit.Rd:78-79: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) pl_fit.Rd:28: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) pl_fit.Rd:29-30: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) pl_fit.Rd:31: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) pl_fit.Rd:32: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) pl_fit.Rd:33: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) pl_fit.Rd:39: Lost braces in \itemize; \value handles \item{}{} directly
    checkRd: (-1) pl_fit.Rd:40-41: Lost braces in \itemize; \value handles \item{}{} directly
    ...
    checkRd: (-1) simple_sews.Rd:60: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) simple_sews.Rd:61: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) simple_sews.Rd:62-64: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) simple_sews.Rd:65-67: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) simple_sews.Rd:68-69: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) simple_sews.Rd:70-71: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) simple_sews.Rd:72-73: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) simple_sews.Rd:74: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) simple_sews.Rd:75-76: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) simple_sews.Rd:77-79: Lost braces in \itemize; meant \describe ?
    ```

# sperrorest

<details>

* Version: 3.0.5
* GitHub: https://github.com/giscience-fsu/sperrorest
* Source code: https://github.com/cran/sperrorest
* Date/Publication: 2022-10-16 12:50:02 UTC
* Number of recursive dependencies: 74

Run `revdepcheck::revdep_details(, "sperrorest")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) partition_cv.Rd:36: Lost braces; missing escapes or markup?
        36 | if \code{TRUE} (used internally by other {sperrorest} functions), return a
           |                                          ^
    checkRd: (-1) partition_cv_strat.Rd:28: Lost braces; missing escapes or markup?
        28 | if \code{TRUE} (used internally by other {sperrorest} functions), return a
           |                                          ^
    checkRd: (-1) partition_factor.Rd:28: Lost braces; missing escapes or markup?
        28 | if \code{TRUE} (used internally by other {sperrorest} functions), return a
           |                                          ^
    checkRd: (-1) partition_factor_cv.Rd:43: Lost braces; missing escapes or markup?
    ...
           |                         ^
    checkRd: (-1) sperrorest.Rd:148: Lost braces; missing escapes or markup?
       148 | information about the {sperrorest} package version
           |                       ^
    checkRd: (-1) summary.sperroresterror.Rd:5: Lost braces; missing escapes or markup?
         5 | \title{Summarize error statistics obtained by {sperrorest}}
           |                                               ^
    checkRd: (-1) summary.sperrorestimportance.Rd:5: Lost braces; missing escapes or markup?
         5 | \title{Summarize variable importance statistics obtained by {sperrorest}}
           |                                                             ^
    ```

# sphunif

<details>

* Version: 1.4.0
* GitHub: https://github.com/egarpor/sphunif
* Source code: https://github.com/cran/sphunif
* Date/Publication: 2024-05-24 21:50:01 UTC
* Number of recursive dependencies: 75

Run `revdepcheck::revdep_details(, "sphunif")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 25.1Mb
      sub-directories of 1Mb or more:
        libs  23.9Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 189 marked UTF-8 strings
    ```

# spNetwork

<details>

* Version: 0.4.4.3
* GitHub: https://github.com/JeremyGelb/spNetwork
* Source code: https://github.com/cran/spNetwork
* Date/Publication: 2024-06-21 21:40:02 UTC
* Number of recursive dependencies: 143

Run `revdepcheck::revdep_details(, "spNetwork")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 27.6Mb
      sub-directories of 1Mb or more:
        extdata   2.6Mb
        libs     22.6Mb
    ```

# squat

<details>

* Version: 0.3.0
* GitHub: https://github.com/LMJL-Alea/squat
* Source code: https://github.com/cran/squat
* Date/Publication: 2024-01-10 15:40:02 UTC
* Number of recursive dependencies: 141

Run `revdepcheck::revdep_details(, "squat")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 19.9Mb
      sub-directories of 1Mb or more:
        data   1.1Mb
        help   1.1Mb
        libs  17.5Mb
    ```

# ssdtools

<details>

* Version: 1.0.6
* GitHub: https://github.com/bcgov/ssdtools
* Source code: https://github.com/cran/ssdtools
* Date/Publication: 2023-09-07 14:10:02 UTC
* Number of recursive dependencies: 119

Run `revdepcheck::revdep_details(, "ssdtools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 39.9Mb
      sub-directories of 1Mb or more:
        doc    1.2Mb
        help   1.0Mb
        libs  37.3Mb
    ```

# stars

<details>

* Version: 0.6-6
* GitHub: https://github.com/r-spatial/stars
* Source code: https://github.com/cran/stars
* Date/Publication: 2024-07-16 09:40:02 UTC
* Number of recursive dependencies: 166

Run `revdepcheck::revdep_details(, "stars")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘aggregate.R’
      Comparing ‘aggregate.Rout’ to ‘aggregate.Rout.save’ ... OK
      Running ‘align.R’
      Comparing ‘align.Rout’ to ‘align.Rout.save’ ... OK
      Running ‘area.R’
      Comparing ‘area.Rout’ to ‘area.Rout.save’ ... OK
      Running ‘crop.R’
      Comparing ‘crop.Rout’ to ‘crop.Rout.save’ ... OK
      Running ‘curvilinear.R’
      Comparing ‘curvilinear.Rout’ to ‘curvilinear.Rout.save’ ... OK
    ...
      > 
      > s = st_set_dimensions(s, st_dimensions(s), xy = NULL) 
      > sfc = st_sfc(st_point(0:1), st_point(3:2))
      > s = st_set_dimensions(s, 1, sfc) |> st_set_crs(4326)
      > tm = as.POSIXct("2023-03-04 12:35") + c(0, 3600)
      > s = st_set_dimensions(s, 2, tm)
      > f = tempfile(fileext = ".nc")
      > write_mdim(s, f, as_float = FALSE)
      Error: requires GDAL >= 3.1.0 and 64-bit
      Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'ncdfgeom', 'starsdata'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        doc   2.4Mb
        nc    1.7Mb
    ```

# stppSim

<details>

* Version: 1.3.4
* GitHub: https://github.com/Manalytics/stppSim
* Source code: https://github.com/cran/stppSim
* Date/Publication: 2024-07-24 13:30:02 UTC
* Number of recursive dependencies: 131

Run `revdepcheck::revdep_details(, "stppSim")` for more info

</details>

## In both

*   checking whether package ‘stppSim’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/future/revdep/checks/stppSim/new/stppSim.Rcheck/00install.out’ for details.
    ```

# survstan

<details>

* Version: 0.0.7.1
* GitHub: https://github.com/fndemarqui/survstan
* Source code: https://github.com/cran/survstan
* Date/Publication: 2024-04-12 16:50:02 UTC
* Number of recursive dependencies: 126

Run `revdepcheck::revdep_details(, "survstan")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 85.7Mb
      sub-directories of 1Mb or more:
        libs  85.1Mb
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

# synergyfinder

<details>

* Version: 3.12.0
* GitHub: NA
* Source code: https://github.com/cran/synergyfinder
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 196

Run `revdepcheck::revdep_details(, "synergyfinder")` for more info

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
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        doc   7.1Mb
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
      response_CI95 response_mean response_origin response_origin_CI95
      response_origin_mean response_origin_sd response_origin_sem
      response_sd response_sem right start synergy t.test text theta value
      x y
    Consider adding
      importFrom("grDevices", "dev.list", "dev.off")
      importFrom("graphics", "text")
      importFrom("stats", "end", "predict", "start", "t.test")
      importFrom("utils", "data", "head")
    to your NAMESPACE file.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) FitDoseResponse.Rd:54: Lost braces
        54 | href{https://onlinelibrary.wiley.com/doi/book/10.1002/0471725315}{Nonlinear
           |     ^
    checkRd: (-1) FitDoseResponse.Rd:54-55: Lost braces
        54 | href{https://onlinelibrary.wiley.com/doi/book/10.1002/0471725315}{Nonlinear
           |                                                                  ^
    checkRd: (-1) FitDoseResponse.Rd:55: Escaped LaTeX specials: \&
    checkRd: (-1) PlotBarometer.Rd:118: Lost braces
       118 | href{https://www.frontiersin.org/articles/10.3389/fphar.2015.00181/full}{What
           |     ^
    checkRd: (-1) PlotBarometer.Rd:118-119: Lost braces
       118 | href{https://www.frontiersin.org/articles/10.3389/fphar.2015.00181/full}{What
           |                                                                         ^
    checkRd: (-1) PlotDoseResponseCurve.Rd:84: Lost braces
        84 | link[drc]{plot.drc} function. For example, use xlim = c(0.5, 500) or
           |          ^
    ```

# tableschema.r

<details>

* Version: 1.1.2
* GitHub: https://github.com/frictionlessdata/tableschema-r
* Source code: https://github.com/cran/tableschema.r
* Date/Publication: 2022-09-29 20:00:03 UTC
* Number of recursive dependencies: 66

Run `revdepcheck::revdep_details(, "tableschema.r")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) Field.Rd:69: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) Field.Rd:70: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) Field.Rd:71: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) Field.Rd:72: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) Field.Rd:77: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) Field.Rd:78-80: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) Field.Rd:81: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) Field.Rd:82: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) Field.Rd:88: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) Field.Rd:89: Lost braces in \itemize; meant \describe ?
    ...
    checkRd: (-1) Table.Rd:85: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) tableschema.r-package.Rd:174: Lost braces
       174 | in the resources array of a href{http://frictionlessdata.io/specs/data-package/}{Data Package}. 
           |                                 ^
    checkRd: (-1) tableschema.r-package.Rd:174: Lost braces
       174 | in the resources array of a href{http://frictionlessdata.io/specs/data-package/}{Data Package}. 
           |                                                                                 ^
    checkRd: (-1) types.castDate.Rd:14: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) types.castDate.Rd:15: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) types.castDate.Rd:16: Lost braces in \itemize; meant \describe ?
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘parsedate’
    ```

# targeted

<details>

* Version: 0.5
* GitHub: https://github.com/kkholst/targeted
* Source code: https://github.com/cran/targeted
* Date/Publication: 2024-02-22 10:00:21 UTC
* Number of recursive dependencies: 97

Run `revdepcheck::revdep_details(, "targeted")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 22.9Mb
      sub-directories of 1Mb or more:
        doc    1.1Mb
        libs  21.2Mb
    ```

# tenm

<details>

* Version: 0.5.1
* GitHub: https://github.com/luismurao/tenm
* Source code: https://github.com/cran/tenm
* Date/Publication: 2024-07-23 00:30:01 UTC
* Number of recursive dependencies: 79

Run `revdepcheck::revdep_details(, "tenm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        extdata   5.0Mb
    ```

# text

<details>

* Version: 1.2.1
* GitHub: https://github.com/OscarKjell/text
* Source code: https://github.com/cran/text
* Date/Publication: 2024-04-23 00:00:03 UTC
* Number of recursive dependencies: 168

Run `revdepcheck::revdep_details(, "text")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3 marked UTF-8 strings
    ```

# tglkmeans

<details>

* Version: 0.5.5
* GitHub: https://github.com/tanaylab/tglkmeans
* Source code: https://github.com/cran/tglkmeans
* Date/Publication: 2024-05-15 08:40:02 UTC
* Number of recursive dependencies: 90

Run `revdepcheck::revdep_details(, "tglkmeans")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        libs   5.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘doRNG’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# TreeMineR

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/TreeMineR
* Date/Publication: 2024-04-02 10:00:02 UTC
* Number of recursive dependencies: 49

Run `revdepcheck::revdep_details(, "TreeMineR")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3 marked UTF-8 strings
    ```

# TreeSearch

<details>

* Version: 1.5.1
* GitHub: https://github.com/ms609/TreeSearch
* Source code: https://github.com/cran/TreeSearch
* Date/Publication: 2024-05-23 13:40:03 UTC
* Number of recursive dependencies: 125

Run `revdepcheck::revdep_details(, "TreeSearch")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.7Mb
      sub-directories of 1Mb or more:
        datasets   1.6Mb
        doc        1.3Mb
        libs       3.1Mb
    ```

# TriDimRegression

<details>

* Version: 1.0.2
* GitHub: https://github.com/alexander-pastukhov/tridim-regression
* Source code: https://github.com/cran/TriDimRegression
* Date/Publication: 2023-09-13 14:10:03 UTC
* Number of recursive dependencies: 99

Run `revdepcheck::revdep_details(, "TriDimRegression")` for more info

</details>

## In both

*   checking whether package ‘TriDimRegression’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/TriDimRegression/new/TriDimRegression.Rcheck/00install.out’ for details.
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
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/TriDimRegression/new/TriDimRegression.Rcheck/TriDimRegression’


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
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/TriDimRegression/old/TriDimRegression.Rcheck/TriDimRegression’


```
# tsdistributions

<details>

* Version: 1.0.1
* GitHub: https://github.com/tsmodels/tsdistributions
* Source code: https://github.com/cran/tsdistributions
* Date/Publication: 2024-05-13 09:10:02 UTC
* Number of recursive dependencies: 79

Run `revdepcheck::revdep_details(, "tsdistributions")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘estimation_demo.Rmd’ using rmarkdown
    --- finished re-building ‘estimation_demo.Rmd’
    
    --- re-building ‘location_scale_distributions.Rmd’ using rmarkdown
    ! Undefined control sequence.
    l.60 \NewDocumentCommand
                            \citeproctext{}{} 
    
    ...
    --- finished re-building ‘profile_demo.Rmd’
    
    --- re-building ‘spd_demo.Rmd’ using rmarkdown
    --- finished re-building ‘spd_demo.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘location_scale_distributions.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 40.2Mb
      sub-directories of 1Mb or more:
        libs  39.6Mb
    ```

# tsgarch

<details>

* Version: 1.0.2
* GitHub: https://github.com/tsmodels/tsgarch
* Source code: https://github.com/cran/tsgarch
* Date/Publication: 2024-05-08 12:50:02 UTC
* Number of recursive dependencies: 113

Run `revdepcheck::revdep_details(, "tsgarch")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 138.0Mb
      sub-directories of 1Mb or more:
        libs  136.8Mb
    ```

# txshift

<details>

* Version: 0.3.8
* GitHub: https://github.com/nhejazi/txshift
* Source code: https://github.com/cran/txshift
* Date/Publication: 2022-02-09 22:30:02 UTC
* Number of recursive dependencies: 112

Run `revdepcheck::revdep_details(, "txshift")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘sl3’
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) est_g_exp.Rd:55: Lost braces; missing escapes or markup?
        55 |  {A - delta}, {A + delta}, and {A + 2 * delta}).
           |  ^
    checkRd: (-1) est_g_exp.Rd:55: Lost braces; missing escapes or markup?
        55 |  {A - delta}, {A + delta}, and {A + 2 * delta}).
           |               ^
    checkRd: (-1) est_g_exp.Rd:55: Lost braces; missing escapes or markup?
        55 |  {A - delta}, {A + delta}, and {A + 2 * delta}).
           |                                ^
    ```

# UCSCXenaShiny

<details>

* Version: 2.1.0
* GitHub: https://github.com/openbiox/UCSCXenaShiny
* Source code: https://github.com/cran/UCSCXenaShiny
* Date/Publication: 2024-05-15 14:10:06 UTC
* Number of recursive dependencies: 203

Run `revdepcheck::revdep_details(, "UCSCXenaShiny")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        data       1.1Mb
        doc        1.4Mb
        shinyapp   4.9Mb
    ```

# updog

<details>

* Version: 2.1.5
* GitHub: https://github.com/dcgerard/updog
* Source code: https://github.com/cran/updog
* Date/Publication: 2023-11-29 15:50:02 UTC
* Number of recursive dependencies: 138

Run `revdepcheck::revdep_details(, "updog")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.9Mb
      sub-directories of 1Mb or more:
        libs   8.0Mb
    ```

# vital

<details>

* Version: 1.1.0
* GitHub: https://github.com/robjhyndman/vital
* Source code: https://github.com/cran/vital
* Date/Publication: 2024-06-21 08:00:02 UTC
* Number of recursive dependencies: 201

Run `revdepcheck::revdep_details(, "vital")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        data   4.4Mb
        help   1.3Mb
    ```

# vmeasur

<details>

* Version: 0.1.4
* GitHub: NA
* Source code: https://github.com/cran/vmeasur
* Date/Publication: 2021-11-11 19:00:02 UTC
* Number of recursive dependencies: 106

Run `revdepcheck::revdep_details(, "vmeasur")` for more info

</details>

## In both

*   checking whether package ‘vmeasur’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/c4/home/henrik/repositories/future/revdep/checks/vmeasur/new/vmeasur.Rcheck/00install.out’ for details.
    ```

# WeightedCluster

<details>

* Version: 1.6-4
* GitHub: NA
* Source code: https://github.com/cran/WeightedCluster
* Date/Publication: 2023-07-07 07:50:02 UTC
* Number of recursive dependencies: 43

Run `revdepcheck::revdep_details(, "WeightedCluster")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘WeightedCluster.Rnw’ using knitr
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    --- finished re-building ‘WeightedCluster.Rnw’
    
    --- re-building ‘WeightedClusterFR.Rnw’ using knitr
    Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
      texi2dvi script/program not available, using emulation
    Error: processing vignette 'WeightedClusterFR.Rnw' failed with diagnostics:
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

# winputall

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/winputall
* Date/Publication: 2024-06-07 14:40:02 UTC
* Number of recursive dependencies: 103

Run `revdepcheck::revdep_details(, "winputall")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 103.9Mb
      sub-directories of 1Mb or more:
        libs  103.5Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# wru

<details>

* Version: 3.0.3
* GitHub: https://github.com/kosukeimai/wru
* Source code: https://github.com/cran/wru
* Date/Publication: 2024-05-24 18:00:02 UTC
* Number of recursive dependencies: 96

Run `revdepcheck::revdep_details(, "wru")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        data   3.5Mb
        help   1.9Mb
        libs   1.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘tidyr’
      All declared Imports should be used.
    ```

# XNAString

<details>

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/XNAString
* Date/Publication: 2024-04-30
* Number of recursive dependencies: 112

Run `revdepcheck::revdep_details(, "XNAString")` for more info

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

*   checking installed package size ... NOTE
    ```
      installed size is 11.3Mb
      sub-directories of 1Mb or more:
        doc    1.0Mb
        libs   9.5Mb
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

