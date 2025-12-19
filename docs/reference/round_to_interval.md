# Round to nearest interval

Round to nearest interval

## Usage

``` r
round_to_interval(dbl, interval)
```

## Arguments

- dbl:

  number to round

- interval:

  rounding interval

## Value

numeric value

## Examples

``` r
set.seed(1)
random_vct <- rnorm(10, 5, 5)
round_to_interval(random_vct, 2.5)
#>  [1]  2.5  5.0  0.0 12.5  7.5  0.0  7.5  7.5  7.5  2.5
```
