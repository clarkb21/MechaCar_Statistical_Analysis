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

#Deliverable 3
#perform t-test to determine if lots are statistically different from the population mean of 1500 PSI
t.test(x=(suspension_coil_data$PSI), mu=1500, alternative = "two.sided")

#Perform t-test with subsets for the three different manufacturing lots
lot1_test <- t.test(subset(suspension_coil_data, Manufacturing_Lot =="Lot1")$PSI, mu=1500)
lot2_test <- t.test(subset(suspension_coil_data, Manufacturing_Lot =="Lot2")$PSI, mu=1500)
lot3_test <- t.test(subset(suspension_coil_data, Manufacturing_Lot =="Lot3")$PSI, mu=1500)
