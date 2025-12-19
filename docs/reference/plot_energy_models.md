# Compare density of estimated energy with density of real energy vector

Compare density of estimated energy with density of real energy vector

## Usage

``` r
plot_energy_models(energy_models, nrow = 2)
```

## Arguments

- energy_models:

  energy models returned by function `get_energy_models`

- nrow:

  integer, number of rows in the plot grid (passed to
  [`cowplot::plot_grid`](https://wilkelab.org/cowplot/reference/plot_grid.html))

## Value

ggplot

## Examples

``` r
# The package evprof provides example objects of connection and energy
# Gaussian Mixture Models obtained from California's open data set
# (see California article in package website) created with functions
# `get_connection models` and `get_energy models`.

# Get the working days energy models
energy_models <- evprof::california_GMM$workdays$energy_models

# Plot energy models
plot_energy_models(energy_models)


```
