# Visualize BIC indicator to choose the number of clusters

The Baysian Information Criterion (BIC) is the value of the maximized
loglikelihood with a penalty on the number of parameters in the model,
and allows comparison of models with differing parameterizations and/or
differing numbers of clusters. In general the larger the value of the
BIC, the stronger the evidence for the model and number of clusters
(see, e.g. Fraley and Raftery 2002a).

## Usage

``` r
choose_k_GMM(
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

  tibble, sessions data set in evprof standard format

- k:

  sequence with the number of clusters, for example 1:10, for 1 to 10
  clusters.

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

BIC plot

## Examples

``` r
# \donttest{
choose_k_GMM(california_ev_sessions, k = 1:4, start = 3)

# }

```
