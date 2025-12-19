# Get energy univariate Gaussian Mixture Model

This function outputs a similar ellipses plot than function
[`plot_bivarGMM()`](https://resourcefully-dev.github.io/evprof/reference/plot_bivarGMM.md)
but using a different color for each user profile instead of clusters
(the clusters of a same profile have the same color now).

## Usage

``` r
get_energy_model_parameters(mclust_obj)
```

## Arguments

- mclust_obj:

  object of class `dnstyMcl` from function
  `get_energy_model_mclust_object`

## Value

tibble
