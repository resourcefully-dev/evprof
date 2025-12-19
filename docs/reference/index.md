# Package index

## Data exploratory analysis

### Plots

- [`plot_points()`](https://resourcefully-dev.github.io/evprof/reference/plot_points.md)
  : Scatter plot of sessions
- [`plot_density_2D()`](https://resourcefully-dev.github.io/evprof/reference/plot_density_2D.md)
  : Density plot in 2D, considering Start time and Connection duration
  as variables
- [`plot_density_3D()`](https://resourcefully-dev.github.io/evprof/reference/plot_density_3D.md)
  : Density plot in 3D, considering Start time and Connection duration
  as variables
- [`plot_histogram()`](https://resourcefully-dev.github.io/evprof/reference/plot_histogram.md)
  : Histogram of a variable from sessions data set
- [`plot_histogram_grid()`](https://resourcefully-dev.github.io/evprof/reference/plot_histogram_grid.md)
  : Grid of multiple variable histograms

### Sessions data set analysis

- [`summarise_sessions()`](https://resourcefully-dev.github.io/evprof/reference/summarise_sessions.md)
  : Statistic summary of sessions features
- [`get_charging_rates_distribution()`](https://resourcefully-dev.github.io/evprof/reference/get_charging_rates_distribution.md)
  : Get charging rates distribution in percentages
- [`get_daily_n_sessions()`](https://resourcefully-dev.github.io/evprof/reference/get_daily_n_sessions.md)
  : Get daily number of sessions given a range of years, months and
  weekdays
- [`get_daily_avg_n_sessions()`](https://resourcefully-dev.github.io/evprof/reference/get_daily_avg_n_sessions.md)
  : Get the daily average number of sessions given a range of years,
  months and weekdays
- [`round_to_interval()`](https://resourcefully-dev.github.io/evprof/reference/round_to_interval.md)
  : Round to nearest interval

## Preprocessing

### DBSCAN outliers cleaning

- [`cut_sessions()`](https://resourcefully-dev.github.io/evprof/reference/cut_sessions.md)
  : Cut outliers based on minimum and maximum limits of ConnectionHours
  and ConnectionStartDateTime variables
- [`plot_kNNdist()`](https://resourcefully-dev.github.io/evprof/reference/plot_kNNdist.md)
  : Plot kNNdist
- [`get_dbscan_params()`](https://resourcefully-dev.github.io/evprof/reference/get_dbscan_params.md)
  : Get the minPts and eps values for DBSCAN to label only a specific
  percentage as noise
- [`plot_outliers()`](https://resourcefully-dev.github.io/evprof/reference/plot_outliers.md)
  : Plot outlying sessions
- [`detect_outliers()`](https://resourcefully-dev.github.io/evprof/reference/detect_outliers.md)
  : Detect outliers
- [`drop_outliers()`](https://resourcefully-dev.github.io/evprof/reference/drop_outliers.md)
  : Drop outliers

### Sessions division

- [`plot_division_lines()`](https://resourcefully-dev.github.io/evprof/reference/plot_division_lines.md)
  : Iteration over evprof::plot_division_line function to plot multiple
  lines
- [`divide_by_disconnection()`](https://resourcefully-dev.github.io/evprof/reference/divide_by_disconnection.md)
  : Divide sessions by disconnection day
- [`divide_by_timecycle()`](https://resourcefully-dev.github.io/evprof/reference/divide_by_timecycle.md)
  : Divide sessions by time-cycle

## Clustering

- [`choose_k_GMM()`](https://resourcefully-dev.github.io/evprof/reference/choose_k_GMM.md)
  : Visualize BIC indicator to choose the number of clusters

- [`cluster_sessions()`](https://resourcefully-dev.github.io/evprof/reference/cluster_sessions.md)
  :

  Cluster sessions with `mclust` package

- [`save_clustering_iterations()`](https://resourcefully-dev.github.io/evprof/reference/save_clustering_iterations.md)
  : Save iteration plots in PDF file

- [`plot_bivarGMM()`](https://resourcefully-dev.github.io/evprof/reference/plot_bivarGMM.md)
  : Plot Bivariate Gaussian Mixture Models

## Profiling

- [`define_clusters()`](https://resourcefully-dev.github.io/evprof/reference/define_clusters.md)
  : Define each cluster with a user profile interpretation
- [`set_profiles()`](https://resourcefully-dev.github.io/evprof/reference/set_profiles.md)
  : Classify sessions into user profiles

## Modeling

### Connection Models

- [`get_connection_models()`](https://resourcefully-dev.github.io/evprof/reference/get_connection_models.md)
  : Get a tibble of connection GMM for every user profile
- [`plot_connection_models()`](https://resourcefully-dev.github.io/evprof/reference/plot_connection_models.md)
  : Plot all bi-variable GMM (clusters) with the colors corresponding to
  the assigned user profile. This shows which clusters correspond to
  which user profile, and the proportion of every user profile.

### Energy Models

- [`get_energy_models()`](https://resourcefully-dev.github.io/evprof/reference/get_energy_models.md)
  : Get a tibble of energy GMM for every user profile
- [`plot_energy_models()`](https://resourcefully-dev.github.io/evprof/reference/plot_energy_models.md)
  : Compare density of estimated energy with density of real energy
  vector

### EV model object

- [`get_ev_model()`](https://resourcefully-dev.github.io/evprof/reference/get_ev_model.md)
  :

  Get the EV model object of class `evmodel`

- [`save_ev_model()`](https://resourcefully-dev.github.io/evprof/reference/save_ev_model.md)
  :

  Save the EV model object of class `evmodel` to a JSON file

- [`read_ev_model()`](https://resourcefully-dev.github.io/evprof/reference/read_ev_model.md)
  :

  Read an EV model JSON file and convert it to object of class `evmodel`
