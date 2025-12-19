# Cut outliers based on minimum and maximum limits of ConnectionHours and ConnectionStartDateTime variables

Cut outliers based on minimum and maximum limits of ConnectionHours and
ConnectionStartDateTime variables

## Usage

``` r
cut_sessions(
  sessions,
  connection_hours_min = NA,
  connection_hours_max = NA,
  connection_start_min = NA,
  connection_start_max = NA,
  log = getOption("evprof.log", FALSE),
  start = getOption("evprof.start.hour")
)
```

## Arguments

- sessions:

  tibble, sessions data set in evprof standard format

- connection_hours_min:

  numeric, minimum of connection hours (duration). If NA the minimum
  value is considered.

- connection_hours_max:

  numeric, maximum of connection hours (duration). If NA the maximum
  value is considered.

- connection_start_min:

  numeric, minimum hour of connection start (hour as numeric). If NA the
  minimum value is considered.

- connection_start_max:

  numeric, maximum hour of connection start (hour as numeric). If NA the
  maximum value is considered.

- log:

  logical, whether to transform `ConnectionStartDateTime` and
  `ConnectionHours` variables to natural logarithmic scale (base =
  `exp(1)`).

- start:

  integer, start hour in the x axis of the plot.

## Value

session dataframe

## Examples

``` r
library(dplyr)
# Localize the outlying sessions above a certain threshold
california_ev_sessions %>%
  sample_frac(0.05) %>%
  plot_points(start = 3)


# For example sessions that start before 5 AM or that are
# longer than 20 hours are considered outliers
sessions_clean <- california_ev_sessions %>%
  sample_frac(0.05) %>%
  cut_sessions(
    start = 3,
    connection_hours_max = 20,
    connection_start_min = 5
  )
plot_points(sessions_clean, start = 3)

```
