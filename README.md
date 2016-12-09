[![Stories in Ready](https://badge.waffle.io/ukgovdatascience/govstyle.png?label=ready&title=Ready)](https://waffle.io/ukgovdatascience/govstyle)
[![Build Status](https://travis-ci.org/ukgovdatascience/govstyle.svg?branch=master)](https://travis-ci.org/ukgovdatascience/govstyle)
[![codecov.io](http://codecov.io/github/ukgovdatascience/govstyle/coverage.svg?branch=master)](http://codecov.io/github/ukgovdatascience/govstyle?branch=master)
[![GitHub tag](https://img.shields.io/github/tag/ukgovdatascience/govstyle.svg)]()

# govstyle

A package for applying a [gov.uk](http://govuk-elements.herokuapp.com/) style to plots created in the R package [ggplot2](https://github.com/hadley/ggplot2).
This package is in an early stage of development; the intended end point is that it should be fully compliant with the gov.uk style guide.
The best source of docmentation is the [vignettes](vignettes/).

## Requirements

This can be installed either with `devtools::install_github('mangothecat/visualTest')` or xif you are unable to use `install_github`, download a zip of the latest version from [here]('https://github.com/ukgovdatascience/govstyle/archive/master.zip'] and use `devtools::install_local('path to zip file')`.

## Functions

* `theme_gov()`: Theme to be applied to plots produced in [ggplot2]() to give a government statistics publication feel.
* `gov_cols`: A vector of the [gov.uk](http://govuk-elements.herokuapp.com/colour/#colour-extended-palette) extended palette.
* `check_pal()`: Display the extended gov.uk palette in a pie chart.

## Examples

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
