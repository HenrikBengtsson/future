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
    --- re-building ‘Vig01-introduction-to-alpsnmr.Rmd’ using rmarkdown
    ! LuaTeX error .../texlive/texmf-dist/scripts/oberdiek/oberdiek.luatex.lua:55: b
    ad argument #1 to 'insert' (table expected, got nil)
    stack traceback:
    	[C]: in function 'insert'
    	.../texlive/texmf-dist/scripts/oberdiek/oberdiek.luatex.lua:55: in main chunk
    	[C]: in function 'dofile'
    	[string "\directlua "]:6: in main chunk.
    l.139   }
    ...
    LaTeX failed to compile /c4/home/henrik/repositories/future/revdep/checks/AlpsNMR/new/AlpsNMR.Rcheck/vign_test/AlpsNMR/vignettes/Vig02-handling-metadata-and-annotations.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See Vig02-handling-metadata-and-annotations.log for more info.
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

* Version: 0.3.0
* GitHub: https://github.com/etiennebacher/altdoc
* Source code: https://github.com/cran/altdoc
* Date/Publication: 2024-02-21 16:00:06 UTC
* Number of recursive dependencies: 85

Run `revdep_details(, "altdoc")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      v Setting active project to '<no active project>'
      v Setting active project to '/scratch/henrik/1715415/RtmpekdtNL/testpkg221fc379b081d'
      v Setting active project to '<no active project>'
      v Setting active project to '/scratch/henrik/1715415/RtmpekdtNL/testpkg221fc70c8fde3'
      v Setting active project to '<no active project>'
    ...
      Error in `render_docs(path = getwd())`: There were some failures when rendering vignettes.
      Backtrace:
          ▆
       1. └─altdoc::render_docs(path = getwd()) at test-update.R:111:5
       2.   └─cli::cli_abort("There were some failures when rendering vignettes.")
       3.     └─rlang::abort(...)
      
      [ FAIL 5 | WARN 0 | SKIP 7 | PASS 56 ]
      Error: Test failures
      Execution halted
    ```

# aroma.core

<details>

* Version: 3.3.1
* GitHub: https://github.com/HenrikBengtsson/aroma.core
* Source code: https://github.com/cran/aroma.core
* Date/Publication: 2024-02-19 08:40:02 UTC
* Number of recursive dependencies: 68

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

* Version: 2.3.5
* GitHub: https://github.com/c7rishi/BAMBI
* Source code: https://github.com/cran/BAMBI
* Date/Publication: 2023-03-08 23:10:05 UTC
* Number of recursive dependencies: 53

Run `revdep_details(, "BAMBI")` for more info

</details>

## In both

*   checking whether package ‘BAMBI’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/BAMBI/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/BAMBI/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/BAMBI/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/BAMBI/new/BAMBI.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        libs   6.8Mb
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

*   checking whether package ‘bamm’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/bamm/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/bamm/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/bamm/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/bamm/new/bamm.Rcheck/00install.out’ for details.
    ```

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
* Number of recursive dependencies: 83

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

# bayesmove

<details>

* Version: 0.2.1
* GitHub: https://github.com/joshcullen/bayesmove
* Source code: https://github.com/cran/bayesmove
* Date/Publication: 2021-10-22 08:50:09 UTC
* Number of recursive dependencies: 168

Run `revdep_details(, "bayesmove")` for more info

</details>

## In both

*   checking whether package ‘bayesmove’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/bayesmove/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/bayesmove/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/bayesmove/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/bayesmove/new/bayesmove.Rcheck/00install.out’ for details.
    ```

# BEKKs

<details>

* Version: 1.4.4
* GitHub: NA
* Source code: https://github.com/cran/BEKKs
* Date/Publication: 2024-01-14 15:50:09 UTC
* Number of recursive dependencies: 86

Run `revdep_details(, "BEKKs")` for more info

</details>

## In both

*   checking whether package ‘BEKKs’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/BEKKs/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/BEKKs/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/BEKKs/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/BEKKs/new/BEKKs.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 18.5Mb
      sub-directories of 1Mb or more:
        libs  17.6Mb
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
* Number of recursive dependencies: 97

Run `revdep_details(, "bistablehistory")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 75.5Mb
      sub-directories of 1Mb or more:
        libs  74.6Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# blavaan

<details>

* Version: 0.5-3
* GitHub: https://github.com/ecmerkle/blavaan
* Source code: https://github.com/cran/blavaan
* Date/Publication: 2024-01-19 22:50:02 UTC
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
      installed size is 196.2Mb
      sub-directories of 1Mb or more:
        R           1.2Mb
        libs      193.4Mb
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
* Number of recursive dependencies: 201

Run `revdep_details(, "brms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.4Mb
      sub-directories of 1Mb or more:
        R     3.7Mb
        doc   3.5Mb
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

*   checking examples ... ERROR
    ```
    Running examples in ‘ceRNAnetsim-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: find_node_perturbation
    > ### Title: Calculates average expression changes of all (or specified)
    > ###   nodes except trigger and finds the perturbed node count for all (or
    > ###   specified) nodes in system.
    > ### Aliases: find_node_perturbation
    > 
    > ### ** Examples
    ...
     23. │                 └─dplyr (local) eval()
     24. └─tidygraph::map_bfs(...)
     25.   └─tidygraph:::bfs_df(graph, root, mode, unreachable)
     26.     └─tibble::tibble(...)
     27.       └─tibble:::tibble_quos(xs, .rows, .name_repair)
     28.         └─tibble:::vectbl_recycle_rows(...)
     29.           └─tibble:::abort_incompatible_size(...)
     30.             └─tibble:::tibble_abort(...)
     31.               └─rlang::abort(x, class, ..., call = call, parent = parent, use_cli_format = TRUE)
    Execution halted
    ```

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      > library(testthat)
      > library(ceRNAnetsim)
      Loading required package: dplyr
      
      Attaching package: 'dplyr'
      
    ...
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-iter_perturb.R:33:3'): Could the functions work?  ────────────
      `node_efficiencies` not equal to c(NA, NA, NA, 3.18, 2.27, 3.18, NA, 32).
      2/8 mismatches (average diff: 14.9)
      [5] 3.18 -  2.27 ==   0.91
      [8] 3.18 - 32.00 == -28.82
      
      [ FAIL 1 | WARN 35 | SKIP 0 | PASS 36 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘auxiliary_commands.Rmd’ using rmarkdown
    --- finished re-building ‘auxiliary_commands.Rmd’
    
    --- re-building ‘basic_usage.Rmd’ using rmarkdown
    --- finished re-building ‘basic_usage.Rmd’
    
    --- re-building ‘convenient_iteration.Rmd’ using rmarkdown
    
    Quitting from lines 226-233 [unnamed-chunk-15] (convenient_iteration.Rmd)
    ...
    • Size 5: Existing data.
    • Size 53: Column `rank`.
    ℹ Only values of size one are recycled.
    --- failed re-building ‘mirtarbase_example.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘convenient_iteration.Rmd’ ‘mirtarbase_example.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking R code for possible problems ... NOTE
    ```
    simulate: no visible binding for global variable ‘avg_count_current’
    simulate: no visible binding for global variable ‘avg_count_pre’
    Undefined global functions or variables:
      avg_count_current avg_count_pre
    ```

# cft

<details>

* Version: 1.0.0
* GitHub: https://github.com/earthlab/cft-CRAN
* Source code: https://github.com/cran/cft
* Date/Publication: 2022-10-03 07:12:18 UTC
* Number of recursive dependencies: 90

Run `revdep_details(, "cft")` for more info

</details>

## In both

*   checking whether package ‘cft’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/cft/new/cft.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘cft’ ...
** package ‘cft’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘cft’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/cft/new/cft.Rcheck/cft’


```
### CRAN

```
* installing *source* package ‘cft’ ...
** package ‘cft’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘cft’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/cft/old/cft.Rcheck/cft’


```
# ChromSCape

<details>

* Version: 1.12.0
* GitHub: https://github.com/vallotlab/ChromSCape
* Source code: https://github.com/cran/ChromSCape
* Date/Publication: 2023-10-25
* Number of recursive dependencies: 232

Run `revdep_details(, "ChromSCape")` for more info

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
    Codoc mismatches from documentation object 'generate_analysis':
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
    Undocumented arguments in documentation object 'rebin_matrix'
      ‘rebin_function’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking examples ... WARNING
    ```
    Found the following significant warnings:
    
      Warning: 'as(<matrix>, "dspMatrix")' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
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
      installed size is  8.3Mb
      sub-directories of 1Mb or more:
        data   1.4Mb
        doc    2.9Mb
        libs   1.0Mb
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
* Number of recursive dependencies: 156

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

# Coxmos

<details>

* Version: 1.0.1
* GitHub: https://github.com/BiostatOmics/Coxmos
* Source code: https://github.com/cran/Coxmos
* Date/Publication: 2024-03-22 17:10:02 UTC
* Number of recursive dependencies: 204

Run `revdep_details(, "Coxmos")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        data   1.2Mb
        doc    2.7Mb
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

# deseats

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/deseats
* Date/Publication: 2023-11-08 19:50:02 UTC
* Number of recursive dependencies: 109

Run `revdep_details(, "deseats")` for more info

</details>

## In both

*   checking whether package ‘deseats’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/deseats/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/deseats/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/deseats/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/deseats/new/deseats.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.3Mb
      sub-directories of 1Mb or more:
        libs   7.6Mb
    ```

# dipsaus

<details>

* Version: 0.2.8
* GitHub: https://github.com/dipterix/dipsaus
* Source code: https://github.com/cran/dipsaus
* Date/Publication: 2023-07-03 20:00:03 UTC
* Number of recursive dependencies: 70

Run `revdep_details(, "dipsaus")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        doc    1.1Mb
        libs   3.5Mb
    ```

# disk.frame

<details>

* Version: 0.8.3
* GitHub: https://github.com/DiskFrame/disk.frame
* Source code: https://github.com/cran/disk.frame
* Date/Publication: 2023-08-24 16:20:10 UTC
* Number of recursive dependencies: 99

Run `revdep_details(, "disk.frame")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘arrow’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
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

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(dragon)
      > 
      > test_check("dragon")
      Error in `FUN()`:
      ! In path: "/c4/home/henrik/repositories/future/revdep/checks/dragon/new/dragon.Rcheck/tests/testthat/setup_test-settings.R"
    ...
       10. │                 └─testthat::source_file(path, env = env, chdir = chdir, wrap = wrap)
       11. │                   ├─base::withCallingHandlers(...)
       12. │                   └─base::eval(exprs, env)
       13. │                     └─base::eval(exprs, env)
       14. │                       └─igraph::read_graph("graph_by_redox.igraph", format = "ncol") at tests/testthat/setup_test-settings.R:8:1
       15. │                         └─igraph:::read.graph.ncol(file, ...)
       16. └─base::.handleSimpleError(...)
       17.   └─testthat (local) h(simpleError(msg, call))
       18.     └─rlang::abort(...)
      Execution halted
    ```

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

* Version: 7.13.9
* GitHub: https://github.com/ropensci/drake
* Source code: https://github.com/cran/drake
* Date/Publication: 2024-03-04 15:20:02 UTC
* Number of recursive dependencies: 166

Run `revdep_details(, "drake")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘clustermq’
    ```

# DT

<details>

* Version: 0.32
* GitHub: https://github.com/rstudio/DT
* Source code: https://github.com/cran/DT
* Date/Publication: 2024-02-19 16:50:02 UTC
* Number of recursive dependencies: 53

Run `revdep_details(, "DT")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        htmlwidgets   4.8Mb
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

*   checking whether package ‘EFAtools’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/EFAtools/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/EFAtools/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/EFAtools/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/EFAtools/new/EFAtools.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        libs   6.0Mb
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

* Version: 1.4.0
* GitHub: https://github.com/epiforecasts/EpiNow2
* Source code: https://github.com/cran/EpiNow2
* Date/Publication: 2023-09-26 12:00:02 UTC
* Number of recursive dependencies: 131

Run `revdep_details(, "EpiNow2")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 223.7Mb
      sub-directories of 1Mb or more:
        help    2.0Mb
        libs  220.8Mb
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

# erah

<details>

* Version: 2.0.1
* GitHub: https://github.com/xdomingoal/erah-devel
* Source code: https://github.com/cran/erah
* Date/Publication: 2023-12-20 10:10:02 UTC
* Number of recursive dependencies: 92

Run `revdep_details(, "erah")` for more info

</details>

## In both

*   checking whether package ‘erah’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/erah/new/erah.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ncdf4’
    ```

## Installation

### Devel

```
* installing *source* package ‘erah’ ...
** package ‘erah’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (GCC) 10.2.1 20210130 (Red Hat 10.2.1-11)’
gcc -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
gcc -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c runfunc.c -o runfunc.o
gcc -shared -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -L/usr/local/lib64 -o erah.so registerDynamicSymbol.o runfunc.o -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -lR
installing to /c4/home/henrik/repositories/future/revdep/checks/erah/new/erah.Rcheck/00LOCK-erah/00new/erah/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘erah’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/erah/new/erah.Rcheck/erah’


```
### CRAN

```
* installing *source* package ‘erah’ ...
** package ‘erah’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (GCC) 10.2.1 20210130 (Red Hat 10.2.1-11)’
gcc -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
gcc -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c runfunc.c -o runfunc.o
gcc -shared -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -L/usr/local/lib64 -o erah.so registerDynamicSymbol.o runfunc.o -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -lR
installing to /c4/home/henrik/repositories/future/revdep/checks/erah/old/erah.Rcheck/00LOCK-erah/00new/erah/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘erah’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/erah/old/erah.Rcheck/erah’


```
# fdacluster

<details>

* Version: 0.3.0
* GitHub: https://github.com/astamm/fdacluster
* Source code: https://github.com/cran/fdacluster
* Date/Publication: 2023-07-04 15:53:04 UTC
* Number of recursive dependencies: 118

Run `revdep_details(, "fdacluster")` for more info

</details>

## In both

*   checking whether package ‘fdacluster’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/fdacluster/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/fdacluster/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/fdacluster/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/fdacluster/new/fdacluster.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 22.2Mb
      sub-directories of 1Mb or more:
        R      1.8Mb
        doc    1.4Mb
        help   2.1Mb
        libs  16.4Mb
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

*   checking whether package ‘fect’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/fect/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/fect/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/fect/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/fect/new/fect.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.9Mb
      sub-directories of 1Mb or more:
        libs  12.6Mb
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
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        data   2.7Mb
        doc    1.7Mb
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

# genBaRcode

<details>

* Version: 1.2.7
* GitHub: NA
* Source code: https://github.com/cran/genBaRcode
* Date/Publication: 2023-12-11 13:10:05 UTC
* Number of recursive dependencies: 161

Run `revdep_details(, "genBaRcode")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘genBaRcode_GUI_Vignette.Rmd’ using rmarkdown
    ! LaTeX Error: File `iftex.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'genBaRcode_GUI_Vignette.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/future/revdep/checks/genBaRcode/new/genBaRcode.Rcheck/vign_test/genBaRcode/vignettes/genBaRcode_GUI_Vignette.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See genBaRcode_GUI_Vignette.log for more info.
    --- failed re-building ‘genBaRcode_GUI_Vignette.Rmd’
    ...
    
    Error: processing vignette 'genBaRcode_Vignette.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/future/revdep/checks/genBaRcode/new/genBaRcode.Rcheck/vign_test/genBaRcode/vignettes/genBaRcode_Vignette.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See genBaRcode_Vignette.log for more info.
    --- failed re-building ‘genBaRcode_Vignette.Rmd’
    
    SUMMARY: processing the following files failed:
      ‘genBaRcode_GUI_Vignette.Rmd’ ‘genBaRcode_Vignette.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# geocmeans

<details>

* Version: 0.3.4
* GitHub: https://github.com/JeremyGelb/geocmeans
* Source code: https://github.com/cran/geocmeans
* Date/Publication: 2023-09-12 03:10:02 UTC
* Number of recursive dependencies: 197

Run `revdep_details(, "geocmeans")` for more info

</details>

## In both

*   checking whether package ‘geocmeans’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/geocmeans/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/geocmeans/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/geocmeans/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/geocmeans/new/geocmeans.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.5Mb
      sub-directories of 1Mb or more:
        extdata   3.0Mb
        libs      8.2Mb
    ```

# geohabnet

<details>

* Version: 2.0.0
* GitHub: https://github.com/GarrettLab/HabitatConnectivity
* Source code: https://github.com/cran/geohabnet
* Date/Publication: 2024-02-27 19:50:02 UTC
* Number of recursive dependencies: 134

Run `revdep_details(, "geohabnet")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘LinkWeightsAnalysis.Rmd’ using rmarkdown
    trying URL 'https://s3.us-east-2.amazonaws.com/earthstatdata/HarvestedAreaYield175Crops_Indvidual_Geotiff/potato_HarvAreaYield_Geotiff.zip'
    Content type 'application/zip' length 10812124 bytes (10.3 MB)
    ==================================================
    downloaded 10.3 MB
    
    trying URL 'https://geohabnet.s3.us-east-2.amazonaws.com/util-rasters/ZeroRaster.tif'
    Content type 'image/tiff' length 1056851 bytes (1.0 MB)
    ==================================================
    ...
    Quitting from lines 108-109 [unnamed-chunk-5] (analysis.Rmd)
    Error: processing vignette 'analysis.Rmd' failed with diagnostics:
    (/c4/home/henrik/.config/R/geohabnet/parameters.yaml) Duplicate map key: 'default'
    --- failed re-building ‘analysis.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘analysis.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# googleComputeEngineR

<details>

* Version: 0.3.0
* GitHub: https://github.com/cloudyr/googleComputeEngineR
* Source code: https://github.com/cran/googleComputeEngineR
* Date/Publication: 2019-05-04 22:40:02 UTC
* Number of recursive dependencies: 67

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
* Number of recursive dependencies: 69

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

*   checking whether package ‘greed’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/greed/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/greed/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/greed/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/greed/new/greed.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 36.5Mb
      sub-directories of 1Mb or more:
        libs  34.3Mb
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

*   checking whether package ‘gsynth’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/gsynth/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/gsynth/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/gsynth/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/gsynth/new/gsynth.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   4.9Mb
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
* Number of recursive dependencies: 100

Run `revdep_details(, "hal9001")` for more info

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

* Version: 2.2.1
* GitHub: https://github.com/jbolstad/hbamr
* Source code: https://github.com/cran/hbamr
* Date/Publication: 2024-02-23 12:30:02 UTC
* Number of recursive dependencies: 91

Run `revdep_details(, "hbamr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 353.1Mb
      sub-directories of 1Mb or more:
        libs  351.6Mb
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
* Number of recursive dependencies: 160

Run `revdep_details(, "hero")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘Rmpi’
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
* Number of recursive dependencies: 56

Run `revdep_details(, "heterogen")` for more info

</details>

## In both

*   checking whether package ‘heterogen’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/heterogen/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/heterogen/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/heterogen/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/heterogen/new/heterogen.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        extdata   2.5Mb
        libs      6.0Mb
    ```

# httpgd

<details>

* Version: 2.0.1
* GitHub: https://github.com/nx10/httpgd
* Source code: https://github.com/cran/httpgd
* Date/Publication: 2024-03-11 08:00:06 UTC
* Number of recursive dependencies: 67

Run `revdep_details(, "httpgd")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/bin/BATCH: line 60: 284845 Segmentation fault      (core dumped) ${R_HOME}/bin/R -f ${in} ${opts} ${R_BATCH_OPTIONS} > ${out} 2>&1
    
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
      address (nil), cause 'unknown'
      An irrecoverable exception occurred. R is aborting now ...
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++14: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 12.7Mb
      sub-directories of 1Mb or more:
        libs  12.2Mb
    ```

# hwep

<details>

* Version: 2.0.2
* GitHub: https://github.com/dcgerard/hwep
* Source code: https://github.com/cran/hwep
* Date/Publication: 2023-05-16 17:40:02 UTC
* Number of recursive dependencies: 116

Run `revdep_details(, "hwep")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 84.5Mb
      sub-directories of 1Mb or more:
        libs  83.9Mb
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
* Number of recursive dependencies: 154

Run `revdep_details(, "hydroloom")` for more info

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
    Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
      there is no package called ‘arrow’
    Calls: source ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
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
    there is no package called 'arrow'
    ...
    --- finished re-building ‘hydroloom.Rmd’
    
    --- re-building ‘non-dendritic.Rmd’ using rmarkdown
    --- finished re-building ‘non-dendritic.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘flow-table.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
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

*   checking whether package ‘interflex’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/interflex/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/interflex/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/interflex/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/interflex/new/interflex.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        libs   5.1Mb
    ```

# ISAnalytics

<details>

* Version: 1.12.0
* GitHub: https://github.com/calabrialab/ISAnalytics
* Source code: https://github.com/cran/ISAnalytics
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 173

Run `revdep_details(, "ISAnalytics")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        data   1.4Mb
        doc    3.5Mb
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

* Version: 0.5.1
* GitHub: https://github.com/keyATM/keyATM
* Source code: https://github.com/cran/keyATM
* Date/Publication: 2024-02-04 23:30:02 UTC
* Number of recursive dependencies: 107

Run `revdep_details(, "keyATM")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 24.7Mb
      sub-directories of 1Mb or more:
        libs  24.3Mb
    ```

# ldsr

<details>

* Version: 0.0.2
* GitHub: https://github.com/ntthung/ldsr
* Source code: https://github.com/cran/ldsr
* Date/Publication: 2020-05-04 14:40:09 UTC
* Number of recursive dependencies: 78

Run `revdep_details(, "ldsr")` for more info

</details>

## In both

*   checking whether package ‘ldsr’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/ldsr/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/ldsr/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/ldsr/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/ldsr/new/ldsr.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

# lidR

<details>

* Version: 4.1.1
* GitHub: https://github.com/r-lidar/lidR
* Source code: https://github.com/cran/lidR
* Date/Publication: 2024-03-05 17:00:11 UTC
* Number of recursive dependencies: 156

Run `revdep_details(, "lidR")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/bin/BATCH: line 60: 29724 Aborted                 (core dumped) ${R_HOME}/bin/R -f ${in} ${opts} ${R_BATCH_OPTIONS} > ${out} 2>&1
    
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > Sys.setenv("R_TESTS" = "")
      > 
      > library(testthat)
      > library(lidR)
      > test_check("lidR")
      Tests using raster: terra 
      Tests using future: TRUE 
      Tests using OpenMP thread: 32 
      OGR: Unsupported geometry type
      OGR: Unsupported geometry type
      Chunk 1 of 1 (100%): state ✓
      terminate called after throwing an instance of 'std::length_error'
        what():  basic_string::_S_create
    ```

*   checking whether package ‘lidR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/lidR/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/lidR/new/lidR.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 20.0Mb
      sub-directories of 1Mb or more:
        R         1.0Mb
        extdata   1.1Mb
        libs     16.3Mb
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

# manynet

<details>

* Version: 0.4.4
* GitHub: https://github.com/stocnet/manynet
* Source code: https://github.com/cran/manynet
* Date/Publication: 2024-03-15 19:20:10 UTC
* Number of recursive dependencies: 142

Run `revdep_details(, "manynet")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘Rgraphviz’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 7 marked UTF-8 strings
    ```

# matric

<details>

* Version: 0.2.0
* GitHub: https://github.com/cytomining/matric
* Source code: https://github.com/cran/matric
* Date/Publication: 2023-03-22 08:50:02 UTC
* Number of recursive dependencies: 107

Run `revdep_details(, "matric")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘arrow’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# metabolomicsR

<details>

* Version: 1.0.0
* GitHub: https://github.com/XikunHan/metabolomicsR
* Source code: https://github.com/cran/metabolomicsR
* Date/Publication: 2022-04-29 07:40:02 UTC
* Number of recursive dependencies: 182

Run `revdep_details(, "metabolomicsR")` for more info

</details>

## In both

*   checking dependencies in R code ... WARNING
    ```
    Missing or unexported object: ‘future::multiprocess’
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘genuMet’
    ```

# metaGE

<details>

* Version: 1.0.3
* GitHub: NA
* Source code: https://github.com/cran/metaGE
* Date/Publication: 2023-09-28 08:50:02 UTC
* Number of recursive dependencies: 149

Run `revdep_details(, "metaGE")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        data   4.2Mb
    ```

# microservices

<details>

* Version: 0.2.0
* GitHub: https://github.com/tidylab/microservices
* Source code: https://github.com/cran/microservices
* Date/Publication: 2022-10-01 09:50:02 UTC
* Number of recursive dependencies: 72

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
       1. ├─config::get(...) at test-endpoint-plumber-{route_name}.R:2:1
       2. │ └─base::normalizePath(file, mustWork = FALSE)
       3. │   └─base::path.expand(path)
       4. └─base::system.file(...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 12 ]
      Error: Test failures
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

# missSBM

<details>

* Version: 1.0.4
* GitHub: https://github.com/grossSBM/missSBM
* Source code: https://github.com/cran/missSBM
* Date/Publication: 2023-10-24 16:00:05 UTC
* Number of recursive dependencies: 114

Run `revdep_details(, "missSBM")` for more info

</details>

## In both

*   checking whether package ‘missSBM’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/missSBM/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/missSBM/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/missSBM/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/missSBM/new/missSBM.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.8Mb
      sub-directories of 1Mb or more:
        libs   7.8Mb
    ```

# mistyR

<details>

* Version: 1.10.0
* GitHub: https://github.com/saezlab/mistyR
* Source code: https://github.com/cran/mistyR
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 155

Run `revdep_details(, "mistyR")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
      
      Collecting contributions
      
      Collecting importances
      
      Aggregating
    ...
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-misty.R:212:3'): k for cv , n.bags for bagging can be changed and approx works ──
      first.run < second.run is not TRUE
      
      `actual`:   FALSE
      `expected`: TRUE 
      
      [ FAIL 1 | WARN 4 | SKIP 0 | PASS 172 ]
      Error: Test failures
      Execution halted
    ```

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

# momentuHMM

<details>

* Version: 1.5.5
* GitHub: https://github.com/bmcclintock/momentuHMM
* Source code: https://github.com/cran/momentuHMM
* Date/Publication: 2022-10-18 20:52:35 UTC
* Number of recursive dependencies: 145

Run `revdep_details(, "momentuHMM")` for more info

</details>

## In both

*   checking whether package ‘momentuHMM’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/momentuHMM/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/momentuHMM/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/momentuHMM/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/momentuHMM/new/momentuHMM.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.2Mb
      sub-directories of 1Mb or more:
        R      1.2Mb
        doc    1.7Mb
        libs   6.7Mb
    ```

# MOSS

<details>

* Version: 0.2.2
* GitHub: https://github.com/agugonrey/MOSS
* Source code: https://github.com/cran/MOSS
* Date/Publication: 2022-03-25 15:50:05 UTC
* Number of recursive dependencies: 184

Run `revdep_details(, "MOSS")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘MOSS_working_example.Rmd’ using rmarkdown
    ! LaTeX Error: File `iftex.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'MOSS_working_example.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/future/revdep/checks/MOSS/new/MOSS.Rcheck/vign_test/MOSS/vignettes/MOSS_working_example.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See MOSS_working_example.log for more info.
    --- failed re-building ‘MOSS_working_example.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘MOSS_working_example.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# mrgsim.parallel

<details>

* Version: 0.2.1
* GitHub: https://github.com/kylebaron/mrgsim.parallel
* Source code: https://github.com/cran/mrgsim.parallel
* Date/Publication: 2022-03-17 19:50:05 UTC
* Number of recursive dependencies: 74

Run `revdep_details(, "mrgsim.parallel")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘arrow’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘arrow’
    ```

# nebula

<details>

* Version: 1.5.3
* GitHub: https://github.com/lhe17/nebula
* Source code: https://github.com/cran/nebula
* Date/Publication: 2024-02-15 23:00:02 UTC
* Number of recursive dependencies: 185

Run `revdep_details(, "nebula")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 37.4Mb
      sub-directories of 1Mb or more:
        libs  35.9Mb
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
    See ‘/c4/home/henrik/repositories/future/revdep/checks/nfl4th/new/nfl4th.Rcheck/00install.out’ for details.
    ```

*   checking whether the namespace can be loaded with stated dependencies ... NOTE
    ```
    Warning: GitHub.com seems offline, and `options(nfl4th.keep_games)` is not set to TRUE. Deleting the games cache, and predictions may not be available without an internet connection.
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

# nhdplusTools

<details>

* Version: 1.0.0
* GitHub: https://github.com/doi-usgs/nhdplusTools
* Source code: https://github.com/cran/nhdplusTools
* Date/Publication: 2023-10-02 14:10:02 UTC
* Number of recursive dependencies: 140

Run `revdep_details(, "nhdplusTools")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘arrow’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# oncomsm

<details>

* Version: 0.1.4
* GitHub: https://github.com/Boehringer-Ingelheim/oncomsm
* Source code: https://github.com/cran/oncomsm
* Date/Publication: 2023-04-17 07:00:02 UTC
* Number of recursive dependencies: 127

Run `revdep_details(, "oncomsm")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 67.6Mb
      sub-directories of 1Mb or more:
        doc    1.0Mb
        libs  65.5Mb
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

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘onemapsgapi_vignette.Rmd’ using rmarkdown
    
    Quitting from lines 36-37 [unnamed-chunk-4] (onemapsgapi_vignette.Rmd)
    Error: processing vignette 'onemapsgapi_vignette.Rmd' failed with diagnostics:
    Peer certificate cannot be authenticated with given CA certificates: [developers.onemap.sg] Peer's Certificate has expired.
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
    + )
    > fit <- pareg(df_genes, df_terms, max_iterations = 10)
    Error in py_module_import(module, convert = convert) : 
      ImportError: /lib64/libstdc++.so.6: version `CXXABI_1.3.9' not found (required by /c4/home/henrik/.cache/R/basilisk/1.14.3/pareg/1.6.0/pareg/lib/python3.9/site-packages/tensorflow/python/platform/_pywrap_cpu_feature_guard.so)
    Run `reticulate::py_last_error()` for details.
    Error in .activate_fallback(proc, testload, env = env, envpath = envpath,  : 
      ImportError: /lib64/libstdc++.so.6: version `CXXABI_1.3.9' not found (required by /c4/home/henrik/.cache/R/basilisk/1.14.3/pareg/1.6.0/pareg/lib/python3.9/site-packages/tensorflow/python/platform/_pywrap_cpu_feature_guard.so)
    Run `reticulate::py_last_error()` for details.
    Calls: pareg -> basiliskStart -> .activate_fallback
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
      +   testload = c("tensorflow", "tensorflow_probability")
      + )
      Error in py_module_import(module, convert = convert) : 
        ImportError: /lib64/libstdc++.so.6: version `CXXABI_1.3.9' not found (required by /c4/home/henrik/.cache/R/basilisk/1.14.3/pareg/1.6.0/pareg/lib/python3.9/site-packages/tensorflow/python/platform/_pywrap_cpu_feature_guard.so)
      Run `reticulate::py_last_error()` for details.
      Error in .activate_fallback(proc, testload, env = env, envpath = envpath,  : 
        ImportError: /lib64/libstdc++.so.6: version `CXXABI_1.3.9' not found (required by /c4/home/henrik/.cache/R/basilisk/1.14.3/pareg/1.6.0/pareg/lib/python3.9/site-packages/tensorflow/python/platform/_pywrap_cpu_feature_guard.so)
      Run `reticulate::py_last_error()` for details.
      Calls: <Anonymous> -> .activate_fallback
      Execution halted
    ```

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘pareg.Rmd’ using rmarkdown
    The magick package is required to crop "/c4/home/henrik/repositories/future/revdep/checks/pareg/new/pareg.Rcheck/vign_test/pareg/vignettes/pareg_files/figure-html/unnamed-chunk-4-1.png" but not available.
    The magick package is required to crop "/c4/home/henrik/repositories/future/revdep/checks/pareg/new/pareg.Rcheck/vign_test/pareg/vignettes/pareg_files/figure-html/unnamed-chunk-5-1.png" but not available.
    
    Quitting from lines 145-150 [unnamed-chunk-9] (pareg.Rmd)
    Error: processing vignette 'pareg.Rmd' failed with diagnostics:
    ImportError: /lib64/libstdc++.so.6: version `CXXABI_1.3.9' not found (required by /c4/home/henrik/.cache/R/basilisk/1.14.3/pareg/1.6.0/pareg/lib/python3.9/site-packages/tensorflow/python/platform/_pywrap_cpu_feature_guard.so)
    Run `reticulate::py_last_error()` for details.
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

# parseRPDR

<details>

* Version: 1.1.0
* GitHub: https://github.com/martonkolossvary/parseRPDR
* Source code: https://github.com/cran/parseRPDR
* Date/Publication: 2024-01-09 12:10:02 UTC
* Number of recursive dependencies: 89

Run `revdep_details(, "parseRPDR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘doParallel’
      All declared Imports should be used.
    ```

# partR2

<details>

* Version: 0.9.2
* GitHub: https://github.com/mastoffel/partR2
* Source code: https://github.com/cran/partR2
* Date/Publication: 2024-03-04 13:20:02 UTC
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
    See ‘/c4/home/henrik/repositories/future/revdep/checks/pavo/new/pavo.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘imager’
    ```

# PCRedux

<details>

* Version: 1.1-2
* GitHub: https://github.com/PCRuniversum/PCRedux
* Source code: https://github.com/cran/PCRedux
* Date/Publication: 2022-05-11 11:40:02 UTC
* Number of recursive dependencies: 153

Run `revdep_details(, "PCRedux")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘PCRedux.Rmd’ using rmarkdown
    ! LaTeX Error: File `iftex.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'PCRedux.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/future/revdep/checks/PCRedux/new/PCRedux.Rcheck/vign_test/PCRedux/vignettes/PCRedux.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See PCRedux.log for more info.
    --- failed re-building ‘PCRedux.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘PCRedux.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# photosynthesis

<details>

* Version: 2.1.4
* GitHub: https://github.com/cdmuir/photosynthesis
* Source code: https://github.com/cran/photosynthesis
* Date/Publication: 2023-08-15 07:20:05 UTC
* Number of recursive dependencies: 122

Run `revdep_details(, "photosynthesis")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
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
* Number of recursive dependencies: 151

Run `revdep_details(, "PLNmodels")` for more info

</details>

## In both

*   checking whether package ‘PLNmodels’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/PLNmodels/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/PLNmodels/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/PLNmodels/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/PLNmodels/new/PLNmodels.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 27.5Mb
      sub-directories of 1Mb or more:
        data   1.4Mb
        doc    2.0Mb
        libs  22.4Mb
    ```

# plumber

<details>

* Version: 1.2.1
* GitHub: https://github.com/rstudio/plumber
* Source code: https://github.com/cran/plumber
* Date/Publication: 2022-09-06 19:10:02 UTC
* Number of recursive dependencies: 104

Run `revdep_details(, "plumber")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘arrow’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘arrow’
    ```

# portvine

<details>

* Version: 1.0.3
* GitHub: https://github.com/EmanuelSommer/portvine
* Source code: https://github.com/cran/portvine
* Date/Publication: 2024-01-18 16:30:02 UTC
* Number of recursive dependencies: 130

Run `revdep_details(, "portvine")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 52.9Mb
      sub-directories of 1Mb or more:
        libs  51.9Mb
    ```

# ProFAST

<details>

* Version: 1.4
* GitHub: https://github.com/feiyoung/ProFAST
* Source code: https://github.com/cran/ProFAST
* Date/Publication: 2024-03-18 08:10:06 UTC
* Number of recursive dependencies: 253

Run `revdep_details(, "ProFAST")` for more info

</details>

## In both

*   checking whether package ‘ProFAST’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/ProFAST/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/ProFAST/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/ProFAST/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/ProFAST/new/ProFAST.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 23.8Mb
      sub-directories of 1Mb or more:
        data   2.2Mb
        libs  21.1Mb
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
* Number of recursive dependencies: 158

Run `revdep_details(, "projpred")` for more info

</details>

## In both

*   checking whether package ‘projpred’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/projpred/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/projpred/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/projpred/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/projpred/new/projpred.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        doc    1.4Mb
        libs   3.6Mb
    ```

# Prostar

<details>

* Version: 1.34.6
* GitHub: https://github.com/prostarproteomics/Prostar
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2024-02-15
* Number of recursive dependencies: 332

Run `revdep_details(, "Prostar")` for more info

</details>

## In both

*   checking whether package ‘Prostar’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/Prostar/new/Prostar.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Prostar’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Prostar’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/Prostar/new/Prostar.Rcheck/Prostar’


```
### CRAN

```
* installing *source* package ‘Prostar’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Prostar’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/Prostar/old/Prostar.Rcheck/Prostar’


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
* Number of recursive dependencies: 89

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
    l.196 \RequirePackage
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

* Version: 0.1.35
* GitHub: NA
* Source code: https://github.com/cran/RAINBOWR
* Date/Publication: 2024-03-03 09:12:36 UTC
* Number of recursive dependencies: 167

Run `revdep_details(, "RAINBOWR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 45.2Mb
      sub-directories of 1Mb or more:
        libs  43.9Mb
    ```

# receptiviti

<details>

* Version: 0.1.7
* GitHub: https://github.com/Receptiviti/receptiviti-r
* Source code: https://github.com/cran/receptiviti
* Date/Publication: 2024-02-23 23:50:05 UTC
* Number of recursive dependencies: 67

Run `revdep_details(, "receptiviti")` for more info

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

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘arrow’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘arrow’
    ```

# regmedint

<details>

* Version: 1.0.1
* GitHub: https://github.com/kaz-yos/regmedint
* Source code: https://github.com/cran/regmedint
* Date/Publication: 2024-01-13 00:50:02 UTC
* Number of recursive dependencies: 154

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

* Version: 1.1.7
* GitHub: https://github.com/r-spatial/rgee
* Source code: https://github.com/cran/rgee
* Date/Publication: 2023-09-27 08:30:02 UTC
* Number of recursive dependencies: 144

Run `revdep_details(, "rgee")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.2Mb
      sub-directories of 1Mb or more:
        doc   6.9Mb
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

*   checking whether package ‘rpm’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/rpm/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/rpm/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/rpm/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/rpm/new/rpm.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.6Mb
      sub-directories of 1Mb or more:
        libs  11.1Mb
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

# SCArray.sat

<details>

* Version: 1.2.1
* GitHub: https://github.com/AbbVie-ComputationalGenomics/SCArray
* Source code: https://github.com/cran/SCArray.sat
* Date/Publication: 2024-01-16
* Number of recursive dependencies: 181

Run `revdep_details(, "SCArray.sat")` for more info

</details>

## In both

*   checking S3 generic/method consistency ... WARNING
    ```
    SetAssayData:
      function(object, layer, new.data, slot, ...)
    SetAssayData.SCArrayAssay:
      function(object, slot, new.data, ...)
    
    CreateSeuratObject:
      function(counts, assay, names.field, names.delim, meta.data, project,
               ...)
    CreateSeuratObject.DelayedMatrix:
      function(counts, project, assay, names.field, names.delim, meta.data,
               min.cells, min.features, row.names, ...)
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

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

Run `revdep_details(, "sctransform")` for more info

</details>

## In both

*   checking whether package ‘sctransform’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/sctransform/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/sctransform/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/sctransform/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/sctransform/new/sctransform.Rcheck/00install.out’ for details.
    ```

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
* Number of recursive dependencies: 176

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

* Version: 0.4.3
* GitHub: https://github.com/pbs-assess/sdmTMB
* Source code: https://github.com/cran/sdmTMB
* Date/Publication: 2024-02-29 01:40:02 UTC
* Number of recursive dependencies: 116

Run `revdep_details(, "sdmTMB")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
        'test-deprecated-args.R:2:3', 'test-deprecated-args.R:67:3',
        'test-dharma.R:3:3', 'test-extra-optimization.R:2:3',
        'test-extra-time.R:3:3', 'test-extra-time.R:42:3', 'test-extra-time.R:116:3',
        'test-factor-levels.R:2:3', 'test-factor-levels.R:37:3',
        'test-factor-levels.R:91:3', 'test-forecasting.R:2:3', 'test-index.R:3:3',
        'test-link-prediction.R:5:3', 'test-link-prediction.R:67:3',
    ...
       [6] -0.37427778 - -0.37427783 [6]             
       [7] -0.01713492 - -0.01713497 [7]             
       [8] 0.14953175  - 0.14953169  [8]             
       [9] -0.51713492 - -0.51713497 [9]             
      [10] 0.08286508  - 0.08286503  [10]            
       ... ...           ...         and 290 more ...
      
      [ FAIL 1 | WARN 0 | SKIP 146 | PASS 151 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 105.4Mb
      sub-directories of 1Mb or more:
        libs  103.7Mb
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

*   checking whether package ‘sentopics’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/sentopics/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/sentopics/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/sentopics/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/sentopics/new/sentopics.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.1Mb
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

* Version: 5.0.3
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2024-03-18 23:40:02 UTC
* Number of recursive dependencies: 267

Run `revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'BPCells', 'presto'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 16.0Mb
      sub-directories of 1Mb or more:
        R      1.7Mb
        libs  13.5Mb
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
* Number of recursive dependencies: 103

Run `revdep_details(, "SeuratObject")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘BPCells’
    
    Package which this enhances but not available for checking: ‘Seurat’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
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
* Number of recursive dependencies: 157

Run `revdep_details(, "sharp")` for more info

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

* Version: 1.8.0
* GitHub: https://github.com/rstudio/shiny
* Source code: https://github.com/cran/shiny
* Date/Publication: 2023-11-17 23:40:02 UTC
* Number of recursive dependencies: 90

Run `revdep_details(, "shiny")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.4Mb
      sub-directories of 1Mb or more:
        R     1.4Mb
        www   8.9Mb
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

# sigminer

<details>

* Version: 2.3.0
* GitHub: https://github.com/ShixiangWang/sigminer
* Source code: https://github.com/cran/sigminer
* Date/Publication: 2023-12-12 11:50:03 UTC
* Number of recursive dependencies: 205

Run `revdep_details(, "sigminer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        help   1.7Mb
        libs   1.4Mb
    ```

# Signac

<details>

* Version: 1.12.0
* GitHub: https://github.com/stuart-lab/signac
* Source code: https://github.com/cran/Signac
* Date/Publication: 2023-11-08 09:30:02 UTC
* Number of recursive dependencies: 254

Run `revdep_details(, "Signac")` for more info

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

* Version: 2.4.0
* GitHub: https://github.com/TojalLab/signeR
* Source code: https://github.com/cran/signeR
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 244

Run `revdep_details(, "signeR")` for more info

</details>

## In both

*   checking whether package ‘signeR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/signeR/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/signeR/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/signeR/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/signeR/new/signeR.Rcheck/00install.out’ for details.
    ```

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

* Version: 2.14
* GitHub: https://github.com/philchalmers/SimDesign
* Source code: https://github.com/cran/SimDesign
* Date/Publication: 2024-01-09 09:10:11 UTC
* Number of recursive dependencies: 124

Run `revdep_details(, "SimDesign")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘doMPI’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        doc   5.2Mb
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

*   checking whether package ‘sits’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/sits/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/sits/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/sits/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/sits/new/sits.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 13.2Mb
      sub-directories of 1Mb or more:
        R         1.1Mb
        extdata   1.5Mb
        libs      9.9Mb
    ```

# skpr

<details>

* Version: 1.6.2
* GitHub: https://github.com/tylermorganwall/skpr
* Source code: https://github.com/cran/skpr
* Date/Publication: 2024-02-06 19:50:02 UTC
* Number of recursive dependencies: 149

Run `revdep_details(, "skpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 63.3Mb
      sub-directories of 1Mb or more:
        libs  62.8Mb
    ```

# SmCCNet

<details>

* Version: 2.0.2
* GitHub: https://github.com/KechrisLab/SmCCNet
* Source code: https://github.com/cran/SmCCNet
* Date/Publication: 2024-01-13 21:50:17 UTC
* Number of recursive dependencies: 162

Run `revdep_details(, "SmCCNet")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘SmCCNet_Vignette_AutoSmCCNet.Rmd’ using rmarkdown
    ! kpathsea: Running mktexfmt xelatex.fmt
    
    Error: processing vignette 'SmCCNet_Vignette_AutoSmCCNet.Rmd' failed with diagnostics:
    LaTeX failed to compile /c4/home/henrik/repositories/future/revdep/checks/SmCCNet/new/SmCCNet.Rcheck/vign_test/SmCCNet/vignettes/SmCCNet_Vignette_AutoSmCCNet.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See SmCCNet_Vignette_AutoSmCCNet.log for more info.
    --- failed re-building ‘SmCCNet_Vignette_AutoSmCCNet.Rmd’
    
    --- re-building ‘SmCCNet_Vignette_MultiOmics.Rmd’ using rmarkdown
    ! kpathsea: Running mktexfmt xelatex.fmt
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
* Number of recursive dependencies: 76

Run `revdep_details(, "smoots")` for more info

</details>

## In both

*   checking whether package ‘smoots’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/smoots/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/smoots/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/smoots/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/smoots/new/smoots.Rcheck/00install.out’ for details.
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
* Number of recursive dependencies: 137

Run `revdep_details(, "SpaDES.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘NLMR’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        R   4.7Mb
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
    Packages suggested but not available for checking: 'Infusion', 'blackbox'
    
    Packages which this enhances but not available for checking:
      'multcomp', 'RLRsim', 'lmerTest'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 56.9Mb
      sub-directories of 1Mb or more:
        R      2.7Mb
        libs  52.9Mb
    ```

# sparrpowR

<details>

* Version: 0.2.8
* GitHub: https://github.com/machiela-lab/sparrpowR
* Source code: https://github.com/cran/sparrpowR
* Date/Publication: 2024-01-23 15:20:02 UTC
* Number of recursive dependencies: 130

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

*   checking whether package ‘spatialwarnings’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/spatialwarnings/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/spatialwarnings/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/spatialwarnings/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/spatialwarnings/new/spatialwarnings.Rcheck/00install.out’ for details.
    ```

*   checking Rd cross-references ... WARNING
    ```
    Missing link or links in documentation object 'indictest.Rd':
      ‘mgcv’
    
    See section 'Cross-references' in the 'Writing R Extensions' manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.0Mb
      sub-directories of 1Mb or more:
        libs   6.0Mb
    ```

# sphunif

<details>

* Version: 1.3.0
* GitHub: https://github.com/egarpor/sphunif
* Source code: https://github.com/cran/sphunif
* Date/Publication: 2023-12-04 19:50:02 UTC
* Number of recursive dependencies: 77

Run `revdep_details(, "sphunif")` for more info

</details>

## In both

*   checking whether package ‘sphunif’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/sphunif/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/sphunif/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/sphunif/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/sphunif/new/sphunif.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 24.7Mb
      sub-directories of 1Mb or more:
        libs  23.7Mb
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
* Number of recursive dependencies: 146

Run `revdep_details(, "spNetwork")` for more info

</details>

## In both

*   checking whether package ‘spNetwork’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/spNetwork/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/spNetwork/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/spNetwork/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/spNetwork/new/spNetwork.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 25.5Mb
      sub-directories of 1Mb or more:
        doc       1.0Mb
        extdata   2.6Mb
        libs     20.5Mb
    ```

# squat

<details>

* Version: 0.3.0
* GitHub: https://github.com/LMJL-Alea/squat
* Source code: https://github.com/cran/squat
* Date/Publication: 2024-01-10 15:40:02 UTC
* Number of recursive dependencies: 143

Run `revdep_details(, "squat")` for more info

</details>

## In both

*   checking whether package ‘squat’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/squat/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/squat/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/squat/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/squat/new/squat.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 20.4Mb
      sub-directories of 1Mb or more:
        data   1.1Mb
        help   1.1Mb
        libs  18.0Mb
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
      installed size is 42.1Mb
      sub-directories of 1Mb or more:
        doc    1.2Mb
        libs  39.6Mb
    ```

# stars

<details>

* Version: 0.6-4
* GitHub: https://github.com/r-spatial/stars
* Source code: https://github.com/cran/stars
* Date/Publication: 2023-09-11 11:50:02 UTC
* Number of recursive dependencies: 164

Run `revdep_details(, "stars")` for more info

</details>

## Newly broken

*   checking examples ...sh: line 1: 76201 Aborted                 (core dumped) LANGUAGE=en _R_CHECK_INTERNALS2_=1 '/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/bin/R' --vanilla --encoding=UTF-8 > 'stars-Ex.Rout' 2>&1 < 'stars-Ex.R'
    ```
     ERROR
    Running examples in ‘stars-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: mdim
    > ### Title: Read or write data using GDAL's multidimensional array API
    > ### Aliases: mdim read_mdim write_mdim
    > 
    > ### ** Examples
    > 
    ...
                               dmalloc: no
        Packages w/ extra debug output: none
                           API tracing: no
                  Using memory checker: no
       Memory allocation sanity checks: no
                Function stack tracing: no
                      Use file locking: best-effort
             Strict file format checks: no
          Optimization instrumentation: no
    Bye...
    ```

## Newly fixed

*   checking examples ...sh: line 1: 76251 Aborted                 (core dumped) LANGUAGE=en _R_CHECK_INTERNALS2_=1 '/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/bin/R' --vanilla --encoding=UTF-8 > 'stars-Ex.Rout' 2>&1 < 'stars-Ex.R'
    ```
     ERROR
    Running examples in ‘stars-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: mdim
    > ### Title: Read or write data using GDAL's multidimensional array API
    > ### Aliases: mdim read_mdim write_mdim
    > 
    > ### ** Examples
    > 
    ...
                               dmalloc: no
        Packages w/ extra debug output: none
                           API tracing: no
                  Using memory checker: no
       Memory allocation sanity checks: no
                Function stack tracing: no
                      Use file locking: best-effort
             Strict file format checks: no
          Optimization instrumentation: no
    Bye...
    ```

## In both

*   checking tests ...
    ```
      Running ‘aggregate.R’
      Comparing ‘aggregate.Rout’ to ‘aggregate.Rout.save’ ...4c4
    < Linking to GEOS 3.11.2, GDAL 3.6.4, PROJ 8.2.1; sf_use_s2() is TRUE
    ---
    > Linking to GEOS 3.11.2, GDAL 3.6.2, PROJ 9.2.0; sf_use_s2() is TRUE
      Running ‘align.R’
      Comparing ‘align.Rout’ to ‘align.Rout.save’ ... OK
      Running ‘area.R’
      Comparing ‘area.Rout’ to ‘area.Rout.save’ ... OK
      Running ‘crop.R’
    ...
                                 dmalloc: no
          Packages w/ extra debug output: none
                             API tracing: no
                    Using memory checker: no
         Memory allocation sanity checks: no
                  Function stack tracing: no
                        Use file locking: best-effort
               Strict file format checks: no
            Optimization instrumentation: no
      Bye...
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘starsdata’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.1Mb
      sub-directories of 1Mb or more:
        doc   2.4Mb
        nc    1.7Mb
    ```

# startR

<details>

* Version: 2.3.1
* GitHub: NA
* Source code: https://github.com/cran/startR
* Date/Publication: 2023-12-21 16:20:02 UTC
* Number of recursive dependencies: 60

Run `revdep_details(, "startR")` for more info

</details>

## In both

*   checking whether package ‘startR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/startR/new/startR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘startR’ ...
** package ‘startR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘startR’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/startR/new/startR.Rcheck/startR’


```
### CRAN

```
* installing *source* package ‘startR’ ...
** package ‘startR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘startR’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/startR/old/startR.Rcheck/startR’


```
# stppSim

<details>

* Version: 1.3.2
* GitHub: https://github.com/Manalytics/stppSim
* Source code: https://github.com/cran/stppSim
* Date/Publication: 2023-10-29 21:20:02 UTC
* Number of recursive dependencies: 133

Run `revdep_details(, "stppSim")` for more info

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

* Version: 0.0.7
* GitHub: https://github.com/fndemarqui/survstan
* Source code: https://github.com/cran/survstan
* Date/Publication: 2024-03-20 23:00:02 UTC
* Number of recursive dependencies: 127

Run `revdep_details(, "survstan")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 90.6Mb
      sub-directories of 1Mb or more:
        libs  90.1Mb
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

* Version: 3.10.3
* GitHub: NA
* Source code: https://github.com/cran/synergyfinder
* Date/Publication: 2024-01-22
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

* Version: 0.5
* GitHub: https://github.com/kkholst/targeted
* Source code: https://github.com/cran/targeted
* Date/Publication: 2024-02-22 10:00:21 UTC
* Number of recursive dependencies: 98

Run `revdep_details(, "targeted")` for more info

</details>

## In both

*   checking whether package ‘targeted’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/targeted/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/targeted/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/targeted/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/targeted/new/targeted.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 22.4Mb
      sub-directories of 1Mb or more:
        doc    1.1Mb
        libs  20.9Mb
    ```

# targets

<details>

* Version: 1.6.0
* GitHub: https://github.com/ropensci/targets
* Source code: https://github.com/cran/targets
* Date/Publication: 2024-03-13 16:30:02 UTC
* Number of recursive dependencies: 166

Run `revdep_details(, "targets")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘clustermq’
    ```

# text

<details>

* Version: 1.2.0
* GitHub: https://github.com/OscarKjell/text
* Source code: https://github.com/cran/text
* Date/Publication: 2024-02-13 20:51:36 UTC
* Number of recursive dependencies: 161

Run `revdep_details(, "text")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3 marked UTF-8 strings
    ```

# tglkmeans

<details>

* Version: 0.5.4
* GitHub: https://github.com/tanaylab/tglkmeans
* Source code: https://github.com/cran/tglkmeans
* Date/Publication: 2024-01-09 14:10:02 UTC
* Number of recursive dependencies: 89

Run `revdep_details(, "tglkmeans")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   5.0Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# TKCat

<details>

* Version: 1.0.7
* GitHub: https://github.com/patzaw/TKCat
* Source code: https://github.com/cran/TKCat
* Date/Publication: 2023-02-16 14:50:03 UTC
* Number of recursive dependencies: 115

Run `revdep_details(, "TKCat")` for more info

</details>

## In both

*   checking whether package ‘TKCat’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/TKCat/new/TKCat.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘TKCat’ ...
** package ‘TKCat’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘arrow’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘TKCat’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/TKCat/new/TKCat.Rcheck/TKCat’


```
### CRAN

```
* installing *source* package ‘TKCat’ ...
** package ‘TKCat’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘arrow’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘TKCat’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/TKCat/old/TKCat.Rcheck/TKCat’


```
# TreeSearch

<details>

* Version: 1.4.0
* GitHub: https://github.com/ms609/TreeSearch
* Source code: https://github.com/cran/TreeSearch
* Date/Publication: 2023-08-26 04:50:02 UTC
* Number of recursive dependencies: 126

Run `revdep_details(, "TreeSearch")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        datasets   1.6Mb
        doc        1.2Mb
        libs       2.5Mb
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

* Version: 1.0.0
* GitHub: https://github.com/tsmodels/tsdistributions
* Source code: https://github.com/cran/tsdistributions
* Date/Publication: 2024-03-17 09:10:05 UTC
* Number of recursive dependencies: 72

Run `revdep_details(, "tsdistributions")` for more info

</details>

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘estimation_demo.Rmd’ using rmarkdown
    --- finished re-building ‘estimation_demo.Rmd’
    
    --- re-building ‘location_scale_distributions.Rmd’ using rmarkdown
    ! LaTeX Error: File `iftex.sty' not found.
    
    ! Emergency stop.
    <read *> 
    ...
    --- failed re-building ‘location_scale_distributions.Rmd’
    
    --- re-building ‘profile_demo.Rmd’ using rmarkdown
    --- finished re-building ‘profile_demo.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘location_scale_distributions.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 42.4Mb
      sub-directories of 1Mb or more:
        libs  41.8Mb
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

# UCSCXenaShiny

<details>

* Version: 2.0.0
* GitHub: https://github.com/openbiox/UCSCXenaShiny
* Source code: https://github.com/cran/UCSCXenaShiny
* Date/Publication: 2024-03-14 03:20:09 UTC
* Number of recursive dependencies: 199

Run `revdep_details(, "UCSCXenaShiny")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
      sub-directories of 1Mb or more:
        data       1.1Mb
        doc        1.4Mb
        shinyapp   4.6Mb
    ```

# updog

<details>

* Version: 2.1.5
* GitHub: https://github.com/dcgerard/updog
* Source code: https://github.com/cran/updog
* Date/Publication: 2023-11-29 15:50:02 UTC
* Number of recursive dependencies: 151

Run `revdep_details(, "updog")` for more info

</details>

## In both

*   checking whether package ‘updog’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/updog/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/updog/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/updog/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/updog/new/updog.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.0Mb
      sub-directories of 1Mb or more:
        libs   7.3Mb
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

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘imager’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
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
    --- finished re-building ‘WeightedClusterFR.Rnw’
    
    --- re-building ‘WeightedClusterPreview.Rnw’ using knitr
    Error: processing vignette 'WeightedClusterPreview.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'WeightedClusterPreview.tex' failed.
    ...
    l.85 \usepackage
                    {tikz}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘WeightedClusterPreview.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘WeightedClusterPreview.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# wru

<details>

* Version: 3.0.1
* GitHub: https://github.com/kosukeimai/wru
* Source code: https://github.com/cran/wru
* Date/Publication: 2024-02-28 04:20:02 UTC
* Number of recursive dependencies: 96

Run `revdep_details(, "wru")` for more info

</details>

## In both

*   checking whether package ‘wru’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      /c4/home/henrik/repositories/future/revdep/library/wru/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:63:13: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/wru/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:65:7: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
      /c4/home/henrik/repositories/future/revdep/library/wru/RcppArmadillo/include/armadillo_bits/fn_reshape.hpp:74:9: warning: ‘arma::Mat<typename T1::elem_type> arma::reshape(const arma::Base<typename T1::elem_type, T1>&, arma::uword, arma::uword, arma::uword)’ is deprecated: don't use this form: it will be removed [-Wdeprecated-declarations]
    See ‘/c4/home/henrik/repositories/future/revdep/checks/wru/new/wru.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        data   3.5Mb
        help   1.9Mb
        libs   2.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘tidyr’
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

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
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

