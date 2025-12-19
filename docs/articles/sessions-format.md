# Standard data format

Most functions from
[evprof](https://github.com/resourcefully-dev/evprof/) and
[evsim](https://github.com/resourcefully-dev/evsim/) packages use an
input parameter called `sessions`. This parameter requires to be a
`tibble`, every row being an EV charging session and every column being
a variable defining the charging characteristics in terms of time,
power, energy, location, etc.

These variables must have standard names in order to use the functions
without errors. The names of the variables used in `evprof` and `evsim`
functions are provided by the object `sessions_feature_names`:

``` r

evprof::sessions_feature_names
```

    ##  [1] "Session"                 "ConnectionStartDateTime"
    ##  [3] "ConnectionEndDateTime"   "ChargingStartDateTime"  
    ##  [5] "ChargingEndDateTime"     "Power"                  
    ##  [7] "Energy"                  "ConnectionHours"        
    ##  [9] "ChargingHours"           "ChargingStation"        
    ## [11] "Socket"

Brief description of the **mandatory** variables to perform the
profiling and modelling of EV user profiles:

- **Session**: unique identifier for every charging session.
- **ConnectionStartDateTime**: date and time when the vehicle was
  connected.
- **ConnectionEndDateTime**: date and time when the vehicle was
  disconnected.
- **Energy**: energy charged in kWh.

Brief description of the **optional** variables:

- **ChargingStartDateTime**: date and time when the vehicle started
  charging (normally the same than `ConnectionStartDateTime`).
- **ChargingEndDateTime**: date and time when the vehicle finished
  charging (when the battery gets full).
- **Power**: average charging power in kW. It is an average value since
  the power profile is not a perfect step of constant power. However it
  should be approximately equal to the most common values for EV
  charging considering standard three-phase charging stations with 16A
  sockets: 3.7 kW (1phase-16A), 7.4 kW (2phase-16A) and 11 kW
  (3phase-16A).
- **ConnectionHours**: number of hours that the vehicle was connected.
- **ChargingHours**: number of hours that the vehicle was charging.
- **FlexibilityHours**: number of hours that the vehicle is connected
  but not charging.
- **ChargingStation**: unique identifier for the charging station of
  every charging sessions.
- **Socket**: number of the socket in the charging station (normally
  being 1 or 2).

Additionally to these variables, the `sessions` tibble will incorporate
other variables from the methodology (e.g. `Disconnection`, `Timecycle`,
`Cluster`, `Profile`, etc.) and every use case may have specific
variables like the ID of users, postalcode, etc. Of course that there is
no problem to add extra variables to the data set, the only condition is
that the variables described above must have these specific names.

Some notes about these variables:

- All `datetime` variables (`ConnectionStartDateTime`,
  `ConnectionEndDateTime`, `ChargingStartDateTime` and
  `ChargingEndDateTime`) must be in the time zone of the corresponding
  city. This can be set using function
  [`lubridate::with_tz`](https://lubridate.tidyverse.org/reference/with_tz.html).

- To create time-periods variables (`ConnectionHours` and
  `ChargingHours`) it is recommended to use the following function:

  `as.numeric(ConnectionEndDateTime - ConnectionStartDateTime, units = "hours")`
