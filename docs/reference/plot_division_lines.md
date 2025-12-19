# Iteration over evprof::plot_division_line function to plot multiple lines

Iteration over evprof::plot_division_line function to plot multiple
lines

## Usage

``` r
plot_division_lines(ggplot_points, n_lines, division_hour)
```

## Arguments

- ggplot_points:

  ggplot2 returned by evprof::plot_points function

- n_lines:

  number of lines to plot

- division_hour:

  Hour to divide the groups according to disconnection time

## Value

ggplot2 function

## Examples

``` r
library(dplyr)
california_ev_sessions %>%
  sample_frac(0.05) %>%
  plot_points(start = 3) %>%
  plot_division_lines(n_lines = 1, division_hour = 5)

```
