# Histogram of a variable from sessions data set

Histogram of a variable from sessions data set

## Usage

``` r
plot_histogram(sessions, var, binwidth = 1)
```

## Arguments

- sessions:

  tibble, sessions data set in evprof standard format

- var:

  character, column name to compute the histogram for

- binwidth:

  integer, with of histogram bins

## Value

ggplot plot

## Examples

``` r
plot_histogram(california_ev_sessions, "Power", binwidth = 2)

plot_histogram(california_ev_sessions, "Power", binwidth = 0.1)

```
