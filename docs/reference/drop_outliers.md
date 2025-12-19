# Drop outliers

Drop outliers

## Usage

``` r
drop_outliers(sessions)
```

## Arguments

- sessions:

  tibble, sessions data set in evprof standard format

## Value

sessions without outliers nor column `Outlier`

## Examples

``` r
library(dplyr)
sessions_outliers <- california_ev_sessions %>%
  sample_frac(0.05) %>%
  detect_outliers(start = 3, noise_th = 5, eps = 2.5)
#> Trying with MinPts = 200 and eps = 2.5
#> Too much nosie (6 %). Consider a higher eps.
#> Trying with MinPts = 200 and eps = 3.75
#> Solution found: MinPts= 200 , eps = 2.526

plot_outliers(sessions_outliers, start = 3)


sessions_clean <- drop_outliers(sessions_outliers)

plot_points(sessions_clean, start = 3)


```
