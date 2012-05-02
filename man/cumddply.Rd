\name{cumddply}
\alias{cumddply}
\title{
Cumulative ddply
}
\description{
Cumulative ddply
}
\usage{
cumddply(data, equality.variables, inequality.variables, func)
}
\arguments{
  \item{data}{Data to process}
  \item{equality.variables}{Character vector variables used to split data on equality}
  \item{inequality.variables}{Character vector variables used to split data on inequality}
  \item{func}{Function to call on each split of the data}
}
\value{
  Data frame with cumulative results combined across splits
}
\examples{
library('cumddply')

data(rt.data)

results <- cumddply(rt.data,
                    c('Subject', 'Block'),
                    c('Trial'),
                    function (df) {with(df, mean(RT))})

print(results)
}
