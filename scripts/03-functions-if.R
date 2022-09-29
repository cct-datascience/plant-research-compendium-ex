#### How to write a function in R  ####
# comment out all lines Ctrl+Shift+C or Code -> Comment/Uncomment
# ( ) need commas  
# { } don't need commas

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

#now let's say height is the same for all and are equal = 1
#then when running the function, I only need to input 2 number.

calc_shrub_vol <- function(length, width, height = 1) {
  area <- length * width
  volume <- area * height
  return(volume)
}

calc_shrub_vol(0.8, 2)

#no we can overwrite the default number 
calc_shrub_vol(1.3, 6, height = 3)

# you can also use the names of the arguments in the function to make it clear
calc_shrub_vol(length = 1, width = 2, height = 3)
calc_shrub_vol(width = 2, length = 1, 3)

############## How to use if statements in R ##############

# Form of an if statement
# if (the conditional statement is TRUE ) {
#   do something
# }

x <- 0
if (x > 5) {
  print(x)
}

#use if statement to download statement or skip is it exists
#exclamation point makes the statement negative ... if it's NOT...if IT DOESN'T

if(!file.exists("data/file1.csv")){
  download.url("https://data.com")
}

#another example if X is not a vector, the function will stop. Otherwise it will calculate standard error SE
SE <- function(x) {
  if(!is.vector(x)){
    stop("Input needs to be a vector")
  }
  sd(x, na.rm = TRUE)/sqrt(sum(!is.na(x)))
}

SE(c(1,5,3,5,7)) # will run
SE(data.frame(lenght = c(1,2,3,4))) # will show the error message

#didn't talk about this
# heights <- read.csv("data_clean/saguaro_heights.csv")
# if()

#use if statements with error messages

if (x > 5) {
  print(x)
} else if(x < 5 & x > 1){
  print("somewhat small")
} else {
  print("way too small")
}

#one line convention...use ifelse..
ifelse(x == 5, "yes", "no")

#easy way to do if else statement...will cover later
case_when()
