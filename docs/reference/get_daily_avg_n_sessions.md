# Get the daily average number of sessions given a range of years, months and weekdays

Get the daily average number of sessions given a range of years, months
and weekdays

## Usage

``` r
get_daily_avg_n_sessions(sessions, years, months, wdays)
```

## Arguments

- sessions:

  tibble, sessions data set in evprof standard format

- years:

  vector of integers, range of years to consider

- months:

  vector of integers, range of months to consider

- wdays:

  vector of integers, range of weekdays to consider

## Value

tibble with the number of sessions of each date in the given time period

## Examples

``` r
get_daily_avg_n_sessions(
  california_ev_sessions,
  year = 2018, months = c(5, 6), wdays = 1
)
#> [1] NaN
```
