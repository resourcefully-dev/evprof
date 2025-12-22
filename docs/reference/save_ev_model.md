# Save the EV model object of class `evmodel` to a JSON file

Save the EV model object of class `evmodel` to a JSON file

## Usage

``` r
save_ev_model(evmodel, file)
```

## Arguments

- evmodel:

  object of class `evmodel` (see this
  [link](https://resourcefully-dev.github.io/evprof/articles/evmodel.html)
  for more information)

- file:

  character string with the path or name of the file

## Value

nothing but saves the `evmodel` object in a JSON file

## Examples

``` r
ev_model <- california_ev_model # Model of example

save_ev_model(ev_model, file = file.path(tempdir(), "evmodel.json"))
```
