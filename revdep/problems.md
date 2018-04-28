# aroma.affymetrix

Version: 3.1.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.2Mb
      sub-directories of 1Mb or more:
        R             6.6Mb
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

*   checking examples ... ERROR
    ```
    ...
    37:    370    iris      ncol 24 e  500.0008 secs
    38:    378    iris      ncol 26 c  500.0009 secs
    39:    388    iris      ncol 28 c  500.0008 secs
    40:    402    iris      ncol 31 b 1500.0008 secs
    41:    411    iris      ncol 33 a 1500.0010 secs
    42:    419    iris      ncol 34 d  500.0010 secs
    43:    432    iris      ncol 37 b 1500.0009 secs
    44:    434    iris      ncol 37 d  500.0013 secs
    45:    436    iris      ncol 38 a 1500.0011 secs
    46:    438    iris      ncol 38 c  500.0010 secs
    47:    447    iris      ncol 40 b 1500.0010 secs
    48:    451    iris      ncol 41 a 1500.0010 secs
    49:    454    iris      ncol 41 d  500.0011 secs
    50:    497    iris      ncol 50 b 1500.0010 secs
        job.id problem algorithm  x y   time.running
    > 
    > # Estimate runtimes:
    > est = estimateRuntimes(tab, reg = tmp)
    Error in estimateRuntimes(tab, reg = tmp) : 
      Please install package 'ranger' for runtime estimation
    Execution halted
    ```

# biotmle

Version: 1.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DBI’ ‘Matrix’ ‘SuperLearner’ ‘biotmleData’
      All declared Imports should be used.
    ```

# brms

Version: 2.2.0

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.4Mb
      sub-directories of 1Mb or more:
        R     3.2Mb
        doc   2.4Mb
    ```

# codebook

Version: 0.5.8

## In both

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

*   checking installed package size ... NOTE
    ```
      installed size is  7.8Mb
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

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘shiny’
      All declared Imports should be used.
    ```

# methyvim

Version: 1.0.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘methyvim-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: methyheat
    > ### Title: Heatmap for methytmle objects
    > ### Aliases: methyheat
    > 
    > ### ** Examples
    > 
    > suppressMessages(library(SummarizedExperiment))
    > library(methyvimData)
    Error in library(methyvimData) : 
      there is no package called ‘methyvimData’
    Execution halted
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
    Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
      there is no package called ‘survival’
    Calls: estimateDeltaAB ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
    Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        R         3.0Mb
        data-ex   2.6Mb
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

*   checking sizes of PDF files under ‘inst/doc’ ... WARNING
    ```
      ‘gs+qpdf’ made some significant size reductions:
         compacted ‘QDNAseq.pdf’ from 465Kb to 209Kb
      consider running tools::compactPDF(gs_quality = "ebook") on these files
    ```

# sperrorest

Version: 2.1.5

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘RSAGA’
    ```

