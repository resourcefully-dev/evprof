# Get the EV model object of class `evmodel`

Get the EV model object of class `evmodel`

## Usage

``` r
get_ev_model(
  names,
  months_lst = list(1:12, 1:12),
  wdays_lst = list(1:5, 6:7),
  connection_GMM,
  energy_GMM,
  connection_log,
  energy_log,
  data_tz
)
```

## Arguments

- names:

  character vector with the given names of each time-cycle model

- months_lst:

  list of integer vectors with the corresponding months of the year for
  each time-cycle model

- wdays_lst:

  list of integer vectors with the corresponding days of the week for
  each model (week start = 1)

- connection_GMM:

  list of different connection bivariate GMM obtained from
  `get_connection_models`

- energy_GMM:

  list of different energy univariate GMM obtained from
  `get_energy_models`

- connection_log:

  logical, true if connection models have logarithmic transformations

- energy_log:

  logical, true if energy models have logarithmic transformations

- data_tz:

  character, time zone of the original data (necessary to properly
  simulate new sessions)

## Value

object of class `evmodel`

## Examples

``` r
# The package evprof provides example objects of connection and energy
# Gaussian Mixture Models obtained from California's open data set
# (see California article in package website) created with functions
# `get_connection models` and `get_energy models`.

# For workdays sessions
workdays_connection_models <- evprof::california_GMM$workdays$connection_models
workdays_energy_models <- evprof::california_GMM$workdays$energy_models

# For weekends sessions
weekends_connection_models <- evprof::california_GMM$weekends$connection_models
weekends_energy_models <- evprof::california_GMM$weekends$energy_models

# Get the whole model
ev_model <- get_ev_model(
  names = c("Workdays", "Weekends"),
  months_lst = list(1:12, 1:12),
  wdays_lst = list(1:5, 6:7),
  connection_GMM = list(workdays_connection_models, weekends_connection_models),
  energy_GMM = list(workdays_energy_models, weekends_energy_models),
  connection_log = TRUE,
  energy_log = TRUE,
  data_tz = "America/Los_Angeles"
)

```
