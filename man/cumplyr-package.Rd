\name{cumplyr-package}
\alias{cumplyr-package}
\alias{cumplyr}
\docType{package}
\title{
Extends ddply to allow calculation of cumulative quantities.
}
\description{
Extends ddply to allow calculation of cumulative quantities.
}
\details{
\tabular{ll}{
Package: \tab cumplyr\cr
Type: \tab Package\cr
Version: \tab 0.1-1\cr
Date: \tab 2012-05-02\cr
License: \tab MIT\cr
}
}
\author{
John Myles White

Maintainer: John Myles White <jmw@johnmyleswhite.com>
}
\keyword{ package }
\examples{
library('cumplyr')

data(rt.data)

results <- cumddply(rt.data,
                    c('Subject', 'Block'),
                    c('Trial'),
                    function (df) {with(df, mean(RT))})

print(results)
}
