# `print` method for `evmodel` object class

`print` method for `evmodel` object class

## Usage

``` r
# S3 method for class 'evmodel'
print(x, ...)
```

## Arguments

- x:

  `evmodel` object (see this
  [link](https://mcanigueral.github.io/evprof/articles/evmodel.html) for
  more information)

- ...:

  further arguments passed to or from other methods.

## Value

nothing but prints information about the `evmodel` object

## Examples

``` r
print(california_ev_model)
#> EV sessions model of class "evmodel", created on 2024-01-29 
#> Timezone of the model: America/Los_Angeles 
#> The Gaussian Mixture Models of EV user profiles are built in:
#>   - Connection Models: logarithmic scale
#>   - Energy Models: logarithmic scale
#> 
#> Model composed by 2 time-cycles:
#>   1. Workday:
#>      Months = 1-12, Week days = 1-5
#>      User profiles = Visit, Worktime
#>   2. Weekend:
#>      Months = 1-12, Week days = 6-7
#>      User profiles = Visit

```
