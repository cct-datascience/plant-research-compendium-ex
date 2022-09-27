########### How to write functions in R ###########

# Form of a function
# function_name <- function(inputs) {
#   output_value <- do_something(inputs)
#   return(output_value)
# }


calc_shrub_vol <- function(length, width, height) {
  area <- length * width
  volume <- area * height
  return(volume)
}

calc_shrub_vol(0.8, 2, 6)

calc_shrub_vol <- function(length, width, height = 1) {
  area <- length * width
  volume <- area * height
  return(volume)
}

calc_shrub_vol(1.3, 6, height = 3)
calc_shrub_vol(length = 1, width = 2, height = 3)
calc_shrub_vol(width = 2, length = 1, 3)

########### How to use if statements in R ###########

# Form of an if statement
# if (the conditional statement is TRUE ) {
#   do something
# }

x <- 0
if (x > 5) {
  print(x)
}

if(!file.exists("data/file1.csv")){
  download.url("https://data.com")
}

# heights <- read.csv("data_clean/saguaro_heights.csv")
# if()

if (x > 5) {
  print(x)
} else if(x < 5 & x > 1){
  print("somewhat small")
} else {
  print("way too small")
}

ifelse(x == 5, "yes", "no")

case_when()

