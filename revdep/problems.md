# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.2 (2016-10-31) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |en                           |
|collate  |en_US.UTF-8                  |
|tz       |America/Los_Angeles          |
|date     |2017-02-18                   |

## Packages

|package  |*  |version |date       |source         |
|:--------|:--|:-------|:----------|:--------------|
|digest   |   |0.6.12  |2017-01-27 |cran (@0.6.12) |
|future   |   |1.2.0   |2016-11-12 |cran (@1.2.0)  |
|globals  |   |0.8.0   |2017-01-17 |cran (@0.8.0)  |
|listenv  |   |0.6.0   |2015-12-28 |CRAN (R 3.3.1) |
|markdown |   |0.7.7   |2015-04-22 |cran (@0.7.7)  |
|R.rsp    |   |0.40.0  |2016-12-06 |cran (@0.40.0) |

# Check results

1 packages with problems

|package |version | errors| warnings| notes|
|:-------|:-------|------:|--------:|-----:|
|PureCN  |1.2.3   |      0|        1|     1|

## PureCN (1.2.3)
Maintainer: Markus Riester <markus.riester@novartis.com>

0 errors | 1 warning  | 1 note 

```
checking whether package ‘PureCN’ can be installed ... WARNING
Found the following significant warnings:
  Warning: namespace ‘Matrix’ is not available and has been replaced
See ‘/home/hb/repositories/future/revdep/checks/PureCN.Rcheck/00install.out’ for details.

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

