# aroma.affymetrix

Version: 3.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.0Mb
      sub-directories of 1Mb or more:
        R             8.4Mb
        help          1.1Mb
        testScripts   1.3Mb
    ```

# aroma.core

Version: 3.1.2

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      ‘sfit’ ‘expectile’ ‘HaarSeg’ ‘mpcbs’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.9Mb
      sub-directories of 1Mb or more:
        R   4.8Mb
    ```

# batchtools

Version: 0.9.8

## In both

*   checking examples ... ERROR
    ```
    ...
    37:    370    iris      ncol 24 e  500.0053 secs
    38:    378    iris      ncol 26 c  500.0133 secs
    39:    388    iris      ncol 28 c  500.0011 secs
    40:    402    iris      ncol 31 b 1500.0011 secs
    41:    411    iris      ncol 33 a 1500.0010 secs
    42:    419    iris      ncol 34 d  500.0010 secs
    43:    432    iris      ncol 37 b 1500.0010 secs
    44:    434    iris      ncol 37 d  500.0009 secs
    45:    436    iris      ncol 38 a 1500.0010 secs
    46:    438    iris      ncol 38 c  500.0009 secs
    47:    447    iris      ncol 40 b 1500.0010 secs
    48:    451    iris      ncol 41 a 1500.0010 secs
    49:    454    iris      ncol 41 d  500.0010 secs
    50:    497    iris      ncol 50 b 1500.0009 secs
        job.id problem algorithm  x y   time.running
    > 
    > # Estimate runtimes:
    > est = estimateRuntimes(tab, reg = tmp)
    Error in estimateRuntimes(tab, reg = tmp) : 
      Please install package 'ranger' for runtime estimation
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Loading required package: data.table
      Breaking change introduced in batchtools v0.9.6: The format of the returned data.table of the functions `reduceResultsDataTable()`, getJobTable()`, `getJobPars()`, and `getJobResources()` has changed. List columns are not unnested automatically anymore. To manually unnest tables, batchtools provides the helper function `unwrap()` now, e.g. `unwrap(getJobPars())`. The previously introduced helper function `flatten()` will be deprecated due to a name clash with `purrr::flatten()`.
      > 
      > test_check("batchtools")
      ── 1. Error: estimateRuntimes (@test_estimateRuntimes.R#23)  ───────────────────
      Please install package 'ranger' for runtime estimation
      1: estimateRuntimes(tab, reg = reg) at testthat/test_estimateRuntimes.R:23
      2: stop("Please install package 'ranger' for runtime estimation") at /home/hb/repositories/future/revdep/checks/batchtools/new/batchtools.Rcheck/00_pkg_src/batchtools/R/estimateRuntimes.R:87
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 1376 SKIPPED: 13 FAILED: 1
      1. Error: estimateRuntimes (@test_estimateRuntimes.R#23) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking top-level files ... WARNING
    ```
    Conversion of ‘README.md’ failed:
    pandoc: Could not fetch http://www.r-pkg.org/badges/version/batchtools
    TlsExceptionHostPort (HandshakeFailed Error_EOF) "www.r-pkg.org" 80
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    No configuration file found
    Created registry in '/tmp/RtmpgwMSUY/registry2fb635c207e7' using cluster functions 'Interactive'
    Quitting from lines 44-46 (batchtools.Rmd) 
    Error: processing vignette 'batchtools.Rmd' failed with diagnostics:
    there is no package called 'snow'
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Michel Lang <michellang@gmail.com>’
    
    Uses the superseded package: ‘snow’
    
    This build time stamp is over a month old.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘future.batchtools’
    ```

# biotmle

Version: 1.3.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'exposureBiomarkers.Rmd' failed with diagnostics:
    there is no package called ‘BiocStyle’
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Nima Hejazi <nhejazi@berkeley.edu>’
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    This build time stamp is over a month old.
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    Author field differs from that derived from Authors@R
      Author:    ‘Nima Hejazi [aut, cre, cph], Alan Hubbard [aut], Weixin Cai [ctb]’
      Authors@R: ‘Nima Hejazi [aut, cre, cph] (<https://orcid.org/0000-0002-7127-2789>), Alan Hubbard [aut] (<https://orcid.org/0000-0002-3769-0127>), Weixin Cai [ctb] (<https://orcid.org/0000-0003-2680-3066>)’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DBI’ ‘Matrix’ ‘SuperLearner’ ‘biotmleData’
      All declared Imports should be used.
    ```

# civis

Version: 1.3.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 308 SKIPPED: 0 FAILED: 15
      1. Error: (unknown) (@test-DBI.R#3) 
      2. Error: await calls f until terminal status (@test_await.R#21) 
      3. Error: await_all calls f until completion (@test_await.R#169) 
      4. Error: (unknown) (@test_civis_future.R#4) 
      5. Error: (unknown) (@test_civis_ml.R#1) 
      6. Error: (unknown) (@test_civis_ml_workflows.R#2) 
      7. Error: no retry on GET/PUT and code 403 (@test_client_base.R#116) 
      8. Error: retry on GET/PUT and 429 (@test_client_base.R#127) 
      9. Error: write_civis.numeric calls imports_post_syncs correctly (@test_io.R#161) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking top-level files ... WARNING
    ```
    Conversion of ‘README.md’ failed:
    pandoc: Could not fetch http://www.r-pkg.org/badges/version/civis
    TlsExceptionHostPort (HandshakeFailed Error_EOF) "www.r-pkg.org" 80
    ```

# codebook

Version: 0.5.8

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Ruben Arslan <ruben.arslan@gmail.com>’
    
    This build time stamp is over a month old.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘graphics’ ‘pander’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘labelled’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 65 marked UTF-8 strings
    ```

# doFuture

Version: 0.6.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    This build time stamp is over a month old.
    ```

# drake

Version: 5.1.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 17-25 (example-gsp.Rmd) 
    Error: processing vignette 'example-gsp.Rmd' failed with diagnostics:
    there is no package called 'Ecdat'
    Execution halted
    ```

# drtmle

Version: 1.0.2

## In both

*   checking examples ... ERROR
    ```
    ...
    Super Learner
    Version: 2.0-23
    Package created on 2018-03-09
    
    > # simulate data
    > set.seed(123456)
    > n <- 100
    > W <- data.frame(W1 = runif(n), W2 = rnorm(n))
    > A <- rbinom(n,1,plogis(W$W1 - W$W2))
    > Y <- rbinom(n, 1, plogis(W$W1*W$W2*A))
    > # fit iptw with maxIter = 1 to run fast
    > fit1 <- adaptive_iptw(W = W, A = A, Y = Y, a_0 = c(1,0),
    +                SL_g=c("SL.glm","SL.mean","SL.step"),
    +                SL_Qr="SL.npreg", maxIter = 1)
    Warning: The implementation of future_lapply() in the 'future' package has been deprecated. Please use the one in the 'future.apply' package instead.
    Loading required package: nloptr
    Warning in library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
      there is no package called ‘nloptr’
    Error in loadNamespace(name) : there is no package called ‘nloptr’
    Calls: adaptive_iptw ... values.list -> value -> value.Future -> resignalCondition
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 447 SKIPPED: 0 FAILED: 9
      1. Error: ci.adaptive_iptw works as expected (@test-confint.R#89) 
      2. Error: drtmle executes as expected with cvtmle and stratify = TRUE (@test-cvtmle.R#68) 
      3. Error: drtmle executes as expected with cv and stratify = FALSE (@test-cvtmle.R#228) 
      4. Error: drtmle executes as expected with stratify = TRUE (@test-drtmle-missingAY.R#79) 
      5. Error: drtmle executes as expected with stratify = FALSE (@test-drtmle-missingAY.R#238) 
      6. Error: drtmle executes as expected with stratify = TRUE (@test-drtmle.R#98) 
      7. Error: drtmle executes as expected with stratify = FALSE (@test-drtmle.R#253) 
      8. Error: drtmle executes when glm and SL are specified (@test-edge.R#49) 
      9. Error: wald_test.adaptive_iptw works as expected (@test-tests.R#87) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    drtmle: TMLE with doubly robust inference
    Version: 1.0.2
    Loading required package: nnls
    Super Learner
    Version: 2.0-23
    Package created on 2018-03-09
    
    Loading required package: nloptr
    Quitting from lines 492-499 (using_drtmle.Rmd) 
    Error: processing vignette 'using_drtmle.Rmd' failed with diagnostics:
    there is no package called 'nloptr'
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘David Benkeser <benkeser@emory.edu>’
    
    This build time stamp is over a month old.
    ```

# fiery

Version: 1.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
             onWSOpen = private$websocket_logic)) at /home/hb/repositories/future/revdep/checks/fiery/new/fiery.Rcheck/00_pkg_src/fiery/R/Fire.R:498
      10: stop("Failed to create server") at /tmp/RtmpN2tBnt/R.INSTALL699a3a56349c/httpuv/R/httpuv.R:426
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 238 SKIPPED: 0 FAILED: 7
      1. Error: life cycle events get fired (@test-Fire.R#168) 
      2. Error: errors in start and resume gets caught (@test-Fire.R#288) 
      3. Error: futures can be added and called (@test-Fire.R#317) 
      4. Error: ignite is blocked during run (@test-Fire.R#404) 
      5. Error: external triggers are fired (@test-Fire.R#424) 
      6. Error: showcase opens a browser (@test-Fire.R#453) 
      7. Error: is_running works (@test-Fire.R#529) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking top-level files ... WARNING
    ```
    Conversion of ‘README.md’ failed:
    pandoc: Could not fetch http://www.r-pkg.org/badges/version-ago/fiery
    TlsExceptionHostPort (HandshakeFailed Error_EOF) "www.r-pkg.org" 80
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Thomas Lin Pedersen <thomasp85@gmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘desc’
      All declared Imports should be used.
    ```

# future.apply

Version: 0.1.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    This build time stamp is over a month old.
    ```

# future.BatchJobs

Version: 0.15.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    This build time stamp is over a month old.
    ```

# future.batchtools

Version: 0.6.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    This build time stamp is over a month old.
    ```

# future.callr

Version: 0.2.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/demo.R’ failed.
    Last 13 lines of output:
      Plotting tile #7 of 9 ...
      
      > ## Plot remaining tiles
      > repeat {
      +   counts <- plot_what_is_done(counts)
      +   if (!any(sapply(counts, FUN = inherits, "Future"))) break
      + }
      Plotting tile #9 of 9 ...
      callr::wait() ...
      - status(): 'done'
      callr::wait() ... done
      Results:
      Future state: 'failed'
      Error: callr failed, could not start R, or it has crashed or was killed 
      Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    This build time stamp is over a month old.
    ```

# googleComputeEngineR

Version: 0.2.0

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Mark Edmondson <r@sunholo.com>’
    
    This build time stamp is over a month old.
    ```

# kernelboot

Version: 0.1.4

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Tymoteusz Wolodzko <twolodzko+kernelboot@gmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# lidR

Version: 1.4.2

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘lidR-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: grid_hexametrics
    > ### Title: Compute metrics for hexagonal cells
    > ### Aliases: grid_hexametrics
    > 
    > ### ** Examples
    > 
    > LASfile <- system.file("extdata", "Megaplot.laz", package="lidR")
    > lidar = readLAS(LASfile)
    > 
    > # Maximum elevation with a resolution of 4 m
    > grid_hexametrics(lidar, max(Z), 4) %>% plot
    Error: 'hexbin' package is needed for this function to work. Please install it.
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("lidR")
      ── 1. Error: grid_hexametrics space hexa properly (@test-grid_hexametrics.R#6)  
      'hexbin' package is needed for this function to work. Please install it.
      1: grid_hexametrics(las, mean(Z), 20) at testthat/test-grid_hexametrics.R:6
      2: lasaggregate(.las, by = "HEXA", call, res, NA, c("X", "Y"), splitlines, debug) at /home/hb/repositories/future/revdep/checks/lidR/new/lidR.Rcheck/00_pkg_src/lidR/R/grid_hexametrics.r:80
      3: stop("'hexbin' package is needed for this function to work. Please install it.", 
             call. = F) at /home/hb/repositories/future/revdep/checks/lidR/new/lidR.Rcheck/00_pkg_src/lidR/R/lasaggreagte.r:38
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 629 SKIPPED: 0 FAILED: 1
      1. Error: grid_hexametrics space hexa properly (@test-grid_hexametrics.R#6) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking top-level files ... WARNING
    ```
    Conversion of ‘README.md’ failed:
    pandoc: Could not fetch https://img.shields.io/badge/CRAN-1.4.1-brightgreen.svg
    TlsExceptionHostPort (HandshakeFailed Error_EOF) "img.shields.io" 443
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        R      1.4Mb
        libs   5.2Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘memoise’
      All declared Imports should be used.
    ```

# MetamapsDB

Version: 0.0.2

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Wesley GOI <wesley@bic.nus.edu.sg>’
    
    This build time stamp is over a month old.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘shiny’
      All declared Imports should be used.
    ```

# methyvim

Version: 1.0.0

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘bumphunter’ ‘minfi’
    
    Packages suggested but not available for checking:
      ‘earth’ ‘arm’ ‘minfiData’ ‘methyvimData’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Nima Hejazi <nhejazi@berkeley.edu>’
    
    Uses the superseded package: ‘snow’
    
    Found the following (possibly) invalid URLs:
      URL: https://cran.r-project.org/web/packages/drtmle/index.html
        From: inst/doc/using_methyvim.html
        CRAN URL not in canonical form
      URL: https://cran.r-project.org/web/packages/randomForest/index.html
        From: inst/doc/using_methyvim.html
        CRAN URL not in canonical form
      The canonical URL of the CRAN page for a package is 
        https://CRAN.R-project.org/package=pkgname
    
    The Description field should not start with the package name,
      'This package' or similar.
    
    This build time stamp is over a month old.
    ```

# origami

Version: 1.0.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      origami: Generalized Cross-Validation Framework
      Version: 1.0.0
      > library(data.table)
      > test_check("origami")
      ── 1. Error: (unknown) (@test-overall_timeseries.R#1)  ─────────────────────────
      there is no package called 'forecast'
      1: library(forecast) at testthat/test-overall_timeseries.R:1
      2: stop(txt, domain = NA)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 62 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test-overall_timeseries.R#1) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 253-258 (generalizedCV.Rmd) 
    Error: processing vignette 'generalizedCV.Rmd' failed with diagnostics:
    there is no package called 'randomForest'
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Jeremy Coyle <jeremyrcoyle@gmail.com>’
    
    This build time stamp is over a month old.
    ```

# pbmcapply

Version: 1.2.4

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Kevin kuang <kvn.kuang@mail.utoronto.ca>’
    
    This build time stamp is over a month old.
    ```

# penaltyLearning

Version: 2017.12.08

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘penaltyLearning-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: featureMatrix
    > ### Title: featureMatrix
    > ### Aliases: featureMatrix
    > 
    > ### ** Examples
    > 
    > 
    > data(neuroblastoma, package="neuroblastoma", envir=environment())
    Error in find.package(package, lib.loc, verbose = verbose) : 
      there is no package called ‘neuroblastoma’
    Calls: data -> find.package
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Failed with error:  'there is no package called 'directlabels''
      Failed with error:  'there is no package called 'directlabels''
      Failed with error:  'there is no package called 'directlabels''
      ── 1. Error: (unknown) (@test-features.R#4)  ───────────────────────────────────
      there is no package called 'neuroblastoma'
      1: data(neuroblastoma, package = "neuroblastoma") at testthat/test-features.R:4
      2: find.package(package, lib.loc, verbose = verbose)
      3: stop(gettextf("there is no package called %s", sQuote(pkg)), domain = NA)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 68 SKIPPED: 0 FAILED: 1
      1. Error: (unknown) (@test-features.R#4) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Toby Dylan Hocking <toby.hocking@r-project.org>’
    
    Version contains leading zeroes (2017.12.08)
    Version contains large components (2017.12.08)
    
    This build time stamp is over a month old.
    ```

# promises

Version: 1.0.1

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘purrr’
    ```

# PSCBS

Version: 0.63.0

## In both

*   checking examples ... ERROR
    ```
    ...
    > print(fit)
      chromosome tcnId dhId     start       end tcnNbrOfLoci tcnMean tcnNbrOfSNPs
    1          1     1    1    554484 143663981         1880  1.3916          778
    2          1     2    1 143663981 185240536          671  2.0925          275
    3          1     3    1 185240536 246679946         1111  2.6545          417
      tcnNbrOfHets dhNbrOfLoci    dhMean    c1Mean    c2Mean
    1          778         778 0.4009957 0.4167872 0.9748128
    2          275         275 0.2344486 0.8009582 1.2915418
    3          417         417 0.2819897 0.9529792 1.7015208
    > 
    > 
    > # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    > # Calling segments in allelic balance (AB)
    > # NOTE: Ideally, this should be done on whole-genome data
    > # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    > # Explicitly estimate the threshold in DH for calling AB
    > # (which be done by default by the caller, if skipped here)
    > deltaAB <- estimateDeltaAB(fit, flavor="qq(DH)", verbose=verbose)
    Error in loadNamespace(name) : there is no package called ‘Hmisc’
    Calls: estimateDeltaAB ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/segmentByNonPairedPSCBS,medianDH.R’ failed.
    Last 13 lines of output:
      > # Explicitly estimate the threshold in DH for calling AB
      > # (which be done by default by the caller, if skipped here)
      > deltaAB <- estimateDeltaAB(fit, flavor="qq(DH)", verbose=-10)
      Estimating DH threshold for calling allelic imbalances...
       flavor: qq(DH)
       scale: 1
       Estimating DH threshold for AB caller...
        quantile #1: 0.05
        Symmetric quantile #2: 0.9
        Number of segments: 6
      Error in loadNamespace(name) : there is no package called 'Hmisc'
      Calls: estimateDeltaAB ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
       Estimating DH threshold for AB caller...done
      Estimating DH threshold for calling allelic imbalances...done
      Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Henrik Bengtsson <henrikb@braju.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.9Mb
      sub-directories of 1Mb or more:
        R         3.0Mb
        data-ex   2.6Mb
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
       Number of SNPs: 2755
      Calling ROH for a single segment...done
     Segment #9 of 11...done
     Segment #10 of 11...
      Calling ROH for a single segment...
       Number of SNPs: 14
      Calling ROH for a single segment...done
     Segment #10 of 11...done
     Segment #11 of 11...
      Calling ROH for a single segment...
       Number of SNPs: 15581
      Calling ROH for a single segment...done
     Segment #11 of 11...done
     ROH calls:
      logi [1:11] FALSE FALSE FALSE TRUE FALSE NA ...
        Mode   FALSE    TRUE    NA's 
     logical       9       1       1 
    Calling ROH...done
    Error: processing vignette 'PairedPSCBS.tex.rsp' failed with diagnostics:
    there is no package called ‘Hmisc’
    Execution halted
    ```

# QDNAseq

Version: 1.14.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘exportVCF’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Daoud Sie <d.sie@vumc.nl>’
    
    The Title field should be in title case, current version then in title case:
    ‘Quantitative DNA sequencing for chromosomal aberrations’
    ‘Quantitative DNA Sequencing for Chromosomal Aberrations’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error in re-building vignettes:
      ...
    
    Error: processing vignette 'QDNAseq.Rnw' failed with diagnostics:
     chunk 1 (label = style-Sweave) 
    Error in loadNamespace(name) : there is no package called ‘BiocStyle’
    Execution halted
    ```

# robotstxt

Version: 0.6.0

## In both

*   checking top-level files ... WARNING
    ```
    Conversion of ‘README.md’ failed:
    pandoc: Could not fetch http://www.r-pkg.org/badges/version/robotstxt
    TlsExceptionHostPort (HandshakeFailed Error_EOF) "www.r-pkg.org" 80
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    
     google.com                      
    
    
     google.com                      
    
    Quitting from lines 60-62 (using_robotstxt.Rmd) 
    Error: processing vignette 'using_robotstxt.Rmd' failed with diagnostics:
    there is no package called 'dplyr'
    Execution halted
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Peter Meissner <retep.meissner@gmail.com>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# sperrorest

Version: 2.1.5

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      3: asNamespace(ns)
      4: getNamespace(ns)
      5: tryCatch(loadNamespace(name), error = function(e) stop(e))
      6: tryCatchList(expr, classes, parentenv, handlers)
      7: tryCatchOne(expr, names, parentenv, handlers[[1L]])
      8: value[[3L]](cond)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      OK: 0 SKIPPED: 17 FAILED: 3
      1. Error: (unknown) (@test-processing.R#3) 
      2. Error: (unknown) (@test-sperrorest-summary.R#5) 
      3. Error: (unknown) (@test-sperrorest.R#5) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking top-level files ... WARNING
    ```
    Conversion of ‘README.md’ failed:
    pandoc: Could not fetch http://www.r-pkg.org/badges/version/sperrorest
    TlsExceptionHostPort (HandshakeFailed Error_EOF) "www.r-pkg.org" 80
    ```

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Alexander Brenning <alexander.brenning@uni-jena.de>’
    
    The Date field is over a month old.
    
    This build time stamp is over a month old.
    ```

# startR

Version: 0.0.1

## In both

*   checking CRAN incoming feasibility ... NOTE
    ```
    Maintainer: ‘Nicolau Manubens <nicolau.manubens@bsc.es>’
    
    This build time stamp is over a month old.
    ```

