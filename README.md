# MechaCar Statistical Analysis

Using R to review production data for factors affecting vehicle performance 

## Linear Regression to Predict MPG

Goal: Where vehicle performance is measured as mpg (miles per gallon), can we design a linear model to predict mpg?

The following metrics were collected on 50 prototype vehicles:
- vehicle length
- vehicle weight
- spoiler angle
- ground clearance
- AWD (all-wheel drivetrain)
- mpg (miles per gallon)

Using the `lm()` method in R, the following linear model was generated:

![lm image](https://github.com/lnshewmo/MechaCar_Statistical_Analysis/blob/main/images/MechaCar_LM.png)

Looking at the individual p-values, these variables provided a non-random amount of variance to the mpg values in the dataset at a significance level of 0.05:
  - vehicle length
  - ground clearance

The r squared value of the regression model is 0.71.  Meaning this model will be able to predict the mpg of a MechaCar vehicle 71% of the time.  The overall p-value of the regression is also significant.  Taken together, these statistics support rejection of the null hypothesis, which states that the slope of the regression model is zero.

Questions: 

-Is the slope of the linear model considered to be zero? Why or why not?

-Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

total summary
![total](https://github.com/lnshewmo/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png)

lot summary
![lot](https://github.com/lnshewmo/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.png)

## T-Tests on Suspension Coils

![ttest](https://github.com/lnshewmo/MechaCar_Statistical_Analysis/blob/main/images/PSI_ttest.png)
summary and interpretation

## Study Design: MechaCar vs Competition

-What metric or metrics are you going to test?
-What is the null hypothesis or alternative hypothesis?
-What statistical test would you use to test the hypothesis? And why?
-What data is needed to run the statistical test?
