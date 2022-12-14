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
  
This indicates that vehicle length and ground clearance have a significant relationship with mpg.  Vehicle weight may have some relationship on mpg but at a significance value of 0.1.  The p-value of the regression model (p-value: 5.35e-11) is also less than a significance value of 0.05. Taken together, we can say that the slope of the regression is not equal to zero.  The r squared value of the regression model is 0.71.  Meaning this model will be able to predict the mpg of a MechaCar vehicle 71% of the time.  However, this also leaves 29% of the variability unexplained by this model.  There could be other variables which affect mpg that are not represented by this model.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

Table 1: summary statistics for weight capacities (PSI) of MechaCar suspension coils

![total](https://github.com/lnshewmo/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png)

Table 2: summary statistics for weight capacities (PSI) of 3 different production lots of suspension coils 

![lot](https://github.com/lnshewmo/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.png)

The current manufacturing data meets this design specification for all manufacturing lots in total.  Individually, Lot 3 exceeds this specification and contributes the most to the variance in overall PSI.

## T-Tests on Suspension Coils

T-tests were performed to determine if all manufacturing lots and each individual lot are statistically different from the population mean of 1,500 PSI.

Figure 1:  t-test for all manufacturing lots and population mean

![ttest](https://github.com/lnshewmo/MechaCar_Statistical_Analysis/blob/main/images/PSI_ttest.png)

The overall mean is not different from the population mean at a significance level of 0.05 but it is different at a significance level of 0.10.

---

Figure 2:  t-test for Lot 1 and population mean

![ttest](https://github.com/lnshewmo/MechaCar_Statistical_Analysis/blob/main/images/lot1.png)

Lot 1 mean is equivalent to the population mean.

---

Figure 3:  t-test for Lot 2 and population mean

![ttest](https://github.com/lnshewmo/MechaCar_Statistical_Analysis/blob/main/images/lot2.png)

Lot 2 mean is equal to the population mean.

---

Figure 4:  t-test for Lot 3 and population mean

![ttest](https://github.com/lnshewmo/MechaCar_Statistical_Analysis/blob/main/images/lot3.png)

Lot 3 is significantly different from the population mean as indicated by the p-value of 0.04168.
This lot does not meet specification.

## Study Design: MechaCar vs Competition

To design a study quantifying how the MechaCar performs against the competition, the first step is to define 'performance.'  The study should have a well-defined central question and metric.  Next we can select what measures might affect performance, as well as determine what conditions should be held constant to reduce variation from external factors.  Domain knowledge in the area of automobile engineering and manufacturing would better identify potential manufacturing measures and variables (horsepower, suspension, wheel diameter, engine size). From the business and consumer standpoint we can explore factors that can affect sales (MSRP, gas vs. electric, city and highway mpg, safety rating).  Examples of factors to be held constant or controlled are: performing required maintenance at the recommended intervals, same grade of gas, same tire condition, all vehicles started at the same initial odometer reading, same proportions of highway and city miles.

Let's consider a hypothetical study where we define performance as the highest mpg and the scope of the study will be new gas-powered vehicles only.  For the experiment, 200 gal of 89 octane fuel will be used and mpg will be measured as total distance travelled divided by 200 gal. 50 vehicles of each competitor will participate.  We will measure engine size in liters, vehicle weight, vehicle length, ground clearance and wheel diameter.  These are all continuous numerical data types, therefore multiple linear regression is the appropriate test. 

The null hypothesis is that the coefficients, beta<sub>n</sub>, are equal to zero (there is no relationship to mpg performance).  The alternative hypothesis is that one or more of the coefficents is not equal to zero (at least one variable has a relationship with performance).  To evaluate whether there is evidence to reject the null hypothesis, we will evaluate the p-value of the model, the r<sup>2</sup> value of the model and the individual p-values for each variable.  A significance level of 0.05 will be used to evaluate the statistics.
