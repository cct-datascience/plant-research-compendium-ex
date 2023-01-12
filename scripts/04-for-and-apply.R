####### For loops ##########

# Form of a for loop
# for (item in list_of_items) {
#   do_something(item)
# }

# create vector of volumes
volumes <- c(1.6, 6.3, 2, 5, 25)

# use for loop to calculate mass
for (volume in volumes) {
  mass <- 1.65 * volume ^ 0.9
  mass_lb <- mass * 2.2
  print(mass_lb)
}
# note that created objects appear in global environment (mass, mass_lb)-- 
# the values are the last object iterated over

# same for loop but now with an index and a vector to store values in
masses <- vector(mode = "numeric", length = length(volumes))
for (i in 1:length(volumes)) {
  mass<- 2.65 * volumes[i] ^ 0.9
  masses[i] <- mass
}


##### Exercises #####

birds = c('robin', 'woodpecker', 'blue jay', 'sparrow')
for (i in 1:length(birds)){
  print(birds[i])
}

radius <- c(1.3, 2.1, 3.5)
areas <- vector(mode = "numeric", length = length(radius))
for (i in 1:length(radius)){
  areas[i] <- pi * radius[i] ^ 2
}
areas

# Combining all the things
volume <- 4

# creating a a function from an if statement

est_mass <- function(volume) {
  if (volume > 5) {
  mass <- 2.65 * volume ^ 0.9
  } else {
    mass <- NA
  }
  return(mass)
}
# this function only takes 1 arg at a time because if is not a vectorized operation in r

# use a for loop to run the new function on a vector
volumes <- c(2.4, 7.3, 5)

for (volume in volumes) {
  mass <- est_mass(volume)
  print(mass)
}

###### apply  #######

c(1, 3, 2) * 2
# multiplication in r is vectorized-- will return vector


est_mass <- function(volume) {
    mass <- 2.65 * volume ^ 0.9
  return(mass)
}
volumes <- c(1.5, 3, 6)
est_mass(volumes)

library(stringr)
# stringr is library for working with strings

# capitalize names
str_to_sentence(c("dipodomys", "chaetodipus"))
g <- c("dipodomys", "chaetodipus", "dipodomys")
s <-  c("ordii", "baileyi", "spectabilis")

# write a function that combines genus & species with proper capitalization

combine_genus_species <- function(genus, species) {
  genus_cap <- str_to_sentence(genus)
  genus_species <- paste(genus_cap, species) #paste combines strings with space
  #paste0 combines strings with no space
  return(genus_species)
}

combine_genus_species(g,s)

data <- data.frame(g, s)
data$gs<- combine_genus_species(data$g, data$s)

## Apply family
# take a data object and output an object of the same size
#apply
#lapply
#sapply
#tapply

est_mass <- function(volume) {
  if (volume > 5) {
    mass <- 2.65 * volume ^ 0.9
  } else {
    mass <- NA
  }
  return(mass)
}

# sapply can let us run a non-vectorized function on a vector
sapply(volumes, est_mass)

est_mass_type <- function(volume, veg_type){
  if (veg_type == "tree"){
    mass <- 2.65 * volume^0.9
  } else {
    mass <- NA
  }
  return(mass)
}

plant_types <- c("shrub", "tree", "tree")
volumes

# use mapply when more than one argument varies each time

mapply(est_mass_type, volume = volumes, veg_type = plant_types)


