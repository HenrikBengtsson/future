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
    [[2884,1],0]: A high-performance Open MPI point-to-point messaging module
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

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘bcmapsdata’
    ```

# biotmle

<details>

* Version: 1.14.0
* GitHub: https://github.com/nhejazi/biotmle
* Source code: https://github.com/cran/biotmle
* Date/Publication: 2020-10-27
* Number of recursive dependencies: 163

Run `revdep_details(, "biotmle")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    +   DataFrame()
    > benz_idx <- which(names(colData(illuminaData)) %in% "benzene")
    > 
    > biomarkerTMLEout <- biomarkertmle(
    +   se = illuminaData[1:2, ],
    +   varInt = benz_idx,
    +   parallel = FALSE,
    +   g_lib = c("SL.mean", "SL.glm"),
    +   Q_lib = c("SL.bayesglm", "SL.glm")
    + )
    Warning: The `x` argument of `as_tibble.matrix()` must have unique column names if `.name_repair` is omitted as of tibble 2.0.0.
    Using compatibility `.name_repair`.
    This warning is displayed once every 8 hours.
    Call `lifecycle::last_warnings()` to see where this warning was generated.
    Note: Sequential evaluation over many probes may take a long time.
    Timing stopped at: 0.002 0.001 0.003
    Warning in value[[3L]](cond) : NAs introduced by coercion
    Error in updt[[as.integer(i)]] <- .error(msg) : 
      attempt to select more than one element in integerOneIndex
    Calls: biomarkertmle ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
    ...
          █
       1. └─biotmle::biomarkertmle(...) test-modtest_ic.R:15:0
       2.   ├─BiocParallel::bplapply(...)
       3.   └─BiocParallel::bplapply(...)
       4.     ├─BiocParallel::bplapply(X, FUN, ..., BPREDO = BPREDO, BPPARAM = BPPARAM)
       5.     └─BiocParallel::bplapply(X, FUN, ..., BPREDO = BPREDO, BPPARAM = BPPARAM)
       6.       └─base::tryCatch(...)
       7.         └─base:::tryCatchList(expr, classes, parentenv, handlers)
       8.           └─base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])
       9.             └─value[[3L]](cond)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test-biomarkertmle.R:15:1): (code run outside of `test_that()`)
      Warning (test-biomarkertmle.R:15:1): (code run outside of `test_that()`)
      ERROR (test-biomarkertmle.R:15:1): (code run outside of `test_that()`)
      Warning (test-modtest_ic.R:15:1): (code run outside of `test_that()`)
      ERROR (test-modtest_ic.R:15:1): (code run outside of `test_that()`)
      
      [ FAIL 2 | WARN 3 | SKIP 0 | PASS 5 ]
      Error: Test failures
      Execution halted
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

*   checking tests ...
    ```
    ...
        5. └─blavaan:::fitMeasures(fitjags)
        6.   └─blavaan:::.local(object, fit.measures, baseline.model, ...)
        7.     └─blavaan:::blav_fit_measures(...)
        8.       └─blavaan:::case_lls(...)
        9.         ├─base::t(do.call("future_sapply", loop.args))
       10.         ├─base::do.call("future_sapply", loop.args)
       11.         └─future.apply::future_sapply(...)
       12.           └─future.apply::future_lapply(X = X, FUN = FUN, ..., future.label = future.label)
       13.             └─future.apply:::future_xapply(...)
       14.               └─future.apply:::getGlobalsAndPackagesXApply(...)
       15.                 └─future::getGlobalsAndPackages(expr, envir = envir, globals = globals)
       16.                   ├─base::system.time(...)
       17.                   └─future:::assert_no_references(globals, action = action)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (???): blavaan arguments
      ERROR (tests.blavaanobject-methods.R:31:5): blavaan object methods work
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 32 ]
      Error: Test failures
      Execution halted
    ```

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

*   checking tests ...
    ```
    ...
        train test
      1   211   43
      2   207   47
      3   173   81
      4   209   45
      5   216   38
      ── Skip (testSpatialBlock.R:293:3): test spatialBlock failur: wrong user-defined
      Reason: On CRAN
      
      ── Skip (testSpatialBlock.R:307:3): test spatialBlock with no smaller mask raste
      Reason: On CRAN
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● On CRAN (8)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (testSpatialAutoRange.R:19:3): test spatialAutoRange function with multi-layer raster in parallel
      
      [ FAIL 1 | WARN 0 | SKIP 8 | PASS 193 ]
      Error: Test failures
      Execution halted
    ```

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

# codebook

<details>

* Version: 0.9.2
* GitHub: https://github.com/rubenarslan/codebook
* Source code: https://github.com/cran/codebook
* Date/Publication: 2020-06-06 23:40:03 UTC
* Number of recursive dependencies: 198

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

# crossmap

<details>

* Version: 0.2.0
* GitHub: https://github.com/rossellhayes/crossmap
* Source code: https://github.com/cran/crossmap
* Date/Publication: 2020-09-24 07:30:02 UTC
* Number of recursive dependencies: 60

Run `revdep_details(, "crossmap")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
        8.               └─future::ClusterFuture(...)
        9.                 └─future::getGlobalsAndPackages(...)
       10.                   ├─base::system.time(...)
       11.                   └─future:::assert_no_references(globals, action = action)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test-future_xmap.R:18:5): multisession - equivalence with xmap()
      ERROR (test-future_xmap.R:18:5): multisession - equivalence with xmap()
      ERROR (test-future_xmap.R:28:5): multisession - equivalence with vector xmap()s
      ERROR (test-future_xmap.R:53:5): multisession - equivalence with df xmap()s
      ERROR (test-future_xmap.R:69:5): multisession - equivalence with map_vec()
      ERROR (test-future_xmap.R:153:5): multisession - equivalence with xmap_mat()
      ERROR (test-future_xmap.R:193:5): multisession - named arguments can be passed through
      ERROR (test-future_xmap.R:209:5): multisession - arguments can be matched by name
      ERROR (test-future_xmap.R:222:5): multisession - unused components can be absorbed
      ERROR (test-future_xmap.R:239:5): multisession - Globals in .l are found (.l could be a fn)
      ERROR (test-future_xmap.R:260:7): multisession - Globals in .l are only exported to workers that use them
      
      [ FAIL 10 | WARN 1 | SKIP 0 | PASS 204 ]
      Error: Test failures
      Execution halted
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

# dhReg

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/dhReg
* Date/Publication: 2019-12-13 14:00:02 UTC
* Number of recursive dependencies: 71

Run `revdep_details(, "dhReg")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
       2. future::plan(multiprocess)
       3. future:::plan_set(...)
       4. future:::warn_about_multiprocess(newStack)
       5. base::.Deprecated(...)
      
      ── ERROR (???): summary of Dynamic harmonic regression model ───────────────────
      Error: Detected a non-exportable reference ('externalptr') in one of the globals (<unknown>) used in the future expression
      Backtrace:
       1. dhReg::dhr(...)
       2. future.apply::future_sapply(...)
       3. future.apply::future_lapply(X = X, FUN = FUN, ..., future.label = future.label)
       4. future.apply:::future_xapply(...)
       5. future.apply:::getGlobalsAndPackagesXApply(...)
       6. future::getGlobalsAndPackages(expr, envir = envir, globals = globals)
       8. future:::assert_no_references(globals, action = action)
      
      > 
      > M <- dhr(Data=Data_ts,XREG=NULL,Range=list(1:2,1),Frequency=c(24,168),Criteria="aicc")
      Error: Detected a non-exportable reference ('externalptr') in one of the globals (<unknown>) used in the future expression
      Timing stopped at: 0.041 0.002 0.043
      Execution halted
    ```

# disk.frame

<details>

* Version: 0.3.7
* GitHub: https://github.com/xiaodaigh/disk.frame
* Source code: https://github.com/cran/disk.frame
* Date/Publication: 2020-07-07 13:10:03 UTC
* Number of recursive dependencies: 110

Run `revdep_details(, "disk.frame")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘disk.frame-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: cmap2
    > ### Title: 'cmap2' a function to two disk.frames
    > ### Aliases: cmap2 map2 map_by_chunk_id
    > 
    > ### ** Examples
    > 
    > cars.df = as.disk.frame(cars)
    > 
    > cars2.df = cmap2(cars.df, cars.df, ~data.table::rbindlist(list(.x, .y)))
    Error: Detected a non-exportable reference (‘externalptr’) in one of the globals (<unknown>) used in the future expression
    Timing stopped at: 0.001 0.001 0.002
    Execution halted
    ```

# doFuture

<details>

* Version: 0.10.0
* GitHub: https://github.com/HenrikBengtsson/doFuture
* Source code: https://github.com/cran/doFuture
* Date/Publication: 2020-09-24 08:00:12 UTC
* Number of recursive dependencies: 18

Run `revdep_details(, "doFuture")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      [19:44:18.085] - force: FALSE
      [19:44:18.085] - relayed: [n=1] TRUE
      [19:44:18.085] - queued futures: [n=1] TRUE
       - flush all
      [19:44:18.086] - relayed: [n=1] TRUE
      [19:44:18.086] - queued futures: [n=1] TRUE
      [19:44:18.087] signalConditionsASAP(NULL, pos=0) ... done
      [19:44:18.087] resolve() on list ... DONE
      [19:44:18.087] - collecting values of futures
      [19:44:18.088] signalConditions() ...
      [19:44:18.088]  - include = 'immediateCondition'
      [19:44:18.088]  - exclude = 
      [19:44:18.089]  - resignal = FALSE
      [19:44:18.089]  - Number of conditions: 12
      [19:44:18.090] signalConditions() ... done
      [19:44:18.090] - accumulating results
      [19:44:18.091] - processing errors (handler = 'stop')
      Error in { : 
        task 1 failed - "Detected a non-exportable reference ('externalptr') in one of the globals (<unknown>) used in the future expression"
      Calls: %dopar% -> <Anonymous>
      Execution halted
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

# drake

<details>

* Version: 7.12.7
* GitHub: https://github.com/ropensci/drake
* Source code: https://github.com/cran/drake
* Date/Publication: 2020-10-27 18:50:06 UTC
* Number of recursive dependencies: 147

Run `revdep_details(, "drake")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
        3. drake:::process_targets(config)
        4. drake:::run_backend(config)
        5. drake:::drake_backend(config)
        6. drake:::drake_backend_future(config)
        7. drake:::ft_scan_workers(ids, config)
        8. drake:::ft_scan_worker(id, config)
        9. drake:::ft_check_target(target, id, config)
       10. drake:::ft_do_target(target, id, config)
       11. drake:::ft_build_target(target, id, running, protect, config)
       12. drake:::ft_decide_worker(target, protect, config)
       13. drake:::ft_launch_worker(target, meta, protect, config)
       15. future::future(...)
       16. future:::makeFuture(...)
       17. future::SequentialFuture(..., envir = envir)
       18. future::UniprocessFuture(...)
       19. future::getGlobalsAndPackages(...)
       21. future:::assert_no_references(globals, action = action)
      
      ══ DONE ════════════════════════════════════════════════════════════════════════
      Error: Test failures
      Execution halted
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

*   checking tests ...
    ```
    ...
           █
        1. ├─base::suppressWarnings(...) test-regional_runtimes.R:18:0
        2. │ └─base::withCallingHandlers(...)
        3. └─EpiNow2::regional_epinow(...)
        4.   ├─progressr::with_progress(...)
        5.   └─future.apply::future_lapply(...)
        6.     └─future.apply:::future_xapply(...)
        7.       └─future.apply:::getGlobalsAndPackagesXApply(...)
        8.         └─future::getGlobalsAndPackages(expr, envir = envir, globals = globals)
        9.           ├─base::system.time(...)
       10.           └─future:::assert_no_references(globals, action = action)
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● On CRAN (11)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-regional_runtimes.R:18:1): (code run outside of `test_that()`)
      
      [ FAIL 1 | WARN 0 | SKIP 11 | PASS 32 ]
      Error: Test failures
      Execution halted
    ```

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

# furrr

<details>

* Version: 0.2.1
* GitHub: https://github.com/DavisVaughan/furrr
* Source code: https://github.com/cran/furrr
* Date/Publication: 2020-10-21 18:00:06 UTC
* Number of recursive dependencies: 68

Run `revdep_details(, "furrr")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      ERROR (test-future-pmap.R:5:3): future_pmap() matches pmap() for simple cases / strategy - multisession / cores - 2
      ERROR (test-future-pmap.R:14:3): names of `.x` are retained / strategy - multisession / cores - 2
      ERROR (test-future-pmap.R:29:3): future_pmap_dbl() works / strategy - multisession / cores - 2
      ERROR (test-future-pmap.R:39:3): future_pmap_int() works / strategy - multisession / cores - 2
      ERROR (test-future-pmap.R:49:3): future_pmap_lgl() works / strategy - multisession / cores - 2
      ERROR (test-future-pmap.R:59:3): future_pmap_chr() works / strategy - multisession / cores - 2
      ERROR (test-future-pmap.R:69:3): future_pmap_raw() works / strategy - multisession / cores - 2
      ERROR (test-future-pmap.R:78:3): names of `.x` are retained / strategy - multisession / cores - 2
      ERROR (test-future-pmap.R:88:3): future_pmap_dfr() works / strategy - multisession / cores - 2
      ERROR (test-future-pmap.R:98:3): future_pmap_dfc() works / strategy - multisession / cores - 2
      ERROR (test-future-pmap.R:125:3): size one recycling works / strategy - multisession / cores - 2
      ERROR (test-future-pmap.R:168:3): named arguments can be passed through / strategy - multisession / cores - 2
      ERROR (test-future-pmap.R:179:3): arguments can be matched by name / strategy - multisession / cores - 2
      ERROR (test-future-pmap.R:189:3): unused components can be absorbed / strategy - multisession / cores - 2
      ERROR (test-future-pmap.R:201:3): globals in `.x` and `.y` are found (#16) / strategy - multisession / cores - 2
      ERROR (test-future-pmap.R:233:3): globals in `.l` are only exported to workers that use them
      ERROR (test-future-walk.R:3:3): walk functions work / strategy - multisession / cores - 2
      
      [ FAIL 70 | WARN 2 | SKIP 1 | PASS 706 ]
      Error: Test failures
      Execution halted
    ```

# future.apply

<details>

* Version: 1.6.0
* GitHub: https://github.com/HenrikBengtsson/future.apply
* Source code: https://github.com/cran/future.apply
* Date/Publication: 2020-07-01 07:50:02 UTC
* Number of recursive dependencies: 14

Run `revdep_details(, "future.apply")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > ### Name: future_by
    > ### Title: Apply a Function to a Data Frame Split by Factors via Futures
    > ### Aliases: future_by
    > 
    > ### ** Examples
    > 
    > ## ---------------------------------------------------------
    > ## by()
    > ## ---------------------------------------------------------
    > library(datasets) ## warpbreaks
    > library(stats)    ## lm()
    > 
    > y0 <- by(warpbreaks, warpbreaks[,"tension"],
    +          function(x) lm(breaks ~ wool, data = x))
    > 
    > plan(multisession)
    > y1 <- future_by(warpbreaks, warpbreaks[,"tension"],
    +                 function(x) lm(breaks ~ wool, data = x))
    Error: Detected a non-exportable reference (‘externalptr’) in one of the globals (<unknown>) used in the future expression
    Timing stopped at: 0.004 0 0.004
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      [20:01:06.690] Exporting '...future.FUN' (329.08 KiB) to cluster node #1 ...
      [20:01:06.733] Exporting '...future.FUN' (329.08 KiB) to cluster node #1 ... DONE
      [20:01:06.733] Exporting '...future.elements_ii' (80 bytes) to cluster node #1 ...
      [20:01:06.734] Exporting '...future.elements_ii' (80 bytes) to cluster node #1 ... DONE
      [20:01:06.735] Exporting '...future.seeds_ii' (0 bytes) to cluster node #1 ...
      [20:01:06.736] Exporting '...future.seeds_ii' (0 bytes) to cluster node #1 ... DONE
      [20:01:06.737] Exporting '...future.globals.maxSize' (0 bytes) to cluster node #1 ...
      [20:01:06.738] Exporting '...future.globals.maxSize' (0 bytes) to cluster node #1 ... DONE
      [20:01:06.738] Exporting 5 global objects (329.16 KiB) to cluster node #1 ... DONE
      [20:01:06.740] MultisessionFuture started
      [20:01:06.740] Chunk #1 of 2 ... DONE
      [20:01:06.741] Chunk #2 of 2 ...
      [20:01:06.741]  - seeds: <none>
      [20:01:06.749] getGlobalsAndPackages() ...
      [20:01:06.750] - globals passed as-is: [5] '...', '...future.FUN', '...future.elements_ii', '...future.seeds_ii', '...future.globals.maxSize'
      [20:01:06.751] Resolving globals: FALSE
      [20:01:06.751] Tweak future expression to call with '...' arguments ...
      [20:01:06.752] Tweak future expression to call with '...' arguments ... DONE
      [20:01:06.753] Checking for globals with references (future.globals.onReference = "error") ...Error: Detected a non-exportable reference ('externalptr') in one of the globals (<unknown>) used in the future expression
      Timing stopped at: 0.007 0 0.007
      Execution halted
    ```

# future.batchtools

<details>

* Version: 0.9.0
* GitHub: https://github.com/HenrikBengtsson/future.batchtools
* Source code: https://github.com/cran/future.batchtools
* Date/Publication: 2020-04-14 18:40:03 UTC
* Number of recursive dependencies: 35

Run `revdep_details(, "future.batchtools")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      > str(list(x = x))
      List of 1
       $ x:List of 3
        ..$ a: chr "integer"
        ..$ c: chr "character"
        ..$ c: chr "list"
      > 
      > y0 <- lapply(x, FUN = base::vector, length = 2L)
      > str(list(y0 = y0))
      List of 1
       $ y0:List of 3
        ..$ a: int [1:2] 0 0
        ..$ c: chr [1:2] "" ""
        ..$ c:List of 2
        .. ..$ : NULL
        .. ..$ : NULL
      > 
      > y <- flapply(x, FUN = base::vector, length = 2L)
      Error: Detected a non-exportable reference ('externalptr') in one of the globals (<unknown>) used in the future expression
      Timing stopped at: 0.001 0.001 0.002
      Execution halted
    ```

# future.callr

<details>

* Version: 0.5.0
* GitHub: https://github.com/HenrikBengtsson/future.callr
* Source code: https://github.com/cran/future.callr
* Date/Publication: 2019-09-28 04:40:07 UTC
* Number of recursive dependencies: 19

Run `revdep_details(, "future.callr")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      [20:05:51.791]         }
      [20:05:51.791]         else {
      [20:05:51.791]             ...future.result["stdout"] <- base::list(NULL)
      [20:05:51.791]         }
      [20:05:51.791]         base::close(...future.stdout)
      [20:05:51.791]         ...future.stdout <- NULL
      [20:05:51.791]     }
      [20:05:51.791]     ...future.result$conditions <- ...future.conditions
      [20:05:51.791]     ...future.result
      [20:05:51.791] }
      [20:05:51.877] Launched future (PID=44721)
      [20:05:51.881] getGlobalsAndPackages() ...
      [20:05:51.882] Searching for globals...
      [20:05:51.891] - globals found: [6] 'FUN', '[[', 'x', 'ii', '...', '.Internal'
      [20:05:51.891] Searching for globals ... DONE
      [20:05:51.892] Resolving globals: FALSE
      [20:05:51.893] Tweak future expression to call with '...' arguments ...
      [20:05:51.893] Tweak future expression to call with '...' arguments ... DONE
      [20:05:51.895] Checking for globals with references (future.globals.onReference = "error") ...Error: Detected a non-exportable reference ('externalptr' of class 'processx_connection') in one of the globals (<unknown>) used in the future expression
      Timing stopped at: 0.014 0.001 0.014
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

# glmmboot

<details>

* Version: 0.5.1
* GitHub: https://github.com/ColmanHumphrey/glmmboot
* Source code: https://github.com/cran/glmmboot
* Date/Publication: 2020-03-30 08:50:02 UTC
* Number of recursive dependencies: 74

Run `revdep_details(, "glmmboot")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
        1. ├─testthat::expect_error(...) test-bootstrap_model.R:199:4
        2. │ └─testthat:::quasi_capture(...)
        3. │   ├─testthat:::.capture(...)
        4. │   │ └─base::withCallingHandlers(...)
        5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        6. └─glmmboot::bootstrap_model(...)
        7.   └─glmmboot:::bootstrap_runner(...)
        8.     └─future.apply::future_lapply(...)
        9.       └─future.apply:::future_xapply(...)
       10.         └─future.apply:::getGlobalsAndPackagesXApply(...)
       11.           └─future::getGlobalsAndPackages(expr, envir = envir, globals = globals)
       12.             ├─base::system.time(...)
       13.             └─future:::assert_no_references(globals, action = action)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      FAILURE (test-bootstrap_model.R:184:5): bootstrap_model parallelism modes
      FAILURE (test-bootstrap_model.R:199:5): bootstrap_model parallelism modes
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 61 ]
      Error: Test failures
      Execution halted
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

# gtfs2gps

<details>

* Version: 1.3-2
* GitHub: https://github.com/ipeaGIT/gtfs2gps
* Source code: https://github.com/cran/gtfs2gps
* Date/Publication: 2020-11-05 17:30:12 UTC
* Number of recursive dependencies: 78

Run `revdep_details(, "gtfs2gps")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
        7.           ├─base::withVisible(function_list[[k]](value))
        8.           └─function_list[[k]](value)
        9.             └─gtfs2gps::gtfs2gps(., parallel = TRUE, spatial_resolution = 15)
       10.               ├─`%>%`(...)
       11.               │ └─base::eval(lhs, parent, parent)
       12.               │   └─base::eval(lhs, parent, parent)
       13.               └─furrr::future_map(...)
       14.                 └─furrr:::furrr_map_template(...)
       15.                   └─furrr:::furrr_template(...)
       16.                     └─furrr:::get_globals_and_packages(...)
       17.                       └─future::getGlobalsAndPackages(fn, envir = env_fn, globals = TRUE)
       18.                         ├─base::system.time(...)
       19.                         └─future:::assert_no_references(globals, action = action)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test_gtfs2gps.R:71:5): gtfs2gps
      ERROR (test_gtfs2gps.R:71:5): gtfs2gps
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 158 ]
      Error: Test failures
      Execution halted
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

*   checking examples ... ERROR
    ```
    ...
    > 
    > ### ** Examples
    > 
    > # we save the names of the mixture variables in the variable "toxic_chems"
    > toxic_chems = names(wqs_data)[1:34]
    > 
    > # To run a linear model and save the results in the variable "results". This linear model
    > # (family = gaussian) will rank/standardize variables in quartiles (q = 4), perform a
    > # 40/60 split of the data for training/validation (validation = 0.6), and estimate weights
    > # over 2 bootstrap samples (b = 2; in practical applications at least 100 bootstraps
    > # should be used). Weights will be derived from mixture effect parameters that are positive
    > # (b1_pos = TRUE). A unique seed was specified (seed = 2016) so this model will be
    > # reproducible, and plots describing the variable weights and linear relationship will be
    > # generated as output (plots = TRUE). In the end tables describing the weights values and
    > # the model parameters with the respectively statistics are generated in the plots window
    > # (tables = TRUE):
    > results = gwqs(y ~ wqs, mix_name = toxic_chems, data = wqs_data, q = 4, validation = 0.6,
    +                b = 2, b1_pos = TRUE, b1_constr = FALSE, family = gaussian, seed = 2016)
    Error: Detected a non-exportable reference (‘externalptr’) in one of the globals (<unknown>) used in the future expression
    Timing stopped at: 0.057 0.004 0.061
    Execution halted
    ```

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
* Number of recursive dependencies: 94

Run `revdep_details(, "hal9001")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      
      ── Warning (test-single_lambda.R:26:3): a single glmnet object is output ───────
      `failure_message` is missing, with no default.
      
      ── Warning (test-single_lambda.R:29:3): cv.glmnet object is not output ─────────
      `failure_message` is missing, with no default.
      
      ── Warning (test-x_unpenalized.R:22:3): [train] The coefficient is not penalized
      `failure_message` is missing, with no default.
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-cv_lasso.R:67:1): (code run outside of `test_that()`)
      Warning (test-hal_big.R:26:1): (code run outside of `test_that()`)
      ERROR (test-reduce_basis_filter.R:120:1): (code run outside of `test_that()`)
      Warning (test-single_lambda.R:26:3): a single glmnet object is output
      Warning (test-single_lambda.R:29:3): cv.glmnet object is not output
      Warning (test-x_unpenalized.R:22:3): [train] The coefficient is not penalized heavily
      
      [ FAIL 2 | WARN 4 | SKIP 0 | PASS 30 ]
      Error: Test failures
      Execution halted
    ```

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

*   checking examples ... ERROR
    ```
    ...
    > eff$predict(c(5, 6, 7))
    [1] 20.86399 20.79626 26.31479
    > 
    > # You can reuse the pdp object for other features:
    > eff$set.feature("lstat")
    > plot(eff)
    > 
    > # Only plotting the aggregated partial dependence:
    > eff <- FeatureEffect$new(mod, feature = "crim", method = "pdp")
    > eff$plot()
    > 
    > # Only plotting the individual conditional expectation:
    > eff <- FeatureEffect$new(mod, feature = "crim", method = "ice")
    > eff$plot()
    > 
    > # Accumulated local effects and partial dependence plots support up to two
    > # features:
    > eff <- FeatureEffect$new(mod, feature = c("crim", "lstat"))
    Error: Detected a non-exportable reference (‘externalptr’) in one of the globals (‘FUN’ of class ‘function’) used in the future expression
    Timing stopped at: 0.002 0 0.002
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      ERROR (test-FeatureEffect.R:373:3): method='ale' works for 2D numerical
      ERROR (test-FeatureEffect.R:438:3): iml::FeatureEffect with method='ale' equal to ALEPLot::ALEPlot
      ERROR (test-FeatureEffect.R:565:3): method='ale' works for 2D numerical x categorical
      ERROR (test-FeatureEffects.R:13:3): FeatureEffect (pdp only) works for single output and single feature
      ERROR (test-FeatureImp.R:11:3): FeatureImp works for single output
      ERROR (test-FeatureImp.R:30:3): FeatureImp works for single output with single repetition
      ERROR (test-FeatureImp.R:42:3): FeatureImp with difference
      ERROR (test-FeatureImp.R:60:3): FeatureImp with 0 model error
      ERROR (test-FeatureImp.R:77:3): FeatureImp works for single output and function as loss
      ERROR (test-FeatureImp.R:90:3): FeatureImp works for multiple output
      ERROR (test-FeatureImp.R:107:3): Works for different repetitions.
      ERROR (test-FeatureImp.R:123:3): Model receives data.frame without additional columns
      ERROR (test-FeatureImp.R:140:3): Feature Importance 0
      ERROR (test-Interaction.R:12:3): Interaction works for all features
      ERROR (test-Interaction.R:22:3): Interaction works for 2-way interactions
      ERROR (test-Interaction.R:48:3): Interaction for multiclass
      Warning (test-LocalModel.R:52:3): LocalModel works for multiple output
      
      [ FAIL 17 | WARN 2 | SKIP 11 | PASS 395 ]
      Error: Test failures
      Execution halted
    ```

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
    INFO [2020-11-09 20:41:21] ::plot_cnv:Start
    INFO [2020-11-09 20:41:21] ::plot_cnv:Current data dimensions (r,c)=4613,20 Total=94613.7345076583 Min=0.459691019720342 Max=2.53323815685956.
    INFO [2020-11-09 20:41:21] ::plot_cnv:Depending on the size of the matrix this may take a moment.
    INFO [2020-11-09 20:41:21] plot_cnv(): auto thresholding at: (0.510779 , 1.489221)
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

*   checking tests ...
    ```
    ...
      Warning (test-printfcts.R:6:3): lme model
      Warning (test-printfcts.R:6:3): lme model
      Warning (test-printfcts.R:6:3): lme model
      Warning (test-printfcts.R:20:3): mlogitmm
      Warning (test-printfcts.R:20:3): mlogitmm
      Warning (test-printfcts.R:20:3): mlogitmm
      Warning (test-survival.R:5:3): Joint model with ordinal covariate works
      Warning (test-survival.R:5:3): Joint model with ordinal covariate works
      Warning (test-survival.R:5:3): Joint model with ordinal covariate works
      Warning (test-survival.R:15:3): JM
      Warning (test-survival.R:15:3): JM
      Warning (test-survival.R:15:3): JM
      Warning (test-survival.R:15:3): JM
      Warning (test-survreg.R:124:3): prediction works
      Warning (test-survreg.R:124:3): prediction works
      Warning (test-survreg.R:132:3): residuals
      Warning (test-survreg.R:133:3): residuals
      
      [ FAIL 6 | WARN 35 | SKIP 16 | PASS 1042 ]
      Error: Test failures
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘mathjaxr’
      All declared Imports should be used.
    ```

# jstor

<details>

* Version: 0.3.9
* GitHub: https://github.com/ropensci/jstor
* Source code: https://github.com/cran/jstor
* Date/Publication: 2020-06-04 04:50:03 UTC
* Number of recursive dependencies: 74

Run `revdep_details(, "jstor")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘jstor-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: jst_subset_ngrams
    > ### Title: Define a subset of ngrams
    > ### Aliases: jst_subset_ngrams
    > 
    > ### ** Examples
    > 
    > # create sample output
    > tmp <- tempdir()
    > jst_import_zip(jst_example("pseudo_dfr.zip"),
    +                import_spec = jst_define_import(book = jst_get_book),
    +                out_file = "test", out_path = tmp)
    Processing files for book_chapter with functions jst_get_book
    Error: Detected a non-exportable reference (‘externalptr’) in one of the globals (<unknown>) used in the future expression
    Timing stopped at: 0.06 0.007 0.066
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● Downloading was disabled (1)
      ● This test is stupid, should be improved. It depends on the console width
             which is not a good idea. (1)
      ● empty test (2)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-ngram.R:32:3): subsetting ngrams works
      Warning (test-writing-to-file.R:21:3): writing correct results to file works
      ERROR (test-writing-to-file.R:35:3): writing to file in parallel works
      ERROR (test-writing-to-file.R:48:3): not writing column names works
      ERROR (test-writing-to-file.R:63:3): writing error messages to file works
      ERROR (test-writing-to-file.R:88:3): import wrapper works with column names
      ERROR (test-writing-to-file.R:101:3): import wrapper works without column names
      ERROR (test-writing-to-file.R:114:3): files_per_batch works
      ERROR (test-writing-to-file.R:130:3): n_batches works for n > 1
      ERROR (test-zip.R:29:3): importing from zip works
      
      [ FAIL 9 | WARN 1 | SKIP 4 | PASS 239 ]
      Error: Test failures
      Execution halted
    ```

# kernelboot

<details>

* Version: 0.1.7
* GitHub: https://github.com/twolodzko/kernelboot
* Source code: https://github.com/cran/kernelboot
* Date/Publication: 2020-02-13 23:10:03 UTC
* Number of recursive dependencies: 65

Run `revdep_details(, "kernelboot")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      +   # simply check if it fails
      + 
      +   stopifnot( kernelboot(mtcars, function(data) coef(lm(mpg ~ disp + hp + drat, data = data)),
      +                         R = 10, parallel = TRUE, workers = 2L)$param$parallel )
      + 
      +   # check reproducibility
      + 
      +   set.seed(0xBEEF)
      +   s1 <- kernelboot(mtcars, function(data) coef(lm(mpg ~ disp + hp + drat, data = data)),
      +                    R = 10, parallel = TRUE, workers = 2L)
      + 
      +   set.seed(0xBEEF)
      +   s2 <- kernelboot(mtcars, function(data) coef(lm(mpg ~ disp + hp + drat, data = data)),
      +                    R = 10, parallel = TRUE, workers = 2L)
      + 
      +   stopifnot( all.equal(s1, s2) )
      + 
      + }
      Error: Detected a non-exportable reference ('externalptr') in one of the globals (<unknown>) used in the future expression
      Timing stopped at: 0.012 0 0.012
      Execution halted
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
      Warning (test-grid_terrain.R:120:3): grid_terrain returns the same both with LAScatalog and LAS
      Warning (test-grid_terrain.R:120:3): grid_terrain returns the same both with LAScatalog and LAS
      Warning (test-grid_terrain.R:120:3): grid_terrain returns the same both with LAScatalog and LAS
      Warning (test-grid_terrain.R:120:3): grid_terrain returns the same both with LAScatalog and LAS
      Warning (test-grid_terrain.R:120:3): grid_terrain returns the same both with LAScatalog and LAS
      ERROR (test-lasclip.R:129:3): lasclip clips point with SpatialPoints on LAS and LAScatalog
      ERROR (test-lasclip.R:228:3): lasclip supports multiple queries
      ERROR (test-lasclip.R:283:3): lasclip returns an empty point cloud for empty multiple queries
      Warning (test-lasnormalize.R:76:3): lasnormalize work with a catalog
      Warning (test-lasnormalize.R:76:3): lasnormalize work with a catalog
      Warning (test-lasnormalize.R:76:3): lasnormalize work with a catalog
      Warning (test-lasnormalize.R:76:3): lasnormalize work with a catalog
      Warning (test-lasnormalize.R:76:3): lasnormalize work with a catalog
      Warning (test-lasnormalize.R:76:3): lasnormalize work with a catalog
      ERROR (test-tree_hulls.R:48:3): tree_hulls works with a custom metrics
      ERROR (test-tree_metrics.R:29:3): tree_metrics works with a LAScatalog
      FAILURE (test-tree_metrics.R:54:3): tree_metrics throw an error if no treeID
      
      [ FAIL 23 | WARN 90 | SKIP 1 | PASS 1069 ]
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

*   checking examples ... ERROR
    ```
    ...
    Loading required package: bumphunter
    Loading required package: foreach
    Loading required package: iterators
    Loading required package: locfit
    locfit 1.5-9.4 	 2020-03-24
    Warning: Package 'methyvimData' is deprecated and will be removed from
      Bioconductor version 3.13
    > data(grsExample)
    > var_int <- as.numeric(colData(grsExample)[, 1])
    > # TMLE procedure for the ATE parameter over M-values with Limma filtering
    > methyvim_out_ate <- suppressWarnings(
    +   methyvim(
    +     data_grs = grsExample, sites_comp = 25, var_int = var_int,
    +     vim = "ate", type = "Mval", filter = "limma", filter_cutoff = 0.1,
    +     parallel = FALSE, tmle_type = "glm"
    +   )
    + )
    Timing stopped at: 0.004 0.003 0.007
    Error in updt[[as.integer(i)]] <- .error(msg) : 
      attempt to select more than one element in integerOneIndex
    Execution halted
    ```

*   checking tests ...
    ```
    ...
        3. └─methyvim::methyvim(...)
        4.   ├─BiocParallel::bplapply(...)
        5.   └─BiocParallel::bplapply(...)
        6.     ├─BiocParallel::bplapply(X, FUN, ..., BPREDO = BPREDO, BPPARAM = BPPARAM)
        7.     └─BiocParallel::bplapply(X, FUN, ..., BPREDO = BPREDO, BPPARAM = BPPARAM)
        8.       └─base::tryCatch(...)
        9.         └─base:::tryCatchList(expr, classes, parentenv, handlers)
       10.           └─base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])
       11.             └─value[[3L]](cond)
      
      ── Warning (test-set_parallel.R:9:3): registers BiocParallel::DoparParam by defa
      Strategy 'multiprocess' is deprecated in future (>= 1.20.0). Instead, explicitly specify either 'multisession' or 'multicore'. In the current R session, 'multiprocess' equals 'multicore'.
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test-cluster_sites.R:4:1): (code run outside of `test_that()`)
      ERROR (test-methyvim.R:13:1): (code run outside of `test_that()`)
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

*   checking examples ... ERROR
    ```
    ...
    > 
    > ### ** Examples
    > 
    > ## generate a data
    > set.seed(2004);
    > M <- matrix(rnorm(5000*6,sd=0.3),ncol=10)
    > M[1:100,1:3] <- M[1:100,1:3] + 2
    > M[1:200,1:3] <- M[1:200,4:6] +1
    > 
    > ## Random initializations are used for each iteration of FastICA
    > ## Estimates are clustered using hierarchical clustering with average linkage
    > res <- clusterFastICARuns(X=M, nbComp=2, alg.type="deflation",
    +                           nbIt=3, funClus="hclust", method="average")
    FastICA iteration 1
    Warning: executing %dopar% sequentially: no parallel backend registered
    FastICA iteration 2
    FastICA iteration 3
    Warning: Strategy 'multiprocess' is deprecated in future (>= 1.20.0). Instead, explicitly specify either 'multisession' or 'multicore'. In the current R session, 'multiprocess' equals 'multicore'.
    Error: Detected a non-exportable reference (‘externalptr’) in one of the globals (<unknown>) used in the future expression
    Timing stopped at: 0.021 0.007 0.045
    Execution halted
    ```

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

# mlr3

<details>

* Version: 0.8.0
* GitHub: https://github.com/mlr-org/mlr3
* Source code: https://github.com/cran/mlr3
* Date/Publication: 2020-10-21 09:10:02 UTC
* Number of recursive dependencies: 60

Run `revdep_details(, "mlr3")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    +   lrn("classif.featureless", predict_type = "prob"),
    +   lrn("classif.rpart", predict_type = "prob")
    + )
    > 
    > design = benchmark_grid(
    +   tasks = list(tsk("sonar"), tsk("spam")),
    +   learners = learners,
    +   resamplings = rsmp("cv", folds = 3)
    + )
    > print(design)
                    task                         learner         resampling
    1: <TaskClassif[45]> <LearnerClassifFeatureless[33]> <ResamplingCV[19]>
    2: <TaskClassif[45]>       <LearnerClassifRpart[33]> <ResamplingCV[19]>
    3: <TaskClassif[45]> <LearnerClassifFeatureless[33]> <ResamplingCV[19]>
    4: <TaskClassif[45]>       <LearnerClassifRpart[33]> <ResamplingCV[19]>
    > 
    > bmr = benchmark(design)
    INFO  [20:56:37.772] Benchmark with 12 resampling iterations 
    Error: Detected a non-exportable reference (‘externalptr’) in one of the globals (<unknown>) used in the future expression
    Timing stopped at: 0.005 0 0.006
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      ERROR (test_parallel.R:5:3): parallel resample
      ERROR (test_parallel.R:20:3): parallel benchmark
      Warning (test_parallel.R:38:3): real parallel resample
      ERROR (test_parallel.R:38:3): real parallel resample
      ERROR (test_parallel.R:56:3): parallel seed
      ERROR (test_resample.R:6:3): resample
      ERROR (test_resample.R:34:3): resample with no or multiple measures
      ERROR (test_resample.R:51:3): as_benchmark_result.ResampleResult
      ERROR (test_resample.R:67:3): discarding model
      ERROR (test_resample.R:77:3): inputs are cloned
      ERROR (test_resample.R:87:3): memory footprint
      ERROR (test_resample.R:99:3): predict_type is checked
      ERROR (test_resample.R:112:3): seeds work identical sequential/parallel
      ERROR (test_resample.R:134:3): empty train/predict sets
      ERROR (test_resultdata.R:9:3): results are ordered
      ERROR (test_resultdata.R:47:3): mlr3tuning use case
      ERROR (test_resultdata.R:78:3): predict set selection
      
      [ FAIL 37 | WARN 1 | SKIP 0 | PASS 5728 ]
      Error: Test failures
      Execution halted
    ```

# mlr3db

<details>

* Version: 0.2.0
* GitHub: https://github.com/mlr-org/mlr3db
* Source code: https://github.com/cran/mlr3db
* Date/Publication: 2020-09-28 08:10:02 UTC
* Number of recursive dependencies: 66

Run `revdep_details(, "mlr3db")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
       7.           └─future:::assert_no_references(globals, action = action)
      
      ── ERROR (test_train_predict.R:15:3): resample work ────────────────────────────
      Error: Detected a non-exportable reference ('externalptr') in one of the globals ('future.call.arguments' of class 'DotDotDotList') used in the future expression
      Backtrace:
          █
       1. └─mlr3::resample(task, learner, mlr3::rsmp("cv", folds = 3)) test_train_predict.R:15:2
       2.   └─future.apply::future_lapply(...)
       3.     └─future.apply:::future_xapply(...)
       4.       └─future.apply:::getGlobalsAndPackagesXApply(...)
       5.         └─future::getGlobalsAndPackages(expr, envir = envir, globals = globals)
       6.           ├─base::system.time(...)
       7.           └─future:::assert_no_references(globals, action = action)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test_reconnect.R:34:3): resampling
      ERROR (test_train_predict.R:15:3): resample work
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 432 ]
      Error: Test failures
      Execution halted
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

*   checking tests ...
    ```
    ...
      
      ── Warning (test-future_plan.R:26:1): (code run outside of `test_that()`) ──────
      prediction from a rank-deficient fit may be misleading
      
      ── Warning (test-future_plan.R:26:1): (code run outside of `test_that()`) ──────
      prediction from a rank-deficient fit may be misleading
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-folds.R:56:1): (code run outside of `test_that()`)
      Warning (test-future_plan.R:21:1): (code run outside of `test_that()`)
      Warning (test-future_plan.R:21:1): (code run outside of `test_that()`)
      Warning (test-future_plan.R:21:1): (code run outside of `test_that()`)
      Warning (test-future_plan.R:21:1): (code run outside of `test_that()`)
      Warning (test-future_plan.R:26:1): (code run outside of `test_that()`)
      Warning (test-future_plan.R:26:1): (code run outside of `test_that()`)
      Warning (test-future_plan.R:26:1): (code run outside of `test_that()`)
      Warning (test-future_plan.R:26:1): (code run outside of `test_that()`)
      
      [ FAIL 1 | WARN 8 | SKIP 0 | PASS 22 ]
      Error: Test failures
      Execution halted
    ```

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

# PeakSegDisk

<details>

* Version: 2020.8.13
* GitHub: https://github.com/tdhock/PeakSegDisk
* Source code: https://github.com/cran/PeakSegDisk
* Date/Publication: 2020-08-14 04:40:06 UTC
* Number of recursive dependencies: 65

Run `revdep_details(, "PeakSegDisk")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    +   r("chr1", 2, 3, 18),
    +   r("chr1", 3, 4, 15),
    +   r("chr1", 4, 5, 20),
    +   r("chr1", 5, 6, 2)
    + )
    > data.dir <- file.path(tempfile(), "chr1-0-6")
    > dir.create(data.dir, recursive=TRUE)
    > write.table(
    +   supp, file.path(data.dir, "coverage.bedGraph"),
    +   sep="\t", row.names=FALSE, col.names=FALSE)
    > 
    > ## register a parallel future plan to compute the first two
    > ## penalties in parallel during the sequential search.
    > if(interactive() && requireNamespace("future"))future::plan("multiprocess")
    > 
    > ## Compute optimal up-down model with 2 peaks via sequential search.
    > fit <- PeakSegDisk::sequentialSearch_dir(data.dir, 2L)
    Loading required namespace: future.apply
    Error: Detected a non-exportable reference (‘externalptr’) in one of the globals (‘FUN’ of class ‘function’) used in the future expression
    Timing stopped at: 0.001 0.002 0.003
    Execution halted
    ```

*   checking tests ...
    ```
    ...
       10.         └─future::getGlobalsAndPackages(expr, envir = envir, globals = globals)
       11.           ├─base::system.time(...)
       12.           └─future:::assert_no_references(globals, action = action)
      
      ── Warning (test-CRAN-wc2int.R:32:3): wc2int error for no size ─────────────────
      NAs introduced by coercion
      
      [1] "/var/folders/7j/bq7gdv517tv9bb54j2tfnt3w0000gn/T//Rtmpu71VKi/file363125abb95f/H3K27ac-H3K4me3_TDHAM_BP/samples/Mono1_H3K27ac/S001YW_NCMLS/problems/chr11:60000-580000/coverage.bedGraph"
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test-CRAN-PeakSegFPOP_dir.R:29:3): large penalty should not crash solver
      Warning (test-CRAN-PeakSegFPOP_dir.R:34:3): large penalty with temp file
      Warning (test-CRAN-PeakSegFPOP_dir.R:34:3): large penalty with temp file
      Warning (test-CRAN-PeakSegFPOP_dir.R:55:3): empty timing.tsv is fine
      Warning (test-CRAN-PeakSegFPOP_dir.R:61:3): empty coverage.bedGraph is an error
      Warning (test-CRAN-PeakSegFPOP_dir.R:61:3): empty coverage.bedGraph is an error
      FAILURE (test-CRAN-sequentialSearch.R:23:3): sequential search with too many peaks is an error
      Warning (test-CRAN-wc2int.R:32:3): wc2int error for no size
      
      [ FAIL 1 | WARN 7 | SKIP 0 | PASS 65 ]
      Error: Test failures
      Execution halted
    ```

# penaltyLearning

<details>

* Version: 2020.5.13
* GitHub: https://github.com/tdhock/penaltyLearning
* Source code: https://github.com/cran/penaltyLearning
* Date/Publication: 2020-05-14 16:20:02 UTC
* Number of recursive dependencies: 64

Run `revdep_details(, "penaltyLearning")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
        5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        6. ├─base::with(...) test-errors.R:125:4
        7. └─base::with.default(...)
        8.   └─base::eval(substitute(expr), data, enclos = parent.frame())
        9.     └─base::eval(substitute(expr), data, enclos = parent.frame())
       10.       └─penaltyLearning::IntervalRegressionCV(...)
       11.         └─future.apply:::LAPPLY(...)
       12.           └─future.apply:::future_xapply(...)
       13.             └─future.apply:::getGlobalsAndPackagesXApply(...)
       14.               └─future::getGlobalsAndPackages(expr, envir = envir, globals = globals)
       15.                 ├─base::system.time(...)
       16.                 └─future:::assert_no_references(globals, action = action)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-demo8.R:8:1): (code run outside of `test_that()`)
      FAILURE (test-errors.R:110:3): error for constant features
      FAILURE (test-errors.R:124:3): error for NA and constant features
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 166 ]
      Error: Test failures
      Execution halted
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

*   checking examples ... ERROR
    ```
    Running examples in ‘phylolm-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: phyloglm
    > ### Title: Phylogenetic Generalized Linear Model
    > ### Aliases: phyloglm
    > 
    > ### ** Examples
    > 
    > set.seed(123456)
    > tre = rtree(50)
    > x = rTrait(n=1,phy=tre)
    > X = cbind(rep(1,50),x)
    > y = rbinTrait(n=1,phy=tre, beta=c(-1,0.5), alpha=1 ,X=X)
    > dat = data.frame(trait01 = y, predictor = x)
    > fit = phyloglm(trait01~predictor,phy=tre,data=dat,boot=100)
    Error: Detected a non-exportable reference (‘externalptr’ of class ‘RegisteredNativeSymbol’) in one of the globals (<unknown>) used in the future expression
    Timing stopped at: 0.036 0.005 0.041
    Execution halted
    ```

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

*   checking examples ... ERROR
    ```
    ...
    2        <NA>          1 20585463.34 29320105       102  1.0304
    3        <NA>          1 29320104.86 67893865       296 -0.0238
    4        <NA>          1 67893865.37 81348129       101 -1.0803
    5        <NA>          1 81348129.20 99910827       200 -0.0612
    6        <NA>         NA          NA       NA        NA      NA
    7        <NA>          2    55167.82 20585463       198  0.0096
    8        <NA>          2 20585463.34 29320105       102  1.0304
    9        <NA>          2 29320104.86 67893865       296 -0.0238
    10       <NA>          2 67893865.37 81348129       101 -1.0803
    11       <NA>          2 81348129.20 99910827       200 -0.0612
    > plotTracks(fit, subset=NULL, lwd=2, Clim=c(-3,3))
    > 
    > 
    > # Segmenting multiple chromosomes at once
    > chromosomeWG <- rep(1:2, each=J)
    > xWG <- rep(x, times=2)
    > yWG <- rep(y, times=2)
    > fitWG <- segmentByCBS(yWG, chromosome=chromosomeWG, x=xWG)
    Error: Detected a non-exportable reference (‘externalptr’) in one of the globals (<unknown>) used in the future expression
    Timing stopped at: 0.005 0.001 0.006
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      > dataS <- dropSegmentationOutliers(data)
      > dataS <- dataS[seq(from=1, to=nrow(data), by=5),]
      > nSegs <- 4L
      > str(dataS)
      'data.frame':	14670 obs. of  6 variables:
       $ chromosome: int  1 1 1 1 1 1 1 1 1 1 ...
       $ x         : int  1145994 2941694 3710825 4240737 4276892 4464544 4714611 5095111 5034491 5158416 ...
       $ CT        : num  1.63 1.4 1.41 1.17 1.16 ...
       $ betaT     : num  0.7574 0.169 0.2357 0.2604 0.0576 ...
       $ CN        : num  2.36 2.13 2.26 2.01 2.32 ...
       $ betaN     : num  0.8274 0.5072 0.1671 0.1609 0.0421 ...
      > # Segment known regions
      > knownSegments <- data.frame(
      +   chromosome = c(        1,  1,         1),
      +   start      = c(     -Inf, NA, 141510003),
      +   end        = c(120992603, NA,      +Inf)
      + )
      > fit <- segmentByPairedPSCBS(dataS, knownSegments=knownSegments, avgDH="median", seed=0xBEEF)
      Error: Detected a non-exportable reference ('externalptr') in one of the globals (<unknown>) used in the future expression
      Timing stopped at: 0.015 0.001 0.017
      Execution halted
    ```

*   checking running R code from vignettes ...
    ```
    ...
     Segmenting multiple segments on current chromosome...
      Number of segments: 3
    Timing stopped at: 0.023 0 0.022
     Segmenting multiple segments on current chromosome...done
    Segmenting by CBS...done
    
      When sourcing ‘CBS.R’:
    Error: Detected a non-exportable reference (‘externalptr’) in one of the globals (<unknown>) used in the future expression
    Execution halted
    when running code in ‘PairedPSCBS.tex.rsp’
      ...
        Number of segments: 3
    Timing stopped at: 0.047 0.001 0.048
       Segmenting multiple segments on current chromosome...done
      Segmenting by CBS...done
     Identification of change points by total copy numbers...done
    Segmenting paired tumor-normal signals using Paired PSCBS...done
    
      When sourcing ‘PairedPSCBS.R’:
    Error: Detected a non-exportable reference (‘externalptr’) in one of the globals (<unknown>) used in the future expression
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

*   checking examples ... ERROR
    ```
    ...
    The error most likely occurred in:
    
    > ### Name: callBins
    > ### Title: Call aberrations from segmented copy number data
    > ### Aliases: callBins callBins,QDNAseqCopyNumbers-method
    > ### Keywords: manip
    > 
    > ### ** Examples
    > 
    >  data(LGG150)
    >  readCounts <- LGG150
    >  readCountsFiltered <- applyFilters(readCounts)
    38,819	total bins
    38,819	of which in selected chromosomes
    36,722	of which with reference sequence
    33,347	final bins
    >  readCountsFiltered <- estimateCorrection(readCountsFiltered)
    Calculating correction for GC content and mappability
    Error: Detected a non-exportable reference (‘externalptr’) in one of the globals (<unknown>) used in the future expression
    Timing stopped at: 0.154 0.007 0.161
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      > # This scripts asserts that for each processing step of QDNAseq
      > # the output/results are reproducible (numerically equal).
      > ######################################################################
      > library("QDNAseq")
      > options("QDNAseq::verbose"=FALSE)
      > 
      > # Load data
      > data(LGG150)
      > data <- LGG150
      > 
      > # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
      > # TRUTH
      > # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
      > # Filter out "bad" bins
      > dataF <- applyFilters(data, residual=TRUE, blacklist=TRUE)
      > 
      > # Correct read counts as a function of GC content and mappability
      > dataC <- correctBins(dataF)
      Error: Detected a non-exportable reference ('externalptr') in one of the globals (<unknown>) used in the future expression
      Timing stopped at: 0.16 0.005 0.165
      Execution halted
    ```

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

# qgcomp

<details>

* Version: 2.6.0
* GitHub: NA
* Source code: https://github.com/cran/qgcomp
* Date/Publication: 2020-10-06 05:10:02 UTC
* Number of recursive dependencies: 132

Run `revdep_details(, "qgcomp")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      + }
      > 
      > Xnm = c(paste0("x", 1:6))
      > 
      > repit <- function(i){
      +   dat = dgm(50)
      +   m1 = qgcomp.noboot(y~., expnms=Xnm, data = dat, family=gaussian(), q=4)
      +   m2 = qgcomp.boot(  y~., expnms=Xnm, data = dat, family=gaussian(), q=4, B=5, parallel=TRUE)
      +   res = c(m1$coef, m1$var.coef, 1*(m1$pval>0.05), with(m1, ci.coef[1]<2 & ci.coef[2]>2), m2$coef, m2$var.coef, 1*(m2$pval>0.05), with(m2, ci.coef[2,1]<2 & ci.coef[2,2]>2))
      +   names(res) <- c("psiint", "psi", "varint", "var",  "powint", "pow",  "cover", "b.psiint", "b.psi", "b.varint", "b.var", "b.powint", "b.pow", "b.cover")
      +   res
      + }
      > 
      > 
      > #res = mclapply(1:1000, repit)
      > res = lapply(1:2, repit)
      Error: Detected a non-exportable reference ('externalptr') in one of the globals (<unknown>) used in the future expression
      In addition: Warning message:
      Strategy 'multiprocess' is deprecated in future (>= 1.20.0). Instead, explicitly specify either 'multisession' or 'multicore'. In the current R session, 'multiprocess' equals 'multicore'. 
      Timing stopped at: 0.019 0.006 0.026
      Execution halted
    ```

# rangeMapper

<details>

* Version: 0.3-7
* GitHub: https://github.com/valcu/rangeMapper
* Source code: https://github.com/cran/rangeMapper
* Date/Publication: 2019-10-25 18:20:02 UTC
* Number of recursive dependencies: 101

Run `revdep_details(, "rangeMapper")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    MAP_tables       species_richness;median_body_size;median_body_mass;median_clutch_size
    METADATA_RANGES  Area,Median_x,Median_y,Min_x,Min_y,Max_x,Max_y
    +______________+
    > 
    > 
    > lmSlope = function(formula, data) {
    +     fm = try(lm(formula, data = data), silent = TRUE)
    +     if (inherits(fm, "try-error"))
    +         res = NA else res = coef(fm)[2]
    +     as.numeric(res)
    + }
    > 
    > # Subsetting by Species and Assembladge
    > rangeMap.save(con, FUN = lmSlope, biotab = "biotab", biotrait = "body_mass",
    +     tableName = "slope_bodyMass_clutchSize", formula = log(body_mass) ~ clutch_size,
    +     list(MAP_species_richness = "species_richness >= 5",
    +         BIO_biotab = "body_size > 15"
    +         ), overwrite = TRUE)
    Error: Detected a non-exportable reference (‘externalptr’) in one of the globals (‘FUN’ of class ‘function’) used in the future expression
    Timing stopped at: 0.006 0.001 0.008
    Execution halted
    ```

*   checking tests ...
    ```
    ...
        9.             └─e$fun(obj, substitute(ex), parent.frame(), e$data)
       10.               └─doFuture:::getGlobalsAndPackages_doFuture(...)
       11.                 └─future::getGlobalsAndPackages(expr, envir = globals_envir, globals = TRUE)
       12.                   ├─base::system.time(...)
       13.                   └─future:::assert_no_references(globals, action = action)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      Warning (test-1_projectINI.R:76:2): Pipeline works forward only
      ERROR (test-1_projectINI.R:76:2): Pipeline works forward only
      ERROR (test-2_processRanges.R:26:2): ONE SpPolyDF NO metadata
      ERROR (test-2_processRanges.R:47:2): ONE SpPolyDF WITH metadata
      ERROR (test-2_processRanges.R:71:2): MULTIPLE SpPolyDF-s WITH metadata
      ERROR (test-2_processRanges.R:89:3): Process Ranges works parallel
      ERROR (test-3_output.R:7:1): (code run outside of `test_that()`)
      ERROR (test-4_save.R:7:1): (code run outside of `test_that()`)
      
      [ FAIL 7 | WARN 1 | SKIP 0 | PASS 14 ]
      Error: Test failures
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
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
       2.   └─ggplot2::ggsave(...)
       3.     └─ggplot2:::dev(...)
       4.       └─grDevices::png(..., res = dpi, units = "in")
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● On CRAN (2)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-algorithm_minmax_FALSE.R:47:5): algorithm test, type 1, minmax = FALSE
      ERROR (test-algorithm_minmax_FALSE.R:332:5): algorithm test, type 1, minmax = FALSE selection_method = RelError
      ERROR (test-algorithm_minmax_TRUE.R:47:5): algorithm test, type 1, minmax = TRUE
      ERROR (test-algorithm_minmax_TRUE.R:340:5): algorithm test, type 1, minmax = TRUE selection_method = RelError
      ERROR (test-biascorrection.R:15:3): correct functioning of BiasCorrection, data type 1
      ERROR (test-plotting.R:49:5): plotting_utility
      ERROR (test-plotting.R:122:5): createbarerrorplots
      Warning (test-plotting.R:227:5): create_exampleplot
      ERROR (test-plotting.R:227:5): create_exampleplot
      
      [ FAIL 8 | WARN 1 | SKIP 2 | PASS 44 ]
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

*   checking tests ...
    ```
    ...
        5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        6. └─robotstxt::paths_allowed(...) test_paths_allowed.R:1039:4
        7.   └─robotstxt::get_robotstxts(...)
        8.     └─future.apply:::apply_fun(parameter_list, FUN = to_be_applied_fun)
        9.       └─future.apply:::future_xapply(...)
       10.         └─future.apply:::getGlobalsAndPackagesXApply(...)
       11.           └─future::getGlobalsAndPackages(expr, envir = envir, globals = globals)
       12.             ├─base::system.time(...)
       13.             └─future:::assert_no_references(globals, action = action)
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● empty test (3)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test_http_event_handling.R:158:3): client error
      ERROR (test_http_event_handling.R:196:3): server error
      ERROR (test_paths_allowed.R:1037:3): paths_allowed() works also with 'downloaded' robots.txt files
      
      [ FAIL 3 | WARN 0 | SKIP 3 | PASS 257 ]
      Error: Test failures
      Execution halted
    ```

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

*   checking tests ...
    ```
    ...
      Error: Detected a non-exportable reference ('externalptr') in one of the globals ('FUN' of class 'function') used in the future expression
      Backtrace:
           █
        1. └─Seurat:::NNHelper(...) test_objects.R:236:0
        2.   ├─base::do.call(what = "AnnoyNN", args = args)
        3.   └─Seurat:::AnnoyNN(...)
        4.     └─Seurat:::AnnoySearch(...)
        5.       └─future.apply::future_lapply(...)
        6.         └─future.apply:::future_xapply(...)
        7.           └─future.apply:::getGlobalsAndPackagesXApply(...)
        8.             └─future::getGlobalsAndPackages(expr, envir = envir, globals = globals)
        9.               ├─base::system.time(...)
       10.               └─future:::assert_no_references(globals, action = action)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test_differential_expression.R:104:1): (code run outside of `test_that()`)
      ERROR (test_objects.R:236:1): (code run outside of `test_that()`)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 330 ]
      Error: Test failures
      Execution halted
    ```

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
      ERROR (test-test-server.R:303:3): testServer works with async
      
      [ FAIL 9 | WARN 8 | SKIP 7 | PASS 1006 ]
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

*   checking examples ... ERROR
    ```
    Running examples in ‘spatialwarnings-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: generic_sews
    > ### Title: Generic Spatial Early-Warning signals
    > ### Aliases: generic_sews
    > 
    > ### ** Examples
    > 
    > 
    > data(serengeti)
    > gen_indic <- generic_sews(serengeti, subsize = 5, 
    +                            moranI_coarse_grain = TRUE)
    Error: Detected a non-exportable reference (‘externalptr’) in one of the globals (<unknown>) used in the future expression
    Timing stopped at: 0.226 0.016 0.241
    Execution halted
    ```

*   checking tests ...
    ```
    ...
       5.         └─future.apply:::future_xapply(...)
       6.           └─future.apply:::getGlobalsAndPackagesXApply(...)
       7.             └─future::getGlobalsAndPackages(expr, envir = envir, globals = globals)
       8.               ├─base::system.time(...)
       9.               └─future:::assert_no_references(globals, action = action)
      
      ── Skip (test-workflows.R:33:3): The workflow functions work ───────────────────
      Reason: On CRAN
      
      ── Skipped tests  ──────────────────────────────────────────────────────────────
      ● On CRAN (2)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      ERROR (test-display_matrix.R:36:5): display_matrix methods work
      ERROR (test-indicator_values-plosone.R:39:5): results matches those in PLOS One
      ERROR (test-nullfun.R:17:3): All null model methods work
      ERROR (test-size-reporting.R:9:3): Correct sizes are reported
      
      [ FAIL 4 | WARN 0 | SKIP 2 | PASS 61 ]
      Error: Test failures
      Execution halted
    ```

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

# sperrorest

<details>

* Version: 3.0.1
* GitHub: https://github.com/giscience-fsu/sperrorest
* Source code: https://github.com/cran/sperrorest
* Date/Publication: 2020-05-26 20:10:02 UTC
* Number of recursive dependencies: 67

Run `revdep_details(, "sperrorest")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    ...
    > 
    > library(rpart)
    > mypred_part <- function(object, newdata) predict(object, newdata)[, 2]
    > ctrl <- rpart.control(cp = 0.005) # show the effects of overfitting
    > # show the effects of overfitting
    > fit <- rpart(fo, data = ecuador, control = ctrl)
    > 
    > ### Non-spatial cross-validation:
    > mypred_part <- function(object, newdata) predict(object, newdata)[, 2]
    > nsp_res <- sperrorest(
    +   data = ecuador, formula = fo,
    +   model_fun = rpart,
    +   model_args = list(control = ctrl),
    +   pred_fun = mypred_part,
    +   progress = TRUE,
    +   smp_fun = partition_cv,
    +   smp_args = list(repetition = 1:2, nfold = 3)
    + )
    Error: Detected a non-exportable reference (‘externalptr’) in one of the globals (<unknown>) used in the future expression
    Timing stopped at: 0.047 0 0.047
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      ERROR (test-sperrorest-summary.R:39:3): sperrorest() produces correct output for binary response
      ERROR (test-sperrorest-summary.R:70:3): sperrorest() produces correct output for binary response
      ERROR (test-sperrorest-summary.R:89:3): summary.sperroresterror() produces correct output for binary
                response
      ERROR (test-sperrorest-summary.R:114:3): summary.sperroresterror() with pooled = FALSE produces correct
                output for binary response
      ERROR (test-sperrorest-summary.R:184:3): sperrorest() produces correct output for binary response for
                non-default arguments
      ERROR (test-sperrorest.R:37:3): output type (= list) for different logical combinations of
                error_rep and error_fold for par_mode = 'foreach' on LDA example
      ERROR (test-sperrorest.R:76:3): output length of list is correct for par_mode = 'foreach' on rpart
                example
      ERROR (test-sperrorest.R:99:3): sperrorest() variable importance (foreach)
      ERROR (test-sperrorest.R:124:3): sperrorest() produces correct output for binary response
      ERROR (test-sperrorest.R:150:3): sperrorest() when pred_fun = NULL
      ERROR (test-sperrorest.R:178:3): sperrorest correctly updates resampling object when using a
                sub-sample
      
      [ FAIL 12 | WARN 0 | SKIP 11 | PASS 21 ]
      Error: Test failures
      Execution halted
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
      Warning (test_simulation_results_class.R:352:3): simulation_results classes work
      Warning (test_simulation_results_class.R:352:3): simulation_results classes work
      Warning (test_simulation_results_class.R:352:3): simulation_results classes work
      Warning (test_simulation_results_class.R:352:3): simulation_results classes work
      Warning (test_simulation_results_class.R:352:3): simulation_results classes work
      Warning (test_simulation_results_class.R:352:3): simulation_results classes work
      Warning (test_simulation_results_class.R:352:3): simulation_results classes work
      Warning (test_simulation_results_class.R:352:3): simulation_results classes work
      Warning (test_simulation_results_class.R:352:3): simulation_results classes work
      Warning (test_simulation_results_class.R:352:3): simulation_results classes work
      Warning (test_simulation_results_class.R:352:3): simulation_results classes work
      Warning (test_simulation_results_class.R:352:3): simulation_results classes work
      Warning (test_simulation_results_class.R:352:3): simulation_results classes work
      Warning (test_simulation_results_class.R:358:3): simulation_results classes work
      Warning (test_simulation_results_class.R:358:3): simulation_results classes work
      Warning (test_simulation_results_class.R:358:3): simulation_results classes work
      ERROR (test_simulation_results_class.R:481:3): simulation_results classes work
      
      [ FAIL 1 | WARN 16922 | SKIP 0 | PASS 45 ]
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

