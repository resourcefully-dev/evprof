# Detect outliers

Detect outliers

## Usage

``` r
detect_outliers(
  sessions,
  MinPts = NULL,
  eps = NULL,
  noise_th = 2,
  log = getOption("evprof.log", FALSE),
  start = getOption("evprof.start.hour")
)
```

## Arguments

- sessions:

  tibble, sessions data set in evprof standard format

- MinPts:

  MinPts parameter for DBSCAN clustering

- eps:

  eps parameter for DBSCAN clustering

- noise_th:

  noise threshold

- log:

  logical, whether to transform `ConnectionStartDateTime` and
  `ConnectionHours` variables to natural logarithmic scale (base =
  `exp(1)`).

- start:

  integer, start hour in the x axis of the plot.

## Value

sessions tibble with extra boolean column `Outlier`

## Examples

``` r
library(dplyr)
sessions_outliers <- california_ev_sessions %>%
  sample_frac(0.05) %>%
  detect_outliers(start = 3, noise_th = 5, eps = 2.5)
#> Trying with MinPts = 200 and eps = 2.5
#> Too much nosie (7 %). Consider a higher eps.
#> Trying with MinPts = 200 and eps = 3.75
#> Solution found: MinPts= 200 , eps = 2.73
```
