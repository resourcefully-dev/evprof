
<!-- README.md is generated from README.Rmd. Please edit that file -->

# evprof <a href='https://mcanigueral.github.io/evprof/'><img src='man/figures/logo.png' align="right" height="139" /></a>

<!-- badges: start -->
<!-- [![CRAN status](https://www.r-pkg.org/badges/version/evprof)](https://cran.r-project.org/package=evprof) -->
<!-- [![R-CMD-check](https://github.com/mcanigueral/evprof/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/mcanigueral/evprof/actions/workflows/R-CMD-check.yaml) -->
<!-- [![Codecov test coverage](https://codecov.io/gh/mcanigueral/evprof/branch/main/graph/badge.svg)](https://app.codecov.io/gh/mcanigueral/evprof?branch=main) -->
<!-- badges: end -->

## Overview

{evprof} is part of a suite of packages to analyse, model and simulate
the charging behavior of electric vehicle users:

- [{evprof}](https://mcanigueral.github.io/evprof/): Electric Vehicle
  PROFiling
- [{evsim}](https://mcanigueral.github.io/evsim/): Electric Vehicle
  SIMulation

{evprof} aims to provide tools for classifying EV charging sessions into
generic groups with similar connection patterns named “user profiles”,
using the Gaussian Mixture Models (GMM) clustering method. Moreover,
functions to build stochastic models (based on GMM) for every user
profile are also provided in order to simulate new EV sessions.

The Gaussian Mixture Models clustering technique used in this package
aims to accomplish two different tasks that can be useful for multiple
purposes:

1.  Classification of EV charging sessions into generic user profiles
    (e.g. worktime, dinner, commuter, etc.), allowing to:

- Increase the knowledge on the different flexibility potential patterns
  from a real data set
- Define accurate tariffs according to the flexibility potential
  (implicit demand response scenario)
- Reduce the uncertainty of flexibility offers when participating in
  flexibility markets (explicit demand response scenario)

2.  Modeling every user profile with stochastic models, allowing to:

- Simulate high penetration of EV to estimate when an existing charging
  infrastructure will be saturated
- Simulate different scenarios of charging rates to analyse the impact
  of fast charging
- Size and plan a public charging infrastructure

## Usage

To use this package you will need a data set of EV charging sessions
with at least two fundamental variables: **connection start** time and
**connection duration**. With these two variables you will be able to
classify the sessions into generic user profiles, but to generate the EV
Gaussian Models you will also need the **energy** values.

If you have your own data set, the best place to start is the [Get
started
chapter](https://mcanigueral.github.io/evprof/articles/evprof.html) in
the package website.

## Installation

Since the package is not yet in CRAN, you can install the development
version of {evprof} from GitHub:

``` r
# install.packages("devtools")
devtools::install_github("mcanigueral/evprof")
```

## Getting help

If you encounter a clear bug, please open an issue with a minimal
reproducible example on
[GitHub](https://github.com/mcanigueral/evprof/issues). For questions
and other discussion, please send me a mail to
<marc.canigueral@udg.edu>.

For further technical details, you can read the following academic
articles about the methodology used in this paper:

- **Electric vehicle user profiles for aggregated flexibility
  planning**. IEEE PES Innovative Smart Grid Technologies Europe (ISGT
  Europe). IEEE, Oct. 18, 2021. DOI:
  [10.1109/isgteurope52324.2021.9639931](10.1109/isgteurope52324.2021.9639931).
- **Flexibility management of electric vehicles based on user profiles:
  The Arnhem case study**. International Journal of Electrical Power and
  Energy Systems, vol. 133. Elsevier BV, p. 107195, Dec. 2021. DOI:
  [10.1016/j.ijepes.2021.107195](10.1016/j.ijepes.2021.107195).
- **Potential benefits of scheduling electric vehicle sessions over
  limiting charging power**. CIRED Porto Workshop 2022: E-mobility and
  power distribution systems. Institution of Engineering and
  Technology, 2022. DOI: [10.1049/icp.2022.0744](10.1049/icp.2022.0744).

## Acknowledgements

This work has been developed under a PhD program in the University of
Girona (Catalonia) in collaboration with
[Resourcefully](https://resourcefully.nl/), an energy transition
consulting company based in Amsterdam, The Netherlands. The author would
also like to thank the city of Arnhem, in particular Peter Swart, for
facilitating access to the data used in the validation stage of this
research.

------------------------------------------------------------------------
