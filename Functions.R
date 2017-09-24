#Functions in R

fahr_to_kelvin <- function(temp){
  kelvin <- 273.15 + ((temp-32)*(5/9))
  return(kelvin)
}

# convert kelvin to celcius
kelvin_to_celcius <- function(t){
  celcius <- t - 273.15 
  return(celcius)
}

fahr_to_celcius <- function(temp){
  kelvin <- fahr_to_kelvin(temp)
  celcius <- kelvin_to_celcius(kelvin)
  return(celcius)
}

#Exercise
#Define a function called "fence", whcih takes two vectors and returns the second vector concatenated to the first

concat_vectors <- function(x,y){
  vector <- c(y,x)
  return(vector)
}

vec_1 <- c("Arjun", "is", "awesome")
vec_2 <- c(12,15,32,3)

input_1 <- 20

mySum <- function(input_1, input_2 = 20){
  output <- input_1 + input_2
  return(output)
}

#Function to center my data
#desired - value to center on
center <- function(data, desired){
  #return a new vector containing original data centured around the desired value
  #example: center(c(1,2,3),0) => c(-1,0,1)
  new_data <- (data - mean(data)+ desired)
  return(new_data)
}

dat <- read.csv("data/inflammation-01.csv", header = F)
centered <- center(dat[,4], 0)

#----Apply functions----
patient_1 <- dat[1,]

avg_day_inf <- apply(dat, 2, mean)

plot(avg_day_inf)

max_day_inf <- apply(dat, 2, max)
plot(max_day_inf)

min_day_inf <- apply(dat, 2, min)
plot(min_day_inf)
  
#Exercise 2
#create a dunction called "analyze" whose input is the name of of a dataset and output is a plot of the mean inflamation per day
analyze <- function(name){
  data <- read.csv(name, header = F)
  mean_inf <- apply(data,2, mean)
  plot(mean_inf)
}