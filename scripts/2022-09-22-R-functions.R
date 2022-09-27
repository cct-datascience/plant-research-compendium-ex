## How to write functions in R

#Form of a function
# function_name <- function(inputs) {
#   output_value <- do_something(inputs)
#   return(output_value)
# }

# Pressing run anywhere in this group runs all the lines in that group
# A function runs all of the lines of code in the braces
# Using the arguments provided
# And then returns the output
calc_shrub_vol <- function(length, width, height) {
  area <- length * width
  volume <- area * height
  return(volume)
}

# Creating a function doesn’t run it.
# Call the function with some arguments.
calc_shrub_vol(0.8, 2, 6)

# Store the output to use it later in the program
shrub_vol <- calc_shrub_vol(0.8, 2, 6)

## Default arguments
# Defaults can be set for common inputs.
# For example, many of our shrubs are the same height so for those shrubs we only measure the length and width.
# So we want a default value for the height for cases where we don’t measure it

calc_shrub_vol <- function(length, width, height = 1) {
  area <- length * width
  volume <- area * height
  return(volume)
}

calc_shrub_vol(1.3, 6, height = 3)
calc_shrub_vol(length=1, width = 2, height = 3)
calc_shrub_vol(length = 0.8, width = 1.6, height = 2.0)


################################ How to use if statement in R ###############

