[![Stories in Ready](https://badge.waffle.io/UKGov-Data-Science/govstyle.png?label=ready&title=Ready)](https://waffle.io/UKGov-Data-Science/govstyle)
[![Build Status](https://travis-ci.org/ivyleavedtoadflax/govstyle.svg?branch=master)](https://travis-ci.org/ivyleavedtoadflax/govstyle)
[![codecov.io](http://codecov.io/github/ivyleavedtoadflax/govstyle/coverage.svg?branch=master)](http://codecov.io/github/ivyleavedtoadflax/govstyle?branch=master)

# govstyle

A package for producing graphics following the [gov.uk](http://www.gov.uk) style.

## Functions

* `theme_gov()`: Theme to be applied to plots produced in [ggplot2]() to give a government statistics publication feel.
* `check_pal()`: Display the a gov.uk recommended colours in a pie chart.
* `gov_cols`: A vector of the [gov.uk]() recommended colours.

## Examples

### theme_gov




```r
library(ggplot2)
library(dplyr)
#devtools::install_github("ivyleavedtoadflax/govstyle")
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

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3-1.png)

```r
p +
  theme_gov()
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3-2.png)

### check_pal


```r
## Show gov.uk colours

check_pal()
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4-1.png)

```r
## Show a subset of gov.uk colours

## Choose n colours:

check_pal(2)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4-2.png)

```r
check_pal(3)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4-3.png)

```r
check_pal(4)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4-4.png)

```r
## Pick a range of colours

check_pal(3:8)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4-5.png)

```r
check_pal(c(1,10))
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4-6.png)

```r
## Pick colours manually

check_pal(
  x = gov_cols[c("green", "grass_green")]
  )
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4-7.png)
