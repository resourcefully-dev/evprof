# Divide sessions by disconnection day

Divide sessions by disconnection day

## Usage

``` r
divide_by_disconnection(
  sessions,
  division_hour,
  start = getOption("evprof.start.hour")
)
```

## Arguments

- sessions:

  tibble, sessions data set in evprof standard format

- division_hour:

  Hour to divide the groups according to disconnection time

- start:

  integer, start hour in the x axis of the plot.

## Value

same sessions data set with extra column "Disconnection"

## Examples

``` r
library(dplyr)
sessions_disconnection <- california_ev_sessions %>%
  sample_frac(0.05) %>%
  divide_by_disconnection(
    start = 2, division_hour = 5
  )

# The column `Disconnection` has been added
names(sessions_disconnection)
#>  [1] "Session"                 "ConnectionStartDateTime"
#>  [3] "ConnectionEndDateTime"   "ChargingStartDateTime"  
#>  [5] "ChargingEndDateTime"     "Power"                  
#>  [7] "Energy"                  "ConnectionHours"        
#>  [9] "ChargingHours"           "FlexibilityHours"       
#> [11] "ChargingStation"         "UserID"                 
#> [13] "Disconnection"          

library(ggplot2)
sessions_disconnection %>%
  tidyr::drop_na() %>%
  plot_points() +
  facet_wrap(vars(Disconnection))

```
