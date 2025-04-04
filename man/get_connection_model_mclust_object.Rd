% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clustering.R
\name{get_connection_model_mclust_object}
\alias{get_connection_model_mclust_object}
\title{Perform \code{mclust::Mclust} clustering for multivariate GMM}
\usage{
get_connection_model_mclust_object(
  sessions,
  k,
  mclust_tol = 1e-08,
  mclust_itmax = 10000,
  log = FALSE,
  start = getOption("evprof.start.hour")
)
}
\arguments{
\item{sessions}{tibble, sessions data set in evprof}

\item{k}{number of clusters}

\item{mclust_tol}{tolerance parameter for clustering}

\item{mclust_itmax}{maximum number of iterations}

\item{log}{logical, whether to transform \code{ConnectionStartDateTime} and
\code{ConnectionHours} variables to natural logarithmic scale (base = \code{exp(1)}).}

\item{start}{integer, start hour in the x axis of the plot.}
}
\value{
mclust object
}
\description{
Perform \code{mclust::Mclust} clustering for multivariate GMM
}
\keyword{internal}
