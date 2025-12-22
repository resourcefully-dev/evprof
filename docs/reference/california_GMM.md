# Gaussian Mixture Models examples

Example of connection and energy GMM obtained from functions
`get_connection_models` and `get_energy_models` respectively. They have
been created using an Open source data set of EV charging sessions
provided by [ACN](https://acnportal.readthedocs.io/en/latest/). More
information about the development of the model in the evprof website:
<https://resourcefully-dev.github.io/evprof/articles/california.html>

## Usage

``` r
california_GMM
```

## Format

list

- connection_models:

  Tibble with the parameters of the bi-variate (connection start time
  and connection duration) GMM from the working/weekend days sessions of
  the California data set obtained from `get_connection_models`

- energy_models:

  Tibble with the parameters of the uni-variate (energy) GMM from the
  working/weekend days sessions of the California data set obtained from
  `get_energy_models`

## Source

<https://resourcefully-dev.github.io/evprof/articles/california.html>
