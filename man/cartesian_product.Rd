\name{cartesian_product}
\alias{cartesian_product}
\title{
Compute the Cartesian product of named variables.
}
\description{
Compute the Cartesian product of named variables.
}
\usage{
cartesian_product(variable.names, envir = parent.frame())
}
\arguments{
  \item{variable.names}{Character vector of names of variables}
  \item{envir}{The environment in which to find names}
}
\value{The Cartesian product of all variables}

\examples{
library('cumddply')
x <- 1:2
y <- 10:11
cartesian_product(c('x', 'y'))
}
