# evprof 1.2.0

* Round noise of `get_dbscan_params()` to no decimals.
* Change number of iterations in `save_clustering_iterations()` from 12 to 6
* Fix wrong x-axis label in `plot_density_2D()`
* Global option `evprof.log` to avoid configuring all functions
* Function `plot_model_clusters()` renamed to `plot_connection_models()`
* Single shared legend for `plot_energy_models()`


# evprof 1.1.2

* Patch in function `convert_time_dt_to_plot_dt` that was causing errors in some OS


# evprof 1.1.1

* Improved the consistency of the provided example data sets
* Function `plot_points` can configure `start` hour when `log = TRUE`


# evprof 1.1.0

* Energy GMM inside of `evmodel` also contain the `ratio` of every `charging_rate`


# evprof 1.0.0

* Added functions to save and read the model in JSON instead of RDS files
* Bug fix in the `evmodel` printing function
* Default `log` value of function `detect_outliers` set to `TRUE`
* Replace all deprecated `aes_string` functions by using `.data[[var]]`
* Remove unused functions
* Remove `days` parameter from function `divide_by_disconnection`
* Print a message with time-cycles' table in function `divide_by_timecycle`
* Complete tests
* Including California EV sessions when loading the package
* Include examples in all exported functions
* CRAN release


# evprof 0.1.0

* First release
