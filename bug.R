```R
# This function attempts to calculate the mean of a vector, but it has a subtle bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vectors
  } else {
    return(sum(x) / length(x))
  }
}

# Example usage:
my_vector <- c(1, 2, 3, 4, 5)
mean_result <- calculate_mean(my_vector)
print(paste("The mean is:", mean_result))

# Example with a potential issue: all values are NA
my_vector_na <- c(NA, NA, NA)
mean_result_na <- calculate_mean(my_vector_na)
print(paste("The mean of NA values is:", mean_result_na))

# Example with a potential issue: contains Inf or -Inf
my_vector_inf <- c(1, 2, Inf, 4, 5)
mean_result_inf <- calculate_mean(my_vector_inf)
print(paste("The mean of a vector with Inf is:", mean_result_inf))
```