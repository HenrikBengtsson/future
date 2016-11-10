# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.2 (2016-10-31) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |en                           |
|collate  |en_US.UTF-8                  |
|tz       |US/Pacific                   |
|date     |2016-11-10                   |

## Packages

|package  |*  |version |date       |source         |
|:--------|:--|:-------|:----------|:--------------|
|digest   |   |0.6.10  |2016-08-02 |cran (@0.6.10) |
|future   |   |1.1.1   |2016-10-11 |cran (@1.1.1)  |
|globals  |   |0.7.1   |2016-10-14 |cran (@0.7.1)  |
|listenv  |   |0.6.0   |2015-12-28 |CRAN (R 3.3.1) |
|markdown |   |0.7.7   |2015-04-22 |CRAN (R 3.3.1) |
|R.rsp    |   |0.30.0  |2016-05-15 |CRAN (R 3.3.1) |

# Check results

2 packages with problems

|package |version | errors| warnings| notes|
|:-------|:-------|------:|--------:|-----:|
|PSCBS   |0.61.0  |      0|        1|     0|
|PureCN  |1.2.3   |      0|        1|     1|

## PSCBS (0.61.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/PSCBS/issues

0 errors | 1 warning  | 0 notes

```
checking examples ... WARNING
Found the following significant warnings:

  Warning: '%<=%' is deprecated.
  Warning: '%<=%' is deprecated.
Deprecated functions may be defunct as soon as of the next release of
R.
See ?Deprecated.
```

## PureCN (1.2.3)
Maintainer: Markus Riester <markus.riester@novartis.com>

0 errors | 1 warning  | 1 note 

```
checking examples ... WARNING
Found the following significant warnings:

  Warning: '%<=%' is deprecated.
  Warning: '%<=%' is deprecated.
  Warning: '%<=%' is deprecated.
  Warning: '%<=%' is deprecated.
  Warning: '%<=%' is deprecated.
  Warning: '%<=%' is deprecated.
  Warning: '%<=%' is deprecated.
... 15 lines ...
  Warning: '%<=%' is deprecated.
Deprecated functions may be defunct as soon as of the next release of
R.
See ?Deprecated.
Examples with CPU or elapsed time > 5s
                    user system elapsed
segmentationPSCBS 62.064  0.136  64.053
runAbsoluteCN     28.764  0.076  32.010
filterTargets     19.044  0.028  22.583
findFocal         17.376  0.040  19.459
segmentationCBS   14.284  0.012  15.595

checking R code for possible problems ... NOTE
Found the following calls to data() loading into the global environment:
File ‘PureCN/R/bootstrapResults.R’:
  data(purecn.example.output)
File ‘PureCN/R/callAlterations.R’:
  data(purecn.example.output)
  data(purecn.example.output)
File ‘PureCN/R/callLOH.R’:
  data(purecn.example.output)
File ‘PureCN/R/createCurationFile.R’:
  data(purecn.example.output)
File ‘PureCN/R/curateResults.R’:
  data(purecn.example.output)
  data(purecn.example.output)
File ‘PureCN/R/plotAbs.R’:
  data(purecn.example.output)
File ‘PureCN/R/predictSomatic.R’:
  data(purecn.example.output)
File ‘PureCN/R/readCurationFile.R’:
  data(purecn.example.output)
See section ‘Good practice’ in ‘?data’.
```

