\name{rt.data}
\alias{rt.data}
\docType{data}
\title{
rt.data
}
\description{
RT data
}
\usage{data(rt.data)}
\format{
  A data frame with 12 observations on the following 4 variables.
  \describe{
    \item{\code{Subject}}{Subject ID number}
    \item{\code{Block}}{Block ID}
    \item{\code{Trial}}{Trial ID}
    \item{\code{RT}}{RT measurement}
  }
}
\examples{
data(rt.data)

with(rt.data, mean(RT))
}
\keyword{datasets}
