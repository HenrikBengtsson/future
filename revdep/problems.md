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
* Number of recursive dependencies: 91

Run `revdep_details(,"adept")` for more info

</details>

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

*   checking dependencies in R code ... NOTE
    ```
    Error in setGeneric("image", function(x, ...) standardGeneric("image")) : 
      could not find function "setGeneric"
    ```

# BAMBI

<details>

* Version: 2.1.0
* Source code: https://github.com/cran/BAMBI
* URL: https://arxiv.org/abs/1708.07804
* BugReports: https://github.com/c7rishi/BAMBI/issues
* Date/Publication: 2019-03-16 20:43:42 UTC
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

# blavaan

<details>

* Version: 0.3-8
* Source code: https://github.com/cran/blavaan
* Date/Publication: 2019-11-19 19:20:02 UTC
* Number of recursive dependencies: 103

Run `revdep_details(,"blavaan")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 51.7Mb
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

*   checking dependencies in R code ... NOTE
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
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

* Version: 0.1.1
* Source code: https://github.com/cran/datapackage.r
* URL: https://github.com/frictionlessdata/datapackage-r
* BugReports: https://github.com/frictionlessdata/datapackage-r/issues
* Date/Publication: 2019-05-20 16:40:03 UTC
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
* Number of recursive dependencies: 59

Run `revdep_details(,"dipsaus")` for more info

</details>

## In both

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# disk.frame

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/disk.frame
* URL: https://diskframe.com
* BugReports: https://github.com/xiaodaigh/disk.frame/issues
* Date/Publication: 2019-10-05 16:10:02 UTC
* Number of recursive dependencies: 105

Run `revdep_details(,"disk.frame")` for more info

</details>

## In both

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in globalVariables(c("a", "b", "ans")) : 
      could not find function "globalVariables"
    Error: package or namespace load failed for ‘disk.frame’:
     unable to load R code in package ‘benchmarkme’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in globalVariables(c("a", "b", "ans")) : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘benchmarkme’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
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

*   checking R code for possible problems ... NOTE
    ```
    Error in globalVariables(c("a", "b", "ans")) : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘benchmarkme’
    Execution halted
    ```

# drake

<details>

* Version: 7.7.0
* Source code: https://github.com/cran/drake
* URL: https://github.com/ropensci/drake, https://docs.ropensci.org/drake, https://github.com/ropenscilabs/drake-manual
* BugReports: https://github.com/ropensci/drake/issues
* Date/Publication: 2019-10-15 07:40:02 UTC
* Number of recursive dependencies: 134

Run `revdep_details(,"drake")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Error in globalVariables(c("a", "b", "ans")) : 
      could not find function "globalVariables"
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

# forecastML

<details>

* Version: 0.5.0
* Source code: https://github.com/cran/forecastML
* URL: https://github.com/nredell/forecastML/
* Date/Publication: 2019-10-09 15:30:05 UTC
* Number of recursive dependencies: 99

Run `revdep_details(,"forecastML")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stringr’
      All declared Imports should be used.
    ```

# genBaRcode

<details>

* Version: 1.2.2
* Source code: https://github.com/cran/genBaRcode
* Date/Publication: 2019-10-25 15:10:02 UTC
* Number of recursive dependencies: 138

Run `revdep_details(,"genBaRcode")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Error in eval(`_inherit`, env, NULL) : object 'Stat' not found
    Error in prototype(data = data_frame(), extraInfo = data_frame(), anc_seq = ape::as.DNAbin(character(0)),  : 
      could not find function "prototype"
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

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: package or namespace load failed for ‘gWQS’:
     unable to load R code in package ‘broom’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
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

*   checking R code for possible problems ... NOTE
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
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

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: package or namespace load failed for ‘gWQSRS’:
     unable to load R code in package ‘broom’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
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

*   checking R code for possible problems ... NOTE
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
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

*   checking examples ... ERROR
    ```
    ...
            }
            flog.info("\n\n## Making the final infercnv heatmap ##")
            invisible(gc())
            plot_cnv(infercnv_obj, k_obs_groups = k_obs_groups, cluster_by_groups = cluster_by_groups, 
                cluster_references = cluster_references, out_dir = out_dir, 
                x.center = final_center_val, x.range = final_scale_limits, 
                title = "inferCNV", output_filename = "infercnv", 
                output_format = output_format, write_expr_matrix = TRUE, 
                png_res = png_res, useRaster = useRaster)
        }
        return(infercnv_obj)
    }
    <bytecode: 0x55d4147109f8>
    <environment: namespace:infercnv>
     --- function search by body ---
    Function run in namespace infercnv has this body.
     ----------- END OF FAILURE REPORT -------------- 
    Error in HMM && HMM_type == "i6" : 
      'length(x) = 2 > 1' in coercion to 'logical(1)'
    Calls: <Anonymous>
    Execution halted
    ```

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

# merTools

<details>

* Version: 0.5.0
* Source code: https://github.com/cran/merTools
* BugReports: https://www.github.com/jknowles/merTools
* Date/Publication: 2019-05-13 12:30:06 UTC
* Number of recursive dependencies: 129

Run `revdep_details(,"merTools")` for more info

</details>

## In both

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
    ```

# MetamapsDB

<details>

* Version: 0.0.2
* Source code: https://github.com/cran/MetamapsDB
* Date/Publication: 2017-12-06 09:51:00 UTC
* Number of recursive dependencies: 111

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
* Number of recursive dependencies: 31

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
* Number of recursive dependencies: 43

Run `revdep_details(,"promises")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘purrr’
    ```

# Prostar

<details>

* Version: 1.18.2
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2019-11-21
* Number of recursive dependencies: 259

Run `revdep_details(,"Prostar")` for more info

</details>

## In both

*   checking whether package ‘Prostar’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/home/hb/repositories/future/revdep/checks/Prostar/new/Prostar.Rcheck/00install.out’ for details.
    ```

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: package or namespace load failed for ‘Prostar’:
     unable to load R code in package ‘broom’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
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

*   checking R code for possible problems ... NOTE
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
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

* Version: 1.2.0
* Source code: https://github.com/cran/qgcomp
* Date/Publication: 2019-11-12 06:20:03 UTC
* Number of recursive dependencies: 61

Run `revdep_details(,"qgcomp")` for more info

</details>

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

# sctransform

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/sctransform
* URL: https://github.com/ChristophH/sctransform
* BugReports: https://github.com/ChristophH/sctransform/issues
* Date/Publication: 2019-04-12 12:32:38 UTC
* Number of recursive dependencies: 59

Run `revdep_details(,"sctransform")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘future’
      All declared Imports should be used.
    ```

# Seurat

<details>

* Version: 3.1.1
* Source code: https://github.com/cran/Seurat
* URL: http://www.satijalab.org/seurat, https://github.com/satijalab/seurat
* BugReports: https://github.com/satijalab/seurat/issues
* Date/Publication: 2019-10-03 12:40:02 UTC
* Number of recursive dependencies: 210

Run `revdep_details(,"Seurat")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘loomR’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.5Mb
      sub-directories of 1Mb or more:
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

# simglm

<details>

* Version: 0.7.4
* Source code: https://github.com/cran/simglm
* Date/Publication: 2019-05-31 17:10:03 UTC
* Number of recursive dependencies: 90

Run `revdep_details(,"simglm")` for more info

</details>

## In both

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: package or namespace load failed for ‘simglm’:
     unable to load R code in package ‘broom’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
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

*   checking R code for possible problems ... NOTE
    ```
    Error in globalVariables(c(".", ".id", ".rownames", "ci.lower", "ci.upper",  : 
      could not find function "globalVariables"
    Error: unable to load R code in package ‘broom’
    Execution halted
    ```

# skpr

<details>

* Version: 0.61.3
* Source code: https://github.com/cran/skpr
* URL: https://github.com/tylermorganwall/skpr
* BugReports: https://github.com/tylermorganwall/skpr/issues
* Date/Publication: 2019-09-19 17:00:02 UTC
* Number of recursive dependencies: 131

Run `revdep_details(,"skpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 50.6Mb
      sub-directories of 1Mb or more:
        libs  49.1Mb
    ```

# solitude

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/solitude
* URL: https://github.com/talegari/solitude
* BugReports: https://github.com/talegari/solitude/issues
* Date/Publication: 2019-08-24 20:00:02 UTC
* Number of recursive dependencies: 40

Run `revdep_details(,"solitude")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
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

# steps

<details>

* Version: 0.2.1
* Source code: https://github.com/cran/steps
* Date/Publication: 2019-04-02 11:30:03 UTC
* Number of recursive dependencies: 58

Run `revdep_details(,"steps")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Error in globalVariables("ind") : 
      could not find function "globalVariables"
    ```

# tableschema.r

<details>

* Version: 1.1.0
* Source code: https://github.com/cran/tableschema.r
* URL: https://github.com/frictionlessdata/tableschema-r
* BugReports: https://github.com/frictionlessdata/tableschema-r/issues
* Date/Publication: 2018-11-14 16:50:03 UTC
* Number of recursive dependencies: 55

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

* Version: 0.1.0
* Source code: https://github.com/cran/treeHMM
* Date/Publication: 2019-10-13 11:10:02 UTC
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

