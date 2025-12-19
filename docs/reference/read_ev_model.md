# Read an EV model JSON file and convert it to object of class `evmodel`

Read an EV model JSON file and convert it to object of class `evmodel`

## Usage

``` r
read_ev_model(file)
```

## Arguments

- file:

  path to the JSON file

## Value

object of class `evmodel`

## Examples

``` r
ev_model <- california_ev_model # Model of example

save_ev_model(ev_model, file = file.path(tempdir(), "evmodel.json"))

read_ev_model(file = file.path(tempdir(), "evmodel.json"))
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
