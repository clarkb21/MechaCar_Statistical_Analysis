#Deliverable 1
#Load dplyr package
library(dplyr)
MechaCar_mpg_data <- read.csv("MechaCar_mpg.csv", stringsAsFactors = F, check.names = F) #import data set
#Create Multiple linear regression model 
linear_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg_data)
#Use summary function to determine p-value and r-squared value
summary(linear_regression)

#Deliverable 2
#Import suspension coil file as a table
suspension_coil_data <- read.csv("Suspension_Coil.csv", stringsAsFactors = F, check.names = F)
#use summarize function and create a dataframe
total_summary <-  suspension_coil_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_Deviation=sd(PSI), .groups='keep')
#use group by to determine summary statistics for each lot
lot_summary <-  suspension_coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_Deviation=sd(PSI), .groups='keep')
