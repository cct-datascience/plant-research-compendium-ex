SE <- function(x) {
  if(is.vector(x)) {
  sd(x, na.rm = TRUE)/sum(!is.na(x))
}
  }  

# function_name <- function(inputs) {
#   output_value <- do_something(inputs)
#   return(output_value)
# }

# write a function
# to calculate the volume of shrub

calc_shrub_vol <- function(length, width, height) {
  area <- length * width
  volume <- area * height
  return(volume)
}

calc_shrub_vol(0.8, 2, 7)

# you can refactor


calc_shrub_vol <- function(length, width, height = 1) {
  area <- length * width
  volume <- area * height
  return(volume)
}

calc_shrub_vol(3,2) 

# you can override the default

# for loops are good for iterations


#### how to use if statements in R ###
# if (the conditional statement is TRUE){
#   do something
# }

x <- 6
if (x > 5){
  print(x)
}

