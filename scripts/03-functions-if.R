### How to write functions in R

# Form of a function
# function_name <- function(inputs) {
#  output_value <- do_something(inputs)
#  return(output_value)
# }

# use a verb to start a function

calc_shrub_vol <- function(length, width, height) {
  area <- length * width
  volume <- area* height
  return(volume)
}

calc_shrub_vol(0.9, 2, 4)

######### How to use if statements in R ###########
# Form of an if statement
# if (the conditional statement is TRUE ) {
#   do something
# }

x <- 4
if (x > 5) {
  print(x)
} else {
  print("too small")
}





