# An Extension of plyr to Overlapping Data Problems

# Usage Example

Compute a running mean within each subset of trials in the current block using all trials before the current trial:

    library('cumplyr')

    data(rt.data)

    print(rt.data)
    
    results <- iddply(rt.data,
                      equality.variables = c('Subject', 'Block'),
                      upper.bound.variables = c('Trial'),
                      func = function (df) {with(df, mean(RT))})

    names(results) <- c('Subject', 'Block', 'Trial', 'CumulativeMeanRT')
    
    print(results)

# Second Usage Example

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
