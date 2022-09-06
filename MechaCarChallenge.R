## MechaCarChallenge.RScript

library(dplyr)

## get the MechaCar_mpg.csv dataset
MechaCar<- read.csv(file="~/Bootcamp/MechaCar_Statistical_Analysis/MechaCar_mpg.csv")

head(MechaCar)

## linear regression of all variables against mpg
summary(lm(mpg~vehicle_length+ vehicle_weight+ spoiler_angle+ ground_clearance+ AWD, data=MechaCar))


## get the Suspension_Coil.csv dataset
suspension<- read.csv(file = "~/Bootcamp/MechaCar_Statistical_Analysis/Suspension_Coil.csv")

head(suspension)

## summary table for PSI across all manufacturing lots
total_summary<- suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

total_summary

## summary table for PSI per manufacturing lot
lot_summary<- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary

## t test for PSI across all manufacturing lots
t.test(suspension$PSI, mu=1500)

## t test for PSI and lot 1
PSI_lot1<- subset(suspension, Manufacturing_Lot=="Lot1")

t.test(PSI_lot1$PSI, mu=1500)

## t test for PSI and lot 2
PSI_lot2<- subset(suspension, Manufacturing_Lot=="Lot2")

t.test(PSI_lot2$PSI, mu=1500)

## t test for PSI and lot 3
PSI_lot3<- subset(suspension, Manufacturing_Lot=="Lot3")

t.test(PSI_lot3$PSI, mu=1500)