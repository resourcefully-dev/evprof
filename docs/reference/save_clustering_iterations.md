# Save iteration plots in PDF file

Save iteration plots in PDF file

## Usage

``` r
save_clustering_iterations(
  sessions,
  k,
  filename,
  it = 6,
  seeds = round(runif(it, min = 1, max = 1000)),
  plot_scale = 2,
  points_size = 0.25,
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

  number of clusters

- filename:

  string defining the PDF output file path (with extension .pdf)

- it:

  number of iterations

- seeds:

  seed for each iteration

- plot_scale:

  scale of each iteration plot for a good visualization in pdf file

- points_size:

  integer, size of points in the scatter plot

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

nothing, but a PDF file is saved in the path specified by parameter
`filename`

## Examples

``` r
# \donttest{
temp_file <- file.path(tempdir(), "iteration.pdf")
save_clustering_iterations(california_ev_sessions, k = 2, it = 4, filename = temp_file)
#> Optimal seed: 652 with BIC = -271194
# }

```
