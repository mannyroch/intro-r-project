#Review Day 1

#---Assignement---#
x <- 3
y <- 1
z <- x + y
# there's a shortcut of "option" + "-"  to get "<-"

#---Functions---#
square <- function(x){
  return(x^2)
}
# takes input and returns the output, in this case the square

#---Conditionals___#
#ways to control the flow of the program
isOdd <- function(x){
  if(x%%2 == 1){
    return(TRUE)
  }else{
    return(FALSE)
  }
}

#---For Loops---#
#Example, write a function that sums every element in the vector
mySum <- function(v){
  acc <- 0
  for(x in v){
    acc <- acc + x
  }
  return(acc)
}

#---Indexing---#
#[] for indexing
#() for function
#{} for controling flow


