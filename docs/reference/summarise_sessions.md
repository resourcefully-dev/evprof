# Statistic summary of sessions features

Statistic summary of sessions features

## Usage

``` r
summarise_sessions(
  sessions,
  .funs,
  vars = evprof::sessions_summary_feature_names
)
```

## Arguments

- sessions:

  tibble, sessions data set in evprof standard format standard format

- .funs:

  A function to compute, e.g. `mean`, `max`, etc.

- vars:

  character vector, variables to compute the histogram for

## Value

Summary table

## Examples

``` r
summarise_sessions(california_ev_sessions, mean)
#> # A tibble: 1 × 4
#>   Power Energy ConnectionHours ChargingHours
#>   <dbl>  <dbl>           <dbl>         <dbl>
#> 1  3.72   14.7            6.89          4.06

```
