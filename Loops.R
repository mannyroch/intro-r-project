#Loops

analyze <- function(filename){
  data <- read.csv(filename, header = F)
  mean_inf <- apply(data,2, mean)
  plot(mean_inf, main = filename)
}
dir("data")

for(i in c(1,3,5)){
  print(i + 1)
}

inflamation_files <-c("data/inflammation-01.csv",
                      "data/inflammation-02.csv",
                      "data/inflammation-03.csv",
                      "data/inflammation-04.csv", 
                      "data/inflammation-05.csv")

for (filename in inflamation_files){
  analyze(filename)
}

sum(x)

sum_x<-0
for(i in x){
  cat("i:", i, "\n")
  cat("sum_x:", sum_x, "\n")
  sum_x <-sum_x + i
}

exponentiate <- function(x,y){
  result <-1
  for (i in 1:y){
    result <- result*x
  }
  return(result) 
}

exponentiate(2,2)

#Exercise
#Write a function called "product" that takes arguments x and y and returns their ptoduct

product <-function(x,y){
  result <-0
  for (i in 1:y){
    result <- result + x
  }
  return(result)
}

product(3,1)

patient_mean_fxn <-function(filename){
  dat<- read.csv(filename, header = F)
  rows_cols <- dim(dat)
  dat_cols <- rows_cols[2]
  means <- numeric(dat_cols)
  for(i in 1:dat_cols){
    means[i] <- mean(dat[,i])
  }
  plot(means, main=filename)
}
patient_mean_fxn("data/inflammation-01.csv")


x <- 10:1
N <- length(x)
y <- 9:0

for(i in 1:N){
  print(x[i])
  print(y[i])
}

for(i in x){
  print(i)
}

#Exercise
#Calculate the mean over the rows
row_mean_fxn <-function(filename){
  dat<- data.matrix(read.csv(filename, header = F))
  rows_cols <- dim(dat)
  dat_rows <- rows_cols[1]
  means <- numeric(dat_rows)
  for(i in 1:dat_rows){
    means[i] <- mean(dat[i,])
  }
  plot(means, main=filename)
}
row_mean_fxn("data/inflammation-01.csv")

#Alternative
row_mean_fxn <-function(filename){
  dat<- read.csv(filename, header = F)
  rows_cols <- dim(dat)
  dat_rows <- rows_cols[1]
  mean_patients <- numeric(dat_rows)
  for(i in 1:dat_rows){
    row_i <- dat[i,]
    row_i <- as.numeric(row_i)
    mean_patients[i] <- mean(row_i)
  }
  plot(mean_patients, main=filename)
}
row_mean_fxn("data/inflammation-01.csv")
