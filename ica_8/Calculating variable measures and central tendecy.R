data <- read.csv("2010_White_House_Staff.csv")
# loading the dataset and renaming it
head(data)
# this shows the first 6 rows of the dataset
View(data)
# this will enable to view the data
install.packages("readr")
install.packages("dplyr")
library(readr)
library(dplyr)
#packages installed
dim(data)
#shows no. of rows and columns in the dataset
str(data)
#shows the structure of the data set where we the observations, 
#variable names and all the instances used
glimpse(data)
#makes the structure easy to read and lists the data neatly
#Calculating the central tendency: mean, median and mode of the salary
print(mean(data$Salary))
#calculated the mean of the salary column 
print(median(data$Salary))
#calculated the median of the salary column

#Converting character to factor for calculating mode
names <- c(1,2,4,5)
data[,names] <- lapply(data[,names],factor)
glimpse(data)

#Calculating Mode

summary(data[,c(1,2,4,5)])

#to clear the ambiguity of the Position.Title column
table(data$Position.Title)


print(sd(data$Salary))
#this is the value for standard deviation for Salary Column

range(data$Salary)
#minimum and maximum range are determined

quantile(data$Salary)
#calculating quantile for the salary column

IQR(data$Salary)
#calculating interquartile range for the salary column

var(data$Salary)
#calculating the variance for the salary column