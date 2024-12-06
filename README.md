# R Bug: Incorrect Mean Calculation

This repository demonstrates a subtle bug in an R function designed to calculate the mean of a numeric vector. The function fails to correctly handle vectors containing `NA` (Not Available) values and `Inf` (Infinity) or `-Inf` (Negative Infinity) values.  The `sum()` function's behavior with these special values leads to unexpected and incorrect results.

The `bug.R` file contains the buggy code.  The solution, which addresses the issues, is provided in `bugSolution.R`.

This example highlights the importance of robust error handling and careful consideration of edge cases when writing numerical functions in R.