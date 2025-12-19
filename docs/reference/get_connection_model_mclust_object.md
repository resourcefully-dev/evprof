# Perform `mclust::Mclust` clustering for multivariate GMM

Perform
[`mclust::Mclust`](https://mclust-org.github.io/mclust/reference/Mclust.html)
clustering for multivariate GMM

## Usage

``` r
get_connection_model_mclust_object(
  sessions,
  k,
  mclust_tol = 1e-08,
  mclust_itmax = 10000,
  log = getOption("evprof.log", FALSE),
  start = getOption("evprof.start.hour")
)
```

## Arguments

- sessions:

  tibble, sessions data set in evprof

- k:

  number of clusters

- mclust_tol:

  tolerance parameter for clustering

- mclust_itmax:

  maximum number of iterations

- log:

  logical, whether to transform `ConnectionStartDateTime` and
  `ConnectionHours` variables to natural logarithmic scale (base =
  `exp(1)`).

- start:

  integer, start hour in the x axis of the plot.

## Value

mclust object
