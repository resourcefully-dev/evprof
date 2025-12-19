# Density plot in 2D, considering Start time and Connection duration as variables

Density plot in 2D, considering Start time and Connection duration as
variables

## Usage

``` r
plot_density_2D(
  sessions,
  bins = 15,
  by = c("wday", "month", "year"),
  start = getOption("evprof.start.hour"),
  log = getOption("evprof.log", FALSE)
)
```

## Arguments

- sessions:

  tibble, sessions data set in evprof standard format

- bins:

  integer, parameter to pass to
  [`ggplot2::stat_density_2d`](https://ggplot2.tidyverse.org/reference/geom_density_2d.html)

- by:

  variable to facet the plot. Character being "wday", "month" or "year",
  considering the week to start at wday=1.

- start:

  integer, start hour in the x axis of the plot.

- log:

  logical, whether to transform `ConnectionStartDateTime` and
  `ConnectionHours` variables to natural logarithmic scale (base =
  `exp(1)`).

## Value

ggplot2 plot

## Examples

``` r
library(dplyr)

california_ev_sessions %>%
  sample_frac(0.05) %>%
  plot_density_2D(by = "wday", start = 3, bins = 15, log = FALSE)

```
