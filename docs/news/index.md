# Changelog

## evprof 1.2.0

- Round noise of
  [`get_dbscan_params()`](https://resourcefully-dev.github.io/evprof/reference/get_dbscan_params.md)
  to no decimals.
- Change number of iterations in
  [`save_clustering_iterations()`](https://resourcefully-dev.github.io/evprof/reference/save_clustering_iterations.md)
  from 12 to 6
- Fix wrong x-axis label in
  [`plot_density_2D()`](https://resourcefully-dev.github.io/evprof/reference/plot_density_2D.md)
- Global option `evprof.log` to avoid configuring all functions
- Function `plot_model_clusters()` renamed to
  [`plot_connection_models()`](https://resourcefully-dev.github.io/evprof/reference/plot_connection_models.md)
- Single shared legend for
  [`plot_energy_models()`](https://resourcefully-dev.github.io/evprof/reference/plot_energy_models.md)

## evprof 1.1.2

CRAN release: 2024-03-14

- Patch in function `convert_time_dt_to_plot_dt` that was causing errors
  in some OS

## evprof 1.1.1

CRAN release: 2024-02-05

- Improved the consistency of the provided example data sets
- Function `plot_points` can configure `start` hour when `log = TRUE`

## evprof 1.1.0

CRAN release: 2024-01-29

- Energy GMM inside of `evmodel` also contain the `ratio` of every
  `charging_rate`

## evprof 1.0.0

CRAN release: 2024-01-19

- Added functions to save and read the model in JSON instead of RDS
  files
- Bug fix in the `evmodel` printing function
- Default `log` value of function `detect_outliers` set to `TRUE`
- Replace all deprecated `aes_string` functions by using `.data[[var]]`
- Remove unused functions
- Remove `days` parameter from function `divide_by_disconnection`
- Print a message with time-cycles’ table in function
  `divide_by_timecycle`
- Complete tests
- Including California EV sessions when loading the package
- Include examples in all exported functions
- CRAN release

## evprof 0.1.0

- First release
