\name{iddply}
\alias{iddply}
\title{
ddply with inequality constraints
}
\description{
ddply with inequality constraints
}
\usage{
iddply(data,
       equality.variables,
       lower.bound.variables,
       upper.bound.variables,
       norm.ball.variables,
       func)
}
\arguments{
  \item{data}{Data to process}
  \item{equality.variables}{Character vector of variables used to split data on equality}
  \item{lower.bound.variables}{Character vector of variables used to split data on lower bound inequalities}
  \item{upper.bound.variables}{Character vector of variables used to split data on upper bound inequalities}
  \item{norm.ball.variables}{Character vector of variables used to split data on norm ball inequalities}
  \item{func}{Function to call on each split-out subset of the data}
}
\value{
  Data frame with results combined across splits
}
\examples{
library('cumplyr')

data <- data.frame(Time = 1:5, Value = seq(1, 9, by = 2))

iddply(data,
       equality.variables = c('Time'),
       lower.bound.variables = c(),
       upper.bound.variables = c(),
       norm.ball.variables = list(),
       func = function (df) {with(df, mean(Value))})

iddply(data,
       equality.variables = c(),
       lower.bound.variables = c('Time'),
       upper.bound.variables = c(),
       norm.ball.variables = list(),
       func = function (df) {with(df, mean(Value))})

iddply(data,
       equality.variables = c(),
       lower.bound.variables = c(),
       upper.bound.variables = c('Time'),
       norm.ball.variables = list(),
       func = function (df) {with(df, mean(Value))})

iddply(data,
       equality.variables = c(),
       lower.bound.variables = c(),
       upper.bound.variables = c(),
       norm.ball.variables = list('Time' = 1),
       func = function (df) {with(df, mean(Value))})

iddply(data,
       equality.variables = c(),
       lower.bound.variables = c(),
       upper.bound.variables = c(),
       norm.ball.variables = list('Time' = 2),
       func = function (df) {with(df, mean(Value))})

iddply(data,
       equality.variables = c(),
       lower.bound.variables = c(),
       upper.bound.variables = c(),
       norm.ball.variables = list('Time' = 5),
       func = function (df) {with(df, mean(Value))})
}
