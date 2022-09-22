### Writing functions ###

# Form of a function
# function_name <- function(inputs) {
#   output_value <- do_something(inputs)
#   return(output_value)
# }

# Function example
calc_shrub_vol <- function(length, width, height) {
  area <- length * width
  volume <- area * height
  return(volume)
}

calc_shrub_vol(1,2,50)

# Function example
calc_shrub_vol <- function(length, width, height = 1) {
  area <- length * width
  volume <- area * height
  return(volume)
}

calc_shrub_vol(w = 2, l = 34)
calc_shrub_vol(5,67, h=12)
calc_shrub_vol(5,67)

# libraries, read in data, functions, call in those functions
# if else cases
if (x > 5) {
  print(x)
} else if(x < 5 & x > 1){
  print("somewhat small")
} else {
  print("way too small")
}

ifelse(x == 5, "yes", "no")
