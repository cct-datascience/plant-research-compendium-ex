######How to write function in R######

###Forms of a function

# function name<-function(input){
#   output_value <- do_something(inouts)
#   return(output_value)
#   }

calc_shrub_vol <- function(length, width, height){
  area<-length*width
  volume<-area*height
  return(volume)
}

calc_shrub_vol(0.8, 2, 6)

calc_shrub_vol <- function(length, width, height=1){
  area<-length*width
  volume<-area*height
  return(volume)
}

calc_shrub_vol(length=0.8, width=2, height=6)
calc_shrub_vol(width=2, length=0.8, height=6)


#######How to use statements in R#######
#Forms of an if statement

# if (the condition statement is TRUE){
#   do something
# }

x<-0
if (x>5){
  print(x)
}


if(!file.exists("data/file1.csv")){
  download.url("https://data.com")
}

if (x>5){
  print(x)
} else if (x<5 & x>1){
    print ("somewhat small")
} else {
  print("way too small")
}
  
ifelse(x==,"yes", "no")

