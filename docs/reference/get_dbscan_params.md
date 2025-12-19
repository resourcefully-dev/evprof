# Get the minPts and eps values for DBSCAN to label only a specific percentage as noise

Get the minPts and eps values for DBSCAN to label only a specific
percentage as noise

## Usage

``` r
get_dbscan_params(
  sessions,
  MinPts,
  eps0,
  noise_th = 2,
  eps_offset_pct = 0.9,
  eps_inc_pct = 0.02,
  log = getOption("evprof.log", FALSE),
  start = getOption("evprof.start.hour")
)
```

## Arguments

- sessions:

  tibble, sessions data set in evprof standard format

- MinPts:

  DBSCAN MinPts parameter

- eps0:

  DBSCAN eps parameter corresponding to the elbow of kNN dist plot

- noise_th:

  noise threshold

- eps_offset_pct:

  eps_offset_pct

- eps_inc_pct:

  eps_inc_pct

- log:

  logical, whether to transform `ConnectionStartDateTime` and
  `ConnectionHours` variables to natural logarithmic scale (base =
  `exp(1)`).

- start:

  integer, start hour in the x axis of the plot.

## Value

tibble with minPts and eps parameters, and the corresponding noise
