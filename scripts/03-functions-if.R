##### HOW TO WRITE A FUNCTION IN R ####

#### FORM OF A FUNCTION IN R

# function_name <- function(inputs) {
#   output_value <- do_something(inputs)
#   return(output_value)
# }


calc_shrub_vol <- function(length, width, height){
  area <- length*width
  volume <- area*height
  return(volume)
}


calc_shrub_vol(0.8, 2, 6)

?sum                             

calc_shrub_vol <- function(length, width, height=1){
  area <- length*width
  volume <- area*height
  return(volume)
}

calc_shrub_vol(1.3,6)

calc_shrub_vol(1.3, 6, height = 3)

calc_shrub_vol(length = 1, width =2, height = 3)



calc_shrub_vol()

###### HOW TO USE IF STATEMENTS IN R ######

# if (the conditional statement is TRUE ) {
#   do something
# }

x <- 6
if(x >5) {
  print(x)
}

x <- 4
if(x >5) {
  print(x)
} else {
  print("too small")
}


x <- .1
if(x >5) {
  print(x)
}  else if(x < 5 & x>1)
} else {
  print("somewhat small")
  else{
    print("way too small")
  }

  if (x > 5) {
    print(x)
  } else if(x < 5 & x > 1){
    print("somewhat small")
  } else {
    print("way too small")
  }
  
  ifelse(x == 5, "yes", "no")
  

  
  



