# MechaCar_Statistical_Analysis

## Overview of Analysis
The purpose of the analysis is to review production data for insights that may help the manufacturing team of AutosRUs.

## Linear Regression to Predict MPG

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

- Vehicle_length and ground_clearance variables provide the non-random amount of variance, because we could reject the null hypothesis in these cases.

2. Is the slope of the linear model considered to be zero? Why or why not?
    
- From the image, the p_values for vehicle_length and ground_clearance are less than significance level (Assuming the statistical significance (alpha) is equals to 0.05). Therefore, we can state that there is sufficient evidence to reject the null hypothesis, which means the slope of out linear model is not zero.
    
3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

- The r_squared value for out model is 0.715, this tells that the model predicts mpg of MechaCar prototypes faily well. Approximately 71.5% of variance in mpg can be explained by our model.

![](https://github.com/Nikhila999/MechaCar_Statistical_Analysis/blob/main/images/linear_regression_to_predict_mpg.png)

## Summary Statistics on Suspension Coils

1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

- Suspension coils in lot1 has a variance of 0.98, lot2 has variance of 7.47 and lot 3 has variance of 170.29. From design specifications, we know that the variance should not exceed 100. Lot1 and Lot2 met the criteria but Lot3 has not. However, the combined variance of all lots is 69.29 which meets the design specifications.

![](https://github.com/Nikhila999/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png)
![](https://github.com/Nikhila999/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.png)
    

## T-Tests on Suspension Coils

To determine if the PSI is statistically different from population in given manufacturing lots we are creating a t-test. Before we write the R code, we are making following assumptions,  
   
    - The population mean is equals to 1500.
    - statistical significance (alpha) is equals to 0.05.
    
- T-test on all lots combined has p-value of 0.06028 which is greater than 0.05 (our assumed statistical significance). Therefore, we do not have sufficient evidence to reject the null hypothesis, which means the mean of all lots combined is statistically equals to 1500.
    
![](https://github.com/Nikhila999/MechaCar_Statistical_Analysis/blob/main/images/lot_summary_ttest.png)
    
- T-test of lot1 has p-value of 1 which is greater than 0.05. Therefore, we do not have sufficient evidence to reject the null hypothesis, which means the mean of lot1 is statistically equals to 1500.
    
- T-test of lot2 has p-value of 0.6072 which is greater than 0.05. Therefore, we do not have sufficient evidence to reject the null hypothesis, which means the mean of lot2 is statistically equals to 1500.
    
- T-test of lot3 has p-value of 0.04168 which is less than 0.05. Therefore, we have sufficient evidence to reject the null hypothesis, which means the mean of lot3 is statistically different than 1500.

![](https://github.com/Nikhila999/MechaCar_Statistical_Analysis/blob/main/images/lot_ttests.png)

## Study Design: MechaCar vs Competition

1. What metric or metrics are you going to test?

- Perform statistical study to quantify the performance of MechaCar's mpg (miles per gallon) against the competition. 

2. What is the null hypothesis or alternative hypothesis?

- Null hypothesis: The mean mpg of MechaCars is greater than mean mpg of competitors.

- Alternate hypothesis: The mean mpg of MechaCars is not greater than mean mpg of competitiors.

3. What statistical test would you use to test the hypothesis? And why?

- Here, we can use t-test to determine the statistical significance of mpg of MechaCars and its competitors.
 - Ex: t.test(MechaCars$mpg, mu>mean(competitors$mpg))

4. What data is needed to run the statistical test?

- To run the t-test, we would need the mpg data for MechaCars and its competitors.
