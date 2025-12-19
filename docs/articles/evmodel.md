# EV model object

The EV model object defined by
[evprof](https://github.com/resourcefully-dev/evprof/) is generated with
function
[`get_ev_model()`](https://resourcefully-dev.github.io/evprof/reference/get_ev_model.md).
This function returns an object of class `evmodel`. This object prints a
summary of its components. The package provides an example of `evmodel`
created in the [California study case
article](https://mcanigueral.github.io/evprof/articles/california.html),
using the charging sessions data provided by
[ACN](https://acnportal.readthedocs.io/en/latest/).

``` r

evprof::california_ev_model
```

    ## EV sessions model of class "evmodel", created on 2024-01-29 
    ## Timezone of the model: America/Los_Angeles 
    ## The Gaussian Mixture Models of EV user profiles are built in:
    ##   - Connection Models: logarithmic scale
    ##   - Energy Models: logarithmic scale
    ## 
    ## Model composed by 2 time-cycles:
    ##   1. Workday:
    ##      Months = 1-12, Week days = 1-5
    ##      User profiles = Visit, Worktime
    ##   2. Weekend:
    ##      Months = 1-12, Week days = 6-7
    ##      User profiles = Visit

The `evmodel`object has two components:

- `metadata`: creation date, data time zone, if the scale of
  connection/energy models is natural or logarithmic, …

- `models`: tibble containing the different time-cycles models and
  information. The columns of this tibble are:

  - `time_cycle`: character, given name to the time-cycle

  - `months`: integer vector, corresponding months of the time-cycle

  - `wdays`: integer vector, corresponding days of the time-cycle (week
    starting on day 1)

  - `user_profiles`: tibble with every user profile GMM models. The
    columns of this tibble are:

    - `profile`: character vector, given name to the user profile
    - `ratio`: numeric, share of daily sessions corresponding to this
      profile
    - `connection_models`: tibble with the connection bi-variate GMM
    - `energy_models`: tibble with the energy uni-variate GMM

The model itself is composed by multiple Gaussian models (GMM). The
`connection_models` are Gaussian models of two variables (connection
start time and connection duration) and the `energy_models` are built
with a single variable (energy). Thus, the statistic features of
`connection_models` are a centroid ($`\mu`$), a covariance matrix
($`\Sigma`$) and the weight or ratio of the corresponding model.
Besides, the statistic features of `energy_models` are a mean ($`\mu`$),
a standard deviation ($`\sigma`$) and the weight or ratio of the
corresponding model.

Let’s take a look to these statistical features of the Worktime user
profile for Working days in the California model:

``` r

california_ev_model$models
```

    ## # A tibble: 2 × 4
    ##   time_cycle months     wdays     user_profiles   
    ##   <chr>      <list>     <list>    <list>          
    ## 1 Workday    <int [12]> <int [5]> <tibble [2 × 4]>
    ## 2 Weekend    <int [12]> <int [2]> <tibble [1 × 4]>

``` r

workday_model <- california_ev_model$models$user_profiles[[1]]
workday_model
```

    ## # A tibble: 2 × 4
    ##   profile  ratio connection_models energy_models   
    ##   <chr>    <dbl> <list>            <list>          
    ## 1 Visit    0.460 <tibble [3 × 3]>  <tibble [1 × 3]>
    ## 2 Worktime 0.540 <tibble [3 × 3]>  <tibble [1 × 3]>

``` r

worktime_model <- workday_model[2, ]
```

The connection model is a mixture of 3 bi-variate Gaussian Models:

``` r

worktime_model$connection_models
```

    ## [[1]]
    ## # A tibble: 3 × 3
    ##   mu        sigma         ratio
    ##   <list>    <list>        <dbl>
    ## 1 <dbl [2]> <dbl [2 × 2]> 0.305
    ## 2 <dbl [2]> <dbl [2 × 2]> 0.428
    ## 3 <dbl [2]> <dbl [2 × 2]> 0.267

On the other hand, the energy models can be based on the charging rate
(`Power` variable) of the sessions. It has been observed that the energy
demand increases together with the charging power (big vehicles have
larger batteries and can charge at higher rates). Thus, function
`get_energy_models` has the logical parameter `by_power` to fit the
Energy Gaussian Models for the different groups of charging powers
separately. In the case of California study case, we set
`by_power=FALSE`, that’s why we got the `Unknown` in the `energy_models`
tibble with a `ratio` of 1:

``` r

worktime_model$energy_models[[1]]
```

    ## # A tibble: 1 × 3
    ##   charging_rate ratio energy_models   
    ##   <chr>         <int> <list>          
    ## 1 Unknown           1 <tibble [8 × 3]>

Thus, the energy model of all Worktime sessions is a mixture of 9
Gaussian models:

``` r

worktime_model$energy_models[[1]]$energy_models[[1]]
```

    ## # A tibble: 8 × 3
    ##      mu sigma  ratio
    ##   <dbl> <dbl>  <dbl>
    ## 1  1.34 0.129 0.0204
    ## 2  1.78 0.129 0.164 
    ## 3  2.11 0.129 0.167 
    ## 4  2.48 0.129 0.158 
    ## 5  2.63 0.129 0.179 
    ## 6  3.01 0.129 0.0969
    ## 7  3.35 0.129 0.0941
    ## 8  3.65 0.129 0.120
