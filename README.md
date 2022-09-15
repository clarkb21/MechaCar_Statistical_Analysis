# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![image](https://user-images.githubusercontent.com/104038813/190408402-4ae5f45b-6200-45d8-bfab-64a073010f94.png)
- **Which variables provide a non-random amount of variance to the mpg values in the dataset?** 
  1. Vehicle length, ground clearance, and the y-intercept have the highest impact on the mpg values in the datset. 
  2. Vehicle weight also seems to most likely provide non-random amount of variance, but not on the same scale as vehicle length. 
- **Is the slope of the linear model considered to be zero?**
  1. The slope of the linear regression model would not be zero.
  2. The p-value is extremely small, much smaller than the standard significance level of .05. 
  3. Therefore, we have sufficient evidence to reject the null hypothesis, meaning that the slope of the line is not zero.
- **Does this linear model predict mpg of MechaCar prototypes effectively?** 
  1. Yes, this linear model does predict the Mechcar prototypes effectively due to the high r-squared value. 
  2. An r-squared value of .7149 indicates that roughly 71% of the variability of the mpg variable is explained using this model. 

## Summary Statistics on Suspension Coils

![Deliverable_2_Lot_Summary](https://user-images.githubusercontent.com/104038813/190415319-a200b914-f339-4c77-a665-1f3e734f77e4.png)
![Deliverable_2_PSI_Summary](https://user-images.githubusercontent.com/104038813/190415356-0103ed25-f2bb-4f69-a944-9d57a0bcf63e.png)
- **Does the current manufacturing data meet the design specifications for the variance not exceeding 100 pounds per square inch?**
  1. Based on the results of the summary statistics, all manufacturing lots in total do meet the specifications for suspension coil PSI. 
  2. Lots #1 and #2 have an extremely low variance, and there mean and median PSI are roughly identical.
  3. Lot #3 DOES NOT meet the required specifications, with a variance in PSI over 100. 
  4. Due to lots 1 and 2 being so precise, the error from lot 3 did not affect the overall results for the three lots in total to exceed the 100 PSI variance level. 

## T-Tests on Suspension Coils
- The three lots as a whole are not statistically different from the population mean of 1500 PSI because the p-value was larger than the significance level of .05 and the null hypothesis (that the mean is 1500) cannot be rejected. 

![Deliverable_3_t-test](https://user-images.githubusercontent.com/104038813/190425680-61e69a5e-b455-40dd-bca7-5e04eb485fed.png)

- Lot #1 was not statistically different from the population, with a p-value of 1, meaning it was very closely aligned with the population. 
![Deliverable_3_Lot1](https://user-images.githubusercontent.com/104038813/190425893-a6245d16-ef1b-4031-9762-5ff4263b3d30.png)

- Lot #2 was not different from the population mean as well, with a p-value of .6072 where we cannot reject the null hypothesis, so the mean is 1500.

![Deliverable_3_Lot2](https://user-images.githubusercontent.com/104038813/190426084-ca271e96-42bd-4f7c-9ee2-2e184d9c05f4.png)

- Lot #3 however was statistically different from the overall population. It had a p-value of 0.04168, meaning that the null hypothesis CAN be rejected, meaning the mean was different than 1500. 

![Deliverable_3_Lot3](https://user-images.githubusercontent.com/104038813/190426330-9e30f80d-c9d5-4ec3-8c2c-3534d1f5eaf2.png)

