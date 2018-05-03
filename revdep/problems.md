# aroma.affymetrix

Version: 3.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        R             2.3Mb
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

# batchtools

Version: 0.9.8

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘Rmpi’ in Rd xrefs
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    No configuration file found
    Created registry in '/scratch/hb/RtmpuArzxT/registry2c4854dfd304' using cluster functions 'Interactive'
    No configuration file found
    Created registry in '/scratch/hb/RtmpuArzxT/registry2c4852e5e4b3f' using cluster functions 'Interactive'
    No configuration file found
    Created registry in '/scratch/hb/RtmpuArzxT/registry2c48576c4a715' using cluster functions 'Interactive'
    No configuration file found
    Created registry in '/scratch/hb/RtmpuArzxT/registry2c4858cf0557' using cluster functions 'Interactive'
    Error in (function (value)  : Ooops.
    You are recommended to install the tinytex package to build PDF.FALSE
    This is pdfTeX, Version 3.1415926-2.5-1.40.14 (TeX Live 2013)
     restricted \write18 enabled.
    entering extended mode
    ! LaTeX Error: File `framed.sty' not found.
    
    ! Emergency stop.
    <read *> 
    
    Error: processing vignette 'batchtools.Rmd' failed with diagnostics:
    Failed to compile batchtools.tex. See batchtools.log for more info.
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘doMPI’
    ```

# biotmle

Version: 1.4.0

## In both

*   checking R code for possible problems ... NOTE
    ```
    .biotmle: no visible global function definition for ‘new’
    Undefined global functions or variables:
      new
    Consider adding
      importFrom("methods", "new")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

# brms

Version: 2.2.0

## In both

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
      installed size is  6.6Mb
      sub-directories of 1Mb or more:
        R     3.3Mb
        doc   2.4Mb
    ```

# codebook

Version: 0.5.8

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘labelled’ in Rd xrefs
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘graphics’ ‘pander’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 65 marked UTF-8 strings
    ```

# drake

Version: 5.1.2

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    pandoc: Could not fetch https://ropensci.github.io/drake/images/infographic.svg
    FailedConnectionException2 "ropensci.github.io" 443 True getAddrInfo: does not exist (Name or service not known)
    Error: processing vignette 'drake.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
    ```

# fiery

Version: 1.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘desc’
      All declared Imports should be used.
    ```

# lidR

Version: 1.4.2

## In both

*   checking package dependencies ... ERROR
    ```
    Packages required but not available: ‘mapview’ ‘mapedit’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# MetamapsDB

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘shiny’
      All declared Imports should be used.
    ```

# promises

Version: 1.0.1

## In both

*   checking Rd cross-references ... WARNING
    ```
    Unknown package ‘purrr’ in Rd xrefs
    ```

# QDNAseq

Version: 1.16.0

## In both

*   checking for missing documentation entries ... WARNING
    ```
    Undocumented code objects:
      ‘exportVCF’
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    ...
    34952128161396186.762.3708858114790791378.6112.9613144012258993327.593.6
    FINISHED!
    
    Total time:0minutes
    
    Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  : 
      Running 'texi2dvi' on 'QDNAseq.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `titlesec.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    
    ! Emergency stop.
    <read *> 
             
    l.95 \makeatletter
                      ^^M
    !  ==> Fatal error occurred, no output PDF file produced!
    Calls: buildVignettes -> texi2pdf -> texi2dvi
    Execution halted
    ```

# robotstxt

Version: 0.6.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    
     google.com                      Quitting from lines 48-51 (using_robotstxt.Rmd) 
    Error: processing vignette 'using_robotstxt.Rmd' failed with diagnostics:
    Could not resolve host: google.com; Name or service not known
    Execution halted
    ```

# sperrorest

Version: 2.1.5

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    pandoc: Could not fetch https://raw.githubusercontent.com/pat-s/sperrorest/master/man/figures/resamp-plot.png
    FailedConnectionException2 "raw.githubusercontent.com" 443 True getAddrInfo: does not exist (Name or service not known)
    Error: processing vignette 'spatial-modeling-use-case.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 67
    Execution halted
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RSAGA’
    ```

