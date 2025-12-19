# Get charging rates distribution in percentages

Get charging rates distribution in percentages

## Usage

``` r
get_charging_rates_distribution(sessions, unit = "year")
```

## Arguments

- sessions:

  tibble, sessions data set in evprof standard format

- unit:

  character, lubridate `floor_date` unit parameter

## Value

tibble

## Examples

``` r
get_charging_rates_distribution(california_ev_sessions, unit="month")
#> # A tibble: 72 × 4
#>    datetime            power     n   ratio
#>    <dttm>              <dbl> <int>   <dbl>
#>  1 2018-10-01 00:00:00   3.7   686 0.0228 
#>  2 2018-10-01 00:00:00   7.4   103 0.00342
#>  3 2018-11-01 00:00:00   3.7   923 0.0307 
#>  4 2018-11-01 00:00:00   7.4   240 0.00797
#>  5 2018-12-01 00:00:00   3.7   782 0.0260 
#>  6 2018-12-01 00:00:00   7.4   202 0.00671
#>  7 2019-01-01 00:00:00   3.7  1069 0.0355 
#>  8 2019-01-01 00:00:00   7.4   246 0.00817
#>  9 2019-02-01 00:00:00   3.7   965 0.0320 
#> 10 2019-02-01 00:00:00   7.4   263 0.00873
#> # ℹ 62 more rows
get_charging_rates_distribution(california_ev_sessions, unit="month")
#> # A tibble: 72 × 4
#>    datetime            power     n   ratio
#>    <dttm>              <dbl> <int>   <dbl>
#>  1 2018-10-01 00:00:00   3.7   686 0.0228 
#>  2 2018-10-01 00:00:00   7.4   103 0.00342
#>  3 2018-11-01 00:00:00   3.7   923 0.0307 
#>  4 2018-11-01 00:00:00   7.4   240 0.00797
#>  5 2018-12-01 00:00:00   3.7   782 0.0260 
#>  6 2018-12-01 00:00:00   7.4   202 0.00671
#>  7 2019-01-01 00:00:00   3.7  1069 0.0355 
#>  8 2019-01-01 00:00:00   7.4   246 0.00817
#>  9 2019-02-01 00:00:00   3.7   965 0.0320 
#> 10 2019-02-01 00:00:00   7.4   263 0.00873
#> # ℹ 62 more rows
```
