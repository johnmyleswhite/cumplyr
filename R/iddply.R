iddply <- function(data,
                   equality.variables = c(),
                   lower.bound.variables = c(),
                   upper.bound.variables = c(),
                   norm.ball.variables = list(),
                   func = function (df) {df})
{
  # All constraints should be disjoint.
  all.variables <- c(equality.variables,
                     lower.bound.variables,
                     upper.bound.variables,
                     names(norm.ball.variables))
  
  # For all constraining variables, calculate the unique, sorted values of that variable.
  # Place these into an environment.
  local.env <- new.env()
  for (variable in all.variables)
  {
    assign(variable, sort(unique(get(variable, data))), env = local.env)
  }
  
  # Find Cartesian product of all unqiue, sorted values of all variables
  cartesian.product <- cartesian_product(all.variables, envir = local.env)
    
  # Iterate over elements of the Cartesian product
  results <- data.frame()
  
  for (row.index in 1:nrow(cartesian.product))
  {
    local.data <- data
    
    for (variable in equality.variables)
    {
      local.data <- subset(local.data, get(variable, local.data) == cartesian.product[row.index, variable])
    }
    
    for (variable in lower.bound.variables)
    {
      local.data <- subset(local.data, get(variable, local.data) >= cartesian.product[row.index, variable])
    }
    
    for (variable in upper.bound.variables)
    {
      local.data <- subset(local.data, get(variable, local.data) <= cartesian.product[row.index, variable])
    }
    
    for (variable in names(norm.ball.variables))
    {
      # Implement norm here, i.e. <= target + r, >= target - r.
      local.data <- subset(local.data,
                           (get(variable, local.data) - cartesian.product[row.index, variable])^2 <= norm.ball.variables[[variable]]^2)
    }
    
    # Add row of new data to results containging value of function and current element from Cartesian product    
    results <- rbind(results, cbind(cartesian.product[row.index, ], func(local.data)))
  }
  
  return(results)
}
