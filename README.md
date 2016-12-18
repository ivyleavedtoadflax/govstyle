[![Stories in Ready](https://badge.waffle.io/ukgovdatascience/govstyle.png?label=ready&title=Ready)](https://waffle.io/ukgovdatascience/govstyle)
[![Build Status](https://travis-ci.org/ukgovdatascience/govstyle.svg?branch=master)](https://travis-ci.org/ukgovdatascience/govstyle)
[![Build status](https://ci.appveyor.com/api/projects/status/ra2p80x58kyct1v3/branch/master?svg=true)](https://ci.appveyor.com/project/ivyleavedtoadflax/govstyle/branch/master)
[![codecov.io](http://codecov.io/github/ukgovdatascience/govstyle/coverage.svg?branch=master)](http://codecov.io/github/ukgovdatascience/govstyle?branch=master)
[![GitHub tag](https://img.shields.io/github/tag/ukgovdatascience/govstyle.svg)]()

# govstyle

A package for applying a [gov.uk](http://govuk-elements.herokuapp.com/) style to plots created in the R package [ggplot2](https://github.com/hadley/ggplot2).
This package *is in an early stage of development*; the intended end point is that it should be fully compliant with the gov.uk style guide.

This package turns plots from this: 

![Basic ggplot2 plot](https://github.com/ukgovdatascience/govstyle/raw/master/vignettes/figure/figure1-1.png)

to this:

![govstyle plot](https://raw.githubusercontent.com/ukgovdatascience/govstyle/master/vignettes/figure/figure1d-1.png)

The best source of docmentation is the [vignettes](https://github.com/ukgovdatascience/govstyle/blob/master/vignettes/absence_statistics.md).
 
## Installation

To install, the package `devtools` is required, and can be installed with `install.packages('devtools')`.

`govstyle` can then be installed using `devtools::install_github('ukgovdatascience/govstyle')`.
Some users may not be able to use the `devtools::install_github()` commands as a result of network security settings.
If this is the case, `govstyle` can be installed by downloading the [zip of the repository](https://github.com/ukgovdatascience/govstyle/archive/master.zip) and installing the package locally using `devtools::install_local(<path to zip file>)`.

For testing purposes (not general usage), the package `visualTest` is required.
This can be installed with `devtools::install_github('mangothecat/visualTest')`.
For some users `devtools::install_local()` may also be required.

## Functions

* `theme_gov()`: Theme to be applied to plots produced in [ggplot2]() to give a government statistics publication feel.
* `gov_cols`: A vector of the [gov.uk](http://govuk-elements.herokuapp.com/colour/#colour-extended-palette) extended palette.
* `check_pal()`: Display the extended gov.uk palette in a pie chart.

## Examples

See [Vignette](https://github.com/ukgovdatascience/govstyle/blob/master/vignettes/absence_statistics.md) for in depth usage examples.

### theme_gov




```r
library(ggplot2)
library(dplyr)
#devtools::install_github("ukgovdatascience/govstyle")
library(govstyle)
```


```r
p <- mtcars %>%
  ggplot +
  aes(
    x = wt,
    y = mpg,
    col = factor(cyl)
    ) +
  geom_point()

p
```

![plot of chunk ggplot_theme_gov](figure/ggplot_theme_gov-1.png)

```r
p +
  theme_gov()
```

![plot of chunk ggplot_theme_gov](figure/ggplot_theme_gov-2.png)

### check_pal


```r
## Show gov.uk colours

check_pal()
```

![plot of chunk check_pal](figure/check_pal-1.png)

```r
## Show a subset of gov.uk colours

## Choose n colours:

check_pal(2)
```

![plot of chunk check_pal](figure/check_pal-2.png)

```r
check_pal(3)
```

![plot of chunk check_pal](figure/check_pal-3.png)

```r
check_pal(4)
```

![plot of chunk check_pal](figure/check_pal-4.png)

```r
## Pick a range of colours

check_pal(3:8)
```

![plot of chunk check_pal](figure/check_pal-5.png)

```r
check_pal(c(1,10))
```

![plot of chunk check_pal](figure/check_pal-6.png)

```r
## Pick colours manually

check_pal(
  x = gov_cols[c("green", "grass_green")]
  )
```

![plot of chunk check_pal](figure/check_pal-7.png)
