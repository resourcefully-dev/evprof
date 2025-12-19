# Get Mclust object of univariate Gaussian Mixture Models

Get Mclust object of univariate Gaussian Mixture Models

## Usage

``` r
get_energy_model_mclust_object(energy_vct, log = getOption("evprof.log", TRUE))
```

## Arguments

- energy_vct:

  numeric vector, energy from sessions

- log:

  logical, whether to transform `ConnectionStartDateTime` and
  `ConnectionHours` variables to natural logarithmic scale (base =
  `exp(1)`).

## Value

object of class `dnstyMcl`
