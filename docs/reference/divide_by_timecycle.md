# Divide sessions by time-cycle

Divide sessions by time-cycle

## Usage

``` r
divide_by_timecycle(
  sessions,
  months_cycles = list(1:12),
  wdays_cycles = list(1:5, 6:7),
  start = getOption("evprof.start.hour")
)
```

## Arguments

- sessions:

  tibble, sessions data set in evprof standard format

- months_cycles:

  list containing Monthly cycles

- wdays_cycles:

  list containing Weekdays cycles

- start:

  integer, start hour in the x axis of the plot.

## Value

same sessions data set with extra column "Timecycle"

## Examples

``` r
library(dplyr)
sessions_timecycles <- california_ev_sessions %>%
  sample_frac(0.05) %>%
  divide_by_timecycle(
    months_cycles = list(1:12),
    wdays_cycles = list(1:5, 6:7)
  )
#> The considered time-cycles are:
#> 
#> 
#> |Timecycle |months |wdays |
#> |:---------|:------|:-----|
#> |1         |1-12   |1-5   |
#> |2         |1-12   |6-7   |

# The column `Timecycle` has been added
names(sessions_timecycles)
#>  [1] "Session"                 "ConnectionStartDateTime"
#>  [3] "ConnectionEndDateTime"   "ChargingStartDateTime"  
#>  [5] "ChargingEndDateTime"     "Power"                  
#>  [7] "Energy"                  "ConnectionHours"        
#>  [9] "ChargingHours"           "FlexibilityHours"       
#> [11] "ChargingStation"         "UserID"                 
#> [13] "Timecycle"              

library(ggplot2)
plot_points(sessions_timecycles) +
  facet_wrap(vars(Timecycle))

```
