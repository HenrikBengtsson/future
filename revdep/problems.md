# abjutils

<details>

* Version: 0.2.3
* Source code: https://github.com/cran/abjutils
* URL: https://github.com/abjur/abjutils
* Date/Publication: 2019-02-07 21:43:35 UTC
* Number of recursive dependencies: 95

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
* Number of recursive dependencies: 92

Run `revdep_details(,"adept")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# alookr

<details>

* Version: 0.3.2
* Source code: https://github.com/cran/alookr
* BugReports: https://github.com/choonghyunryu/alookr/issues
* Date/Publication: 2020-06-07 16:50:07 UTC
* Number of recursive dependencies: 203

Run `revdep_details(,"alookr")` for more info

</details>

## In both

*   checking whether package ‘alookr’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/alookr/new/alookr.Rcheck/00install.out’ for details.
    ```

# aroma.core

<details>

* Version: 3.2.1
* Source code: https://github.com/cran/aroma.core
* URL: https://github.com/HenrikBengtsson/aroma.core, https://www.aroma-project.org/
* BugReports: https://github.com/HenrikBengtsson/aroma.core/issues
* Date/Publication: 2020-02-04 15:20:21 UTC
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

* Version: 2.3.0
* Source code: https://github.com/cran/BAMBI
* URL: https://arxiv.org/abs/1708.07804
* BugReports: https://github.com/c7rishi/BAMBI/issues
* Date/Publication: 2020-06-19 13:50:07 UTC
* Number of recursive dependencies: 48

Run `revdep_details(,"BAMBI")` for more info

</details>

## In both

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in setGeneric("validTheta", function(x, u) standardGeneric("validTheta")) : 
      could not find function "setGeneric"
    In addition: Warning messages:
    1: class "NULL" is defined (with package slot ‘methods’) but no metadata object found to revise superClass information---not imported?  Making a copy in package ‘copula’ 
    2: class "logical" is defined (with package slot ‘methods’) but no metadata object found to revise superClass information---not imported?  Making a copy in package ‘copula’ 
    3: class "missing" is defined (with package slot ‘methods’) but no metadata object found to revise superClass information---not imported?  Making a copy in package ‘copula’ 
    Error: package or namespace load failed for ‘BAMBI’:
     unable to load R code in package ‘copula’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in setGeneric("validTheta", function(x, u) standardGeneric("validTheta")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package ‘copula’
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
    Error in setGeneric("validTheta", function(x, u) standardGeneric("validTheta")) : 
      could not find function "setGeneric"
    Error: unable to load R code in package ‘copula’
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

# bcmaps

<details>

* Version: 0.18.1
* Source code: https://github.com/cran/bcmaps
* URL: https://github.com/bcgov/bcmaps
* BugReports: https://github.com/bcgov/bcmaps/issues
* Date/Publication: 2020-04-29 10:30:10 UTC
* Number of recursive dependencies: 83

Run `revdep_details(,"bcmaps")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘bcmapsdata’
    ```

# blavaan

<details>

* Version: 0.3-9
* Source code: https://github.com/cran/blavaan
* Date/Publication: 2020-03-09 17:20:02 UTC
* Number of recursive dependencies: 109

Run `revdep_details(,"blavaan")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        libs   4.7Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# blockCV

<details>

* Version: 2.1.1
* Source code: https://github.com/cran/blockCV
* URL: https://github.com/rvalavi/blockCV
* Date/Publication: 2020-02-23 20:00:02 UTC
* Number of recursive dependencies: 105

Run `revdep_details(,"blockCV")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘biomod2’
    ```

# brms

<details>

* Version: 2.13.3
* Source code: https://github.com/cran/brms
* URL: https://github.com/paul-buerkner/brms, http://discourse.mc-stan.org
* BugReports: https://github.com/paul-buerkner/brms/issues
* Date/Publication: 2020-07-13 13:10:06 UTC
* Number of recursive dependencies: 180

Run `revdep_details(,"brms")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘cmdstanr’
    ```

# CLVTools

<details>

* Version: 0.6.0
* Source code: https://github.com/cran/CLVTools
* URL: https://github.com/bachmannpatrick/CLVTools
* BugReports: https://github.com/bachmannpatrick/CLVTools/issues
* Date/Publication: 2020-06-24 22:10:02 UTC
* Number of recursive dependencies: 87

Run `revdep_details(,"CLVTools")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        libs   5.2Mb
    ```

# codebook

<details>

* Version: 0.9.2
* Source code: https://github.com/cran/codebook
* URL: https://github.com/rubenarslan/codebook
* BugReports: https://github.com/rubenarslan/codebook/issues
* Date/Publication: 2020-06-06 23:40:03 UTC
* Number of recursive dependencies: 191

Run `revdep_details(,"codebook")` for more info

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

* Version: 0.2.0
* Source code: https://github.com/cran/cSEM
* URL: https://github.com/M-E-Rademaker/cSEM, https://m-e-rademaker.github.io/cSEM/
* BugReports: https://github.com/M-E-Rademaker/cSEM/issues
* Date/Publication: 2020-03-29 11:00:20 UTC
* Number of recursive dependencies: 112

Run `revdep_details(,"cSEM")` for more info

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
* Source code: https://github.com/cran/datapackage.r
* URL: https://github.com/frictionlessdata/datapackage-r
* BugReports: https://github.com/frictionlessdata/datapackage-r/issues
* Date/Publication: 2020-05-06 22:10:09 UTC
* Number of recursive dependencies: 109

Run `revdep_details(,"datapackage.r")` for more info

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
* Source code: https://github.com/cran/DeclareDesign
* URL: https://declaredesign.org, https://github.com/DeclareDesign/DeclareDesign
* BugReports: https://github.com/DeclareDesign/DeclareDesign/issues
* Date/Publication: 2020-03-24 07:40:10 UTC
* Number of recursive dependencies: 135

Run `revdep_details(,"DeclareDesign")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘sf’
    ```

# delayed

<details>

* Version: 0.3.0
* Source code: https://github.com/cran/delayed
* URL: https://tlverse.org/delayed
* BugReports: https://github.com/tlverse/delayed/issues
* Date/Publication: 2020-02-28 11:40:02 UTC
* Number of recursive dependencies: 65

Run `revdep_details(,"delayed")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘assertthat’
      All declared Imports should be used.
    ```

# dragon

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/dragon
* URL: https://github.com/sjspielman/dragon
* BugReports: https://github.com/sjspielman/dragon/issues
* Date/Publication: 2020-07-19 00:10:03 UTC
* Number of recursive dependencies: 123

Run `revdep_details(,"dragon")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘htmltools’ ‘magrittr’ ‘promises’
      All declared Imports should be used.
    ```

# drake

<details>

* Version: 7.12.4
* Source code: https://github.com/cran/drake
* URL: https://github.com/ropensci/drake, https://docs.ropensci.org/drake, https://books.ropensci.org/drake/
* BugReports: https://github.com/ropensci/drake/issues
* Date/Publication: 2020-06-29 17:20:03 UTC
* Number of recursive dependencies: 141

Run `revdep_details(,"drake")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘clustermq’
    ```

# fabletools

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/fabletools
* URL: http://fabletools.tidyverts.org/, https://github.com/tidyverts/fabletools
* BugReports: https://github.com/tidyverts/fabletools/issues
* Date/Publication: 2020-06-15 23:40:08 UTC
* Number of recursive dependencies: 94

Run `revdep_details(,"fabletools")` for more info

</details>

## In both

*   checking S3 generic/method consistency ... WARNING
    ```
    Failed to query server: Connection timed out
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking replacement functions ... WARNING
    ```
    Failed to query server: Connection timed out
    The argument of a replacement function which corresponds to the right
    hand side must be named ‘value’.
    ```

*   checking Rd files ... WARNING
    ```
    Failed to query server: Connection timed out
    prepare_Rd: running command 'timedatectl' had status 1
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Failed to query server: Connection timed out
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Failed to query server: Connection timed out
    Failed to query server: Connection timed out
    Failed to query server: Connection timed out
    ```

*   checking for unstated dependencies in examples ... WARNING
    ```
    Failed to query server: Connection timed out
    Warning in system("timedatectl", intern = TRUE) :
      running command 'timedatectl' had status 1
    ```

*   checking dependencies in R code ... NOTE
    ```
    Failed to query server: Connection timed out
    Namespace in Imports field not imported from: ‘lifecycle’
      All declared Imports should be used.
    ```

*   checking foreign function calls ... NOTE
    ```
    Failed to query server: Connection timed out
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Failed to query server: Connection timed out
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Failed to query server: Connection timed out
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# foieGras

<details>

* Version: 0.6-9
* Source code: https://github.com/cran/foieGras
* URL: <https://cran.r-project.org/package=foieGras>
* BugReports: https://github.com/ianjonsen/foieGras/issues
* Date/Publication: 2020-07-22 21:50:02 UTC
* Number of recursive dependencies: 118

Run `revdep_details(,"foieGras")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.8Mb
      sub-directories of 1Mb or more:
        libs  12.7Mb
    ```

# forecastML

<details>

* Version: 0.9.0
* Source code: https://github.com/cran/forecastML
* URL: https://github.com/nredell/forecastML/
* Date/Publication: 2020-05-07 15:10:17 UTC
* Number of recursive dependencies: 93

Run `revdep_details(,"forecastML")` for more info

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
* Source code: https://github.com/cran/GetBCBData
* URL: https://github.com/msperlin/GetBCBData/
* BugReports: https://github.com/msperlin/GetBCBData/issues
* Date/Publication: 2019-04-23 10:10:29 UTC
* Number of recursive dependencies: 100

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

* Version: 1.9.0.0
* Source code: https://github.com/cran/grattan
* URL: https://github.com/HughParsonage/grattan, https://hughparsonage.github.io/grattan/
* BugReports: https://github.com/HughParsonage/grattan/issues
* Date/Publication: 2020-07-13 14:20:06 UTC
* Number of recursive dependencies: 113

Run `revdep_details(,"grattan")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'taxstats', 'taxstats1516'
    ```

# gstat

<details>

* Version: 2.0-6
* Source code: https://github.com/cran/gstat
* URL: https://github.com/r-spatial/gstat/
* BugReports: https://github.com/r-spatial/gstat/issues/
* Date/Publication: 2020-05-18 12:30:02 UTC
* Number of recursive dependencies: 37

Run `revdep_details(,"gstat")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Error in setOldClass("stars") : could not find function "setOldClass"
    ```

# gWQS

<details>

* Version: 3.0.0
* Source code: https://github.com/cran/gWQS
* Date/Publication: 2020-06-23 13:00:03 UTC
* Number of recursive dependencies: 103

Run `revdep_details(,"gWQS")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

# iml

<details>

* Version: 0.10.0
* Source code: https://github.com/cran/iml
* URL: https://github.com/christophM/iml
* BugReports: https://github.com/christophM/iml/issues
* Date/Publication: 2020-03-26 10:20:03 UTC
* Number of recursive dependencies: 153

Run `revdep_details(,"iml")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# infercnv

<details>

* Version: 1.4.0
* Source code: https://github.com/cran/infercnv
* URL: https://github.com/broadinstitute/inferCNV/wiki
* BugReports: https://github.com/broadinstitute/inferCNV/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 121

Run `revdep_details(,"infercnv")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘HiddenMarkov:::makedensity’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .plot_cnv_references: no visible binding for global variable
      ‘infercnv_obj’
    Undefined global functions or variables:
      infercnv_obj
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
    Unknown package ‘R.methodsS3’ in Rd xrefs
    ```

# lidR

<details>

* Version: 3.0.2
* Source code: https://github.com/cran/lidR
* URL: https://github.com/Jean-Romain/lidR
* BugReports: https://github.com/Jean-Romain/lidR/issues
* Date/Publication: 2020-07-05 04:50:29 UTC
* Number of recursive dependencies: 154

Run `revdep_details(,"lidR")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        libs   4.1Mb
    ```

# lmtp

<details>

* Version: 0.0.5
* Source code: https://github.com/cran/lmtp
* Date/Publication: 2020-07-18 09:10:02 UTC
* Number of recursive dependencies: 77

Run `revdep_details(,"lmtp")` for more info

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
* Source code: https://github.com/cran/merTools
* BugReports: https://www.github.com/jknowles/merTools
* Date/Publication: 2020-06-23 10:30:12 UTC
* Number of recursive dependencies: 147

Run `revdep_details(,"merTools")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rstanarm’
    ```

# methyvim

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/methyvim
* URL: https://github.com/nhejazi/methyvim
* BugReports: https://github.com/nhejazi/methyvim/issues
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 204

Run `revdep_details(,"methyvim")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      > library(testthat)
      > library(methyvim)
      Setting options('download.file.method.GEOquery'='auto')
      Setting options('GEOquery.inmemory.gpl'=FALSE)
      methyvim v1.10.0: Targeted, Robust, and Model-free Differential Methylation Analysis
      > 
      > set.seed(43719)
      > test_check("methyvim")
      ── 1. Error: (unknown) (@test-methyvim.R#22)  ──────────────────────────────────
      'names' attribute [8] must be the same length as the vector [1]
      Backtrace:
       1. base::suppressWarnings(...)
       3. methyvim::methyvim(...)
       5. base::`colnames<-`(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 34 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: (unknown) (@test-methyvim.R#22) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘tmle.npvi’
    ```

# MineICA

<details>

* Version: 1.28.0
* Source code: https://github.com/cran/MineICA
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 202

Run `revdep_details(,"MineICA")` for more info

</details>

## In both

*   checking running R code from vignettes ...
    ```
      ‘MineICA.Rnw’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘MineICA.Rnw’
      ...
    
    > resPath(params)
    [1] "mainz/"
    
    > resW <- writeProjByComp(icaSet = icaSetMainz, params = params, 
    +     mart = mart, level = "genes", selCutoffWrite = 2.5)
    
      When sourcing ‘MineICA.R’:
    Error: task 1 failed - "Multiple cache results found"
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    ...
      could not find function "setClass"
    Warning: namespace ‘genefilter’ is not available and has been replaced
    by .GlobalEnv when processing object ‘<unknown>’
    Error in setMethod("orgPackageName", "character", function(x) { : 
      could not find function "setMethod"
    Warning: namespace ‘GSEABase’ is not available and has been replaced
    by .GlobalEnv when processing object ‘<unknown>’
    Error in setMethod("orgPackageName", "character", function(x) { : 
      could not find function "setMethod"
    Warning: namespace ‘Category’ is not available and has been replaced
    by .GlobalEnv when processing object ‘<unknown>’
    Error in setClass("rowROC", representation(data = "matrix", ranks = "matrix",  : 
      could not find function "setClass"
    Warning: namespace ‘genefilter’ is not available and has been replaced
    by .GlobalEnv when processing object ‘<unknown>’
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
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

# onemapsgapi

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/onemapsgapi
* Date/Publication: 2020-02-06 11:00:02 UTC
* Number of recursive dependencies: 57

Run `revdep_details(,"onemapsgapi")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘sf’
    ```

# origami

<details>

* Version: 1.0.3
* Source code: https://github.com/cran/origami
* URL: https://tlverse.org/origami
* BugReports: https://github.com/tlverse/origami/issues
* Date/Publication: 2020-01-16 22:40:02 UTC
* Number of recursive dependencies: 82

Run `revdep_details(,"origami")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘glmnet’ in Rd xrefs
    ```

# PCRedux

<details>

* Version: 1.0-6
* Source code: https://github.com/cran/PCRedux
* URL: https://CRAN.R-project.org/package=PCRedux
* BugReports: https://github.com/PCRuniversum/PCRedux/issues
* Date/Publication: 2020-03-06 08:10:02 UTC
* Number of recursive dependencies: 117

Run `revdep_details(,"PCRedux")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘FFTrees’
    ```

# phylolm

<details>

* Version: 2.6.2
* Source code: https://github.com/cran/phylolm
* URL: https://github.com/lamho86/phylolm
* BugReports: https://github.com/lamho86/phylolm/issues
* Date/Publication: 2020-06-22 05:10:08 UTC
* Number of recursive dependencies: 33

Run `revdep_details(,"phylolm")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown packages ‘geiger’, ‘caper’ in Rd xrefs
    ```

# prewas

<details>

* Version: 1.1.0
* Source code: https://github.com/cran/prewas
* URL: http://github.com/Snitkin-Lab-Umich/prewas
* BugReports: http://github.com/Snitkin-Lab-Umich/prewas/issues
* Date/Publication: 2020-03-21 17:10:06 UTC
* Number of recursive dependencies: 53

Run `revdep_details(,"prewas")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘vcfR’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# promises

<details>

* Version: 1.1.1
* Source code: https://github.com/cran/promises
* URL: https://rstudio.github.io/promises, https://github.com/rstudio/promises
* BugReports: https://github.com/rstudio/promises/issues
* Date/Publication: 2020-06-09 21:50:02 UTC
* Number of recursive dependencies: 44

Run `revdep_details(,"promises")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘purrr’ in Rd xrefs
    ```

# Prostar

<details>

* Version: 1.20.0
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2020-04-27
* Number of recursive dependencies: 281

Run `revdep_details(,"Prostar")` for more info

</details>

## In both

*   checking whether package ‘Prostar’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/Prostar/new/Prostar.Rcheck/00install.out’ for details.
    ```

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in getFromNamespace(".initial", "GOSemSim") : 
      could not find function "getFromNamespace"
    In addition: Warning message:
    no DISPLAY variable so Tk is not available 
    Error: package or namespace load failed for ‘Prostar’:
     unable to load R code in package ‘enrichplot’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in getFromNamespace(".initial", "GOSemSim") : 
      could not find function "getFromNamespace"
    Error: unable to load R code in package ‘enrichplot’
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
    Error in getFromNamespace(".initial", "GOSemSim") : 
      could not find function "getFromNamespace"
    Error: unable to load R code in package ‘enrichplot’
    Execution halted
    ```

# QDNAseq

<details>

* Version: 1.24.0
* Source code: https://github.com/cran/QDNAseq
* URL: https://github.com/ccagc/QDNAseq
* BugReports: https://github.com/ccagc/QDNAseq/issues
* Date/Publication: 2020-04-27
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

* Version: 2.4.0
* Source code: https://github.com/cran/qgcomp
* Date/Publication: 2020-07-01 12:00:02 UTC
* Number of recursive dependencies: 128

Run `revdep_details(,"qgcomp")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘markdown’
      All declared Imports should be used.
    ```

# qtl2pleio

<details>

* Version: 1.3.0
* Source code: https://github.com/cran/qtl2pleio
* URL: https://github.com/fboehm/qtl2pleio
* BugReports: https://github.com/fboehm/qtl2pleio/issues
* Date/Publication: 2020-06-30 19:00:02 UTC
* Number of recursive dependencies: 116

Run `revdep_details(,"qtl2pleio")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.5Mb
      sub-directories of 1Mb or more:
        libs   7.4Mb
    ```

# regmedint

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/regmedint
* URL: https://kaz-yos.github.io/regmedint/
* BugReports: https://github.com/kaz-yos/regmedint/issues
* Date/Publication: 2020-05-11 11:00:02 UTC
* Number of recursive dependencies: 105

Run `revdep_details(,"regmedint")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Deriv’
      All declared Imports should be used.
    ```

# reproducible

<details>

* Version: 1.1.1
* Source code: https://github.com/cran/reproducible
* URL: https://reproducible.predictiveecology.org, https://github.com/PredictiveEcology/reproducible
* BugReports: https://github.com/PredictiveEcology/reproducible/issues
* Date/Publication: 2020-05-20 05:10:05 UTC
* Number of recursive dependencies: 123

Run `revdep_details(,"reproducible")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
        objectNames hashElements             hash objSize
      1        file         file fc0a3b61a65f0bf1     168
      2        .FUN         .FUN 7a8f2865ef4bc06d    1256
        functionName        component elapsedTime units
      1      readRDS          Hashing 0.002385616  secs
      2      readRDS  Running readRDS 0.001090288  secs
      3      readRDS   Saving to repo 0.517618179  secs
      4      readRDS Whole Cache call 0.554520607  secs
        objectNames hashElements             hash objSize
      1        file         file fc0a3b61a65f0bf1   24122
      2        .FUN         .FUN 7a8f2865ef4bc06d    1256
        functionName         component elapsedTime units
      1      readRDS           Hashing 0.002856731  secs
      2      readRDS Loading from repo 0.001125813  secs
      3      readRDS  Whole Cache call 0.078192234  secs
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 380 | SKIPPED: 71 | WARNINGS: 3 | FAILED: 1 ]
      1. Error: git-related functions work (@test-git.R#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘usethis’
      All declared Imports should be used.
    ```

# robotstxt

<details>

* Version: 0.7.8
* Source code: https://github.com/cran/robotstxt
* URL: https://docs.ropensci.org/robotstxt, https://github.com/ropensci/robotstxt
* BugReports: https://github.com/ropensci/robotstxt/issues
* Date/Publication: 2020-07-25 21:30:08 UTC
* Number of recursive dependencies: 62

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

* Version: 0.1.0
* Source code: https://github.com/cran/sapfluxnetr
* URL: https://github.com/sapfluxnet/sapfluxnetr
* BugReports: https://github.com/sapfluxnet/sapfluxnetr/issues
* Date/Publication: 2020-05-11 12:50:07 UTC
* Number of recursive dependencies: 72

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
* Number of recursive dependencies: 84

Run `revdep_details(,"SCtools")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 27 marked UTF-8 strings
    ```

# seer

<details>

* Version: 1.1.5
* Source code: https://github.com/cran/seer
* Date/Publication: 2020-06-08 05:00:02 UTC
* Number of recursive dependencies: 106

Run `revdep_details(,"seer")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘MASS’
      All declared Imports should be used.
    ```

# Seurat

<details>

* Version: 3.2.0
* Source code: https://github.com/cran/Seurat
* URL: http://www.satijalab.org/seurat, https://github.com/satijalab/seurat
* BugReports: https://github.com/satijalab/seurat/issues
* Date/Publication: 2020-07-16 04:30:12 UTC
* Number of recursive dependencies: 223

Run `revdep_details(,"Seurat")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘loomR’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘loomR’ in Rd xrefs
    ```

# shinyrecap

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/shinyrecap
* URL: https://fellstat.github.io/shinyrecap/
* Date/Publication: 2019-01-19 23:40:03 UTC
* Number of recursive dependencies: 87

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

# simhelpers

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/simhelpers
* URL: https://meghapsimatrix.github.io/simhelpers/index.html
* BugReports: https://github.com/meghapsimatrix/simhelpers/issues
* Date/Publication: 2020-03-31 15:00:06 UTC
* Number of recursive dependencies: 97

Run `revdep_details(,"simhelpers")` for more info

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
* Source code: https://github.com/cran/skpr
* URL: https://github.com/tylermorganwall/skpr
* BugReports: https://github.com/tylermorganwall/skpr/issues
* Date/Publication: 2020-03-04 20:20:02 UTC
* Number of recursive dependencies: 131

Run `revdep_details(,"skpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.5Mb
      sub-directories of 1Mb or more:
        libs  13.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘nlme’
      All declared Imports should be used.
    ```

# solitude

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/solitude
* URL: https://github.com/talegari/solitude
* BugReports: https://github.com/talegari/solitude/issues
* Date/Publication: 2020-07-07 09:20:02 UTC
* Number of recursive dependencies: 130

Run `revdep_details(,"solitude")` for more info

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
* Source code: https://github.com/cran/spacey
* URL: https://github.com/mikemahoney218/spacey, https://mikemahoney218.github.io/spacey/
* BugReports: https://github.com/mikemahoney218/spacey/issues
* Date/Publication: 2020-03-14 18:50:02 UTC
* Number of recursive dependencies: 87

Run `revdep_details(,"spacey")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgdal’
      All declared Imports should be used.
    ```

# SpaDES.core

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/SpaDES.core
* URL: https://spades-core.predictiveecology.org/, https://github.com/PredictiveEcology/SpaDES.core
* BugReports: https://github.com/PredictiveEcology/SpaDES.core/issues
* Date/Publication: 2020-05-15 17:10:06 UTC
* Number of recursive dependencies: 156

Run `revdep_details(,"SpaDES.core")` for more info

</details>

## In both

*   R CMD check timed out
    

# spatialwarnings

<details>

* Version: 2.0.0
* Source code: https://github.com/cran/spatialwarnings
* URL: https://github.com/spatial-ews/spatialwarnings
* Date/Publication: 2020-05-14 17:10:06 UTC
* Number of recursive dependencies: 77

Run `revdep_details(,"spatialwarnings")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyr’
      All declared Imports should be used.
    ```

# stars

<details>

* Version: 0.4-3
* Source code: https://github.com/cran/stars
* URL: https://r-spatial.github.io/stars/, https://github.com/r-spatial/stars/
* BugReports: https://github.com/r-spatial/stars/issues/
* Date/Publication: 2020-07-08 11:20:03 UTC
* Number of recursive dependencies: 129

Run `revdep_details(,"stars")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'exactextractr', 'starsdata'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘exactextractr’
    ```

# startR

<details>

* Version: 0.0.1
* Source code: https://github.com/cran/startR
* URL: https://earth.bsc.es/gitlab/es/startR/
* BugReports: https://earth.bsc.es/gitlab/es/startR/issues
* Date/Publication: 2017-04-22 04:26:58 UTC
* Number of recursive dependencies: 35

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

* Version: 1.1.1
* Source code: https://github.com/cran/tableschema.r
* URL: https://github.com/frictionlessdata/tableschema-r
* BugReports: https://github.com/frictionlessdata/tableschema-r/issues
* Date/Publication: 2020-03-12 12:40:02 UTC
* Number of recursive dependencies: 57

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

* Version: 0.1.6
* Source code: https://github.com/cran/TSstudio
* URL: https://github.com/RamiKrispin/TSstudio
* BugReports: https://github.com/RamiKrispin/TSstudio/issues
* Date/Publication: 2020-01-21 05:30:02 UTC
* Number of recursive dependencies: 135

Run `revdep_details(,"TSstudio")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Failed to query server: Connection timed out
    Namespace in Imports field not imported from: ‘forecastHybrid’
      All declared Imports should be used.
    ```

