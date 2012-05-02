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
library('cumplyr')
x <- 1:2
y <- 10:11
cartesian_product(c('x', 'y'))

tmp.env <- new.env()
assign('x', 1:3, envir = tmp.env)
assign('y', 2:4, envir = tmp.env)
cartesian_product(c('x', 'y'), envir = tmp.env)
}
