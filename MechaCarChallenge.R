#Load dplyr package
library(dplyr)
MechaCar_mpg_data <- read.csv("MechaCar_mpg.csv", stringsAsFactors = F, check.names = F) #import data set
#Create Multiple linear regression model 
linear_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg_data)
#Use summary function to determine p-value and r-squared value
summary(linear_regression)
