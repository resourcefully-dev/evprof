# Get a tibble of energy GMM for every user profile

This function simulates random energy values, makes the density curve
and overlaps the simulated density curve with the real density curve of
the user profile's energy values. This is useful to appreciate how the
modeled values fit the real ones and increase or decrease the number of
Gaussian components.

## Usage

``` r
get_energy_models(
  sessions_profiles,
  log = getOption("evprof.log", TRUE),
  by_power = FALSE
)
```

## Arguments

- sessions_profiles:

  tibble, sessions data set in evprof [standard
  format](https://mcanigueral.github.io/evprof/articles/sessions-format.html)
  with user profile attribute `Profile`

- log:

  logical, whether to transform `ConnectionStartDateTime` and
  `ConnectionHours` variables to natural logarithmic scale (base =
  `exp(1)`).

- by_power:

  Logical, true to fit the energy models for every charging rate
  separately

## Value

tibble

## Examples

``` r
# \donttest{
library(dplyr)

# Classify each session to the corresponding user profile
sessions_profiles <- california_ev_sessions_profiles %>%
  dplyr::sample_frac(0.05)

# Get a table with the energy GMM parameters
get_energy_models(sessions_profiles, log = TRUE)
#> # A tibble: 2 × 2
#>   profile  energy_models   
#>   <chr>    <list>          
#> 1 Visit    <tibble [1 × 4]>
#> 2 Worktime <tibble [1 × 4]>

# If there is a `Power` variable in the data set
# you can create an energy model per power rate and user profile
# First it is convenient to round the `Power` values for more generic models
sessions_profiles <- sessions_profiles %>%
  mutate(Power = round_to_interval(Power, 3.7)) %>%
  filter(Power < 11)
sessions_profiles$Power[sessions_profiles$Power == 0] <- 3.7
get_energy_models(sessions_profiles, log = TRUE, by_power = TRUE)
#> # A tibble: 2 × 2
#>   profile  energy_models   
#>   <chr>    <list>          
#> 1 Visit    <tibble [2 × 4]>
#> 2 Worktime <tibble [2 × 4]>

# }


```
