# aroma.affymetrix

Version: 3.1.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1028.1Mb
      sub-directories of 1Mb or more:
        R            1024.9Mb
        help            1.1Mb
        testScripts     1.2Mb
    ```

# aroma.core

Version: 3.1.1

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 1025.6Mb
      sub-directories of 1Mb or more:
        R  1024.5Mb
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit' 'expectile' 'HaarSeg' 'mpcbs'
    ```

# batchtools

Version: 0.9.8

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    No configuration file found
    Created registry in '/scratch/henrik/1069740.cclc01.som.ucsf.edu/RtmpweyJmX/registry35d9e34e3dabd' using cluster functions 'Interactive'
    No configuration file found
    Created registry in '/scratch/henrik/1069740.cclc01.som.ucsf.edu/RtmpweyJmX/registry35d9e5679539f' using cluster functions 'Interactive'
    No configuration file found
    Created registry in '/scratch/henrik/1069740.cclc01.som.ucsf.edu/RtmpweyJmX/registry35d9e6f2ce5d1' using cluster functions 'Interactive'
    No configuration file found
    Created registry in '/scratch/henrik/1069740.cclc01.som.ucsf.edu/RtmpweyJmX/registry35d9e17720694' using cluster functions 'Interactive'
    Error in (function (value)  : Ooops.
    You are recommended to install the tinytex package to build PDF.FALSE
    This is pdfTeXk, Version 3.141592-1.40.3 (Web2C 7.5.6)
     %&-line parsing enabled.
    entering extended mode
    ! LaTeX Error: File `ifxetex.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'batchtools.Rmd' failed with diagnostics:
    Failed to compile batchtools.tex. See batchtools.log for more info.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: 'doMPI'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: 'Rmpi'
    ```

# brms

Version: 2.1.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Error: processing vignette 'brms_multilevel.ltx' failed with diagnostics:
    Running 'texi2dvi' on 'brms_multilevel.ltx' failed.
    LaTeX errors:
    ! LaTeX Error: File `inconsolata.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.47 \RequirePackage
                        [T1]{fontenc}^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        R     2.2Mb
        doc   2.3Mb
    ```

# civis

Version: 1.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1026.3Mb
      sub-directories of 1Mb or more:
        R     1024.4Mb
        help     1.4Mb
    ```

# drtmle

Version: 1.0.2

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Loading required package: nloptr
    Loading required package: quadprog
    Loading required package: gam
    Loading required package: splines
    Loading required package: foreach
    Loaded gam 1.15
    
    Error : 'predict.gam' is not an exported object from 'namespace:gam'
    Error : 'predict.gam' is not an exported object from 'namespace:gam'
    Error : 'predict.gam' is not an exported object from 'namespace:gam'
    Error : 'predict.gam' is not an exported object from 'namespace:gam'
    Error : 'predict.gam' is not an exported object from 'namespace:gam'
    Error : 'predict.gam' is not an exported object from 'namespace:gam'
    Error : 'predict.gam' is not an exported object from 'namespace:gam'
    Error : 'predict.gam' is not an exported object from 'namespace:gam'
    Error : 'predict.gam' is not an exported object from 'namespace:gam'
    Error : 'predict.gam' is not an exported object from 'namespace:gam'
    Quitting from lines 492-499 (using_drtmle.Rmd) 
    Error: processing vignette 'using_drtmle.Rmd' failed with diagnostics:
    matrix D in quadratic function is not positive definite!
    Execution halted
    ```

# fiery

Version: 1.1.0

## Newly fixed

*   checking tests ...
    ```
     ERROR
    Running the tests in 'tests/testthat.R' failed.
    Last 13 lines of output:
             onWSOpen = private$websocket_logic))
      10: stop("Failed to create server")
      
      == testthat results  ===========================================================
      OK: 236 SKIPPED: 0 FAILED: 7
      1. Error: life cycle events get fired (@test-Fire.R#171) 
      2. Error: errors in start and resume gets caught (@test-Fire.R#288) 
      3. Error: futures can be added and called (@test-Fire.R#317) 
      4. Error: ignite is blocked during run (@test-Fire.R#404) 
      5. Error: external triggers are fired (@test-Fire.R#424) 
      6. Error: showcase opens a browser (@test-Fire.R#453) 
      7. Error: is_running works (@test-Fire.R#529) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'desc'
      All declared Imports should be used.
    ```

# googleComputeEngineR

Version: 0.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1027.0Mb
      sub-directories of 1Mb or more:
        doc          1024.3Mb
        dockerfiles     2.3Mb
    ```

# kernelboot

Version: 0.1.4

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 1024.1Mb
      sub-directories of 1Mb or more:
        libs  1024.0Mb
    ```

# lidR

Version: 1.4.1

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available:
      'rgeos' 'gdalUtils' 'mapview' 'mapedit'
    
    Package suggested but not available for checking: 'rgdal'
    
    See section 'The DESCRIPTION file' in the 'Writing R Extensions'
    manual.
    ```

# MetamapsDB

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      'Matrix' 'shiny'
      All declared Imports should be used.
    ```

# origami

Version: 0.8.0

## In both

*   checking examples ... WARNING
    ```
    checking a package with encoding  'UTF-8'  in an ASCII locale
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: 'methods'
      All declared Imports should be used.
    ```

# penaltyLearning

Version: 2017.12.08

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1024.2Mb
      sub-directories of 1Mb or more:
        data  1024.0Mb
    ```

# PSCBS

Version: 0.63.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 1025.9Mb
      sub-directories of 1Mb or more:
        data-ex  1024.0Mb
    ```

# QDNAseq

Version: 1.12.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      'exportVCF'
    All user-level objects in a package should have documentation entries.
    See chapter 'Writing R documentation files' in the 'Writing R
    Extensions' manual.
    ```

# sperrorest

Version: 2.1.1

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Error in re-building vignettes:
      ...
    Could not fetch https://raw.githubusercontent.com/pat-s/sperrorest/master/inst/figure/resamp-plot.png
    HttpExceptionRequest Request {
      host                 = "raw.githubusercontent.com"
      port                 = 443
      secure               = True
      requestHeaders       = []
      path                 = "/pat-s/sperrorest/master/inst/figure/resamp-plot.png"
      queryString          = ""
      method               = "GET"
      proxy                = Nothing
      rawBody              = False
      redirectCount        = 10
      responseTimeout      = ResponseTimeoutDefault
      requestVersion       = HTTP/1.1
    }
     (InternalException (HandshakeFailed (Error_Protocol ("certificate has unknown CA",True,UnknownCa))))
    Error: processing vignette 'spatial-modeling-use-case.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 61
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: 'RSAGA'
    ```

