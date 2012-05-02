# cartesian_product()
# Alternative to expand.grid() that takes the names of variables
# and environment in which to evaluate them.

cartesian_product <- function(variable.names, envir = parent.frame())
{
  size <- prod(sapply(variable.names,
                      function (variable) {length(get(variable, envir))}))
  res <- matrix(NA, ncol = length(variable.names), nrow = size)
  for (i in rev(1:length(variable.names)))
  {
    successor.size <- prod(sapply(variable.names[i:length(variable.names)],
                                  function (variable)
                                  {
                                    length(get(variable, envir))
                                  }))
    current.length <- length(get(variable.names[i], envir))
    res[, i] <- rep(get(variable.names[i], envir),
                    size / successor.size,
                    each = successor.size / current.length)
  }
  res <- data.frame(res)
  names(res) <- variable.names
  return(res)
}
