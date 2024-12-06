```R
# Improved function to handle NA and Inf values
calculate_mean_robust <- function(x) {
  # Remove NA values
  x <- x[!is.na(x)]
  
  # Check for Inf or -Inf values
  if (any(is.infinite(x))) {
    return(NA) # Or handle Inf/ -Inf as appropriate for your use case
  } else if (length(x) == 0) {
    return(NA) # Handle empty vectors
  } else {
    return(mean(x)) #Use the built-in mean function for efficiency and robustness 
  }
}

# Example Usage with improved function
my_vector <- c(1, 2, 3, 4, 5)
mean_result <- calculate_mean_robust(my_vector)
print(paste("The mean is:", mean_result))

my_vector_na <- c(NA, NA, 1, 2, 3)
mean_result_na <- calculate_mean_robust(my_vector_na)
print(paste("The mean of NA values is:", mean_result_na))

my_vector_inf <- c(1, 2, Inf, 4, 5)
mean_result_inf <- calculate_mean_robust(my_vector_inf)
print(paste("The mean of a vector with Inf is:", mean_result_inf))
```