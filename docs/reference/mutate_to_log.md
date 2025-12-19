# Logarithmic transformation to ConnectionStartDateTime and ConnectionHours variables

Logarithmic transformation to ConnectionStartDateTime and
ConnectionHours variables

## Usage

``` r
mutate_to_log(sessions, start = getOption("evprof.start.hour"), base = exp(1))
```

## Arguments

- sessions:

  sessions data set in standard format.

- start:

  integer, start hour in the x axis of the plot.

- base:

  logarithmic base
