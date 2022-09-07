## MechaCarChallenge.RScript

library(dplyr)

## get the MechaCar_mpg.csv dataset
MechaCar_mpg<- read.csv(file="resources/MechaCar_mpg.csv")

head(MechaCar)

## correlation analysis for all variables
matrix<- as.matrix(MechaCar[,c('mpg', 'vehicle_length', 'vehicle_weight', 'spoiler_angle', 'ground_clearance', 'AWD')])
cor(matrix)

## correlation analysis doesn't change with removal of variables
matrix<- as.matrix(MechaCar[,c('mpg', 'vehicle_length', 'ground_clearance')])
cor(matrix)

## linear regression of all variables against mpg
summary(lm(mpg~vehicle_length+ vehicle_weight+ spoiler_angle+ ground_clearance+ AWD, data=MechaCar))

## linear regression of a reduced model
summary(lm(mpg~vehicle_length+ vehicle_weight+ ground_clearance, data=MechaCar))

## linear regression of a further reduced model
summary(lm(mpg~vehicle_length+ ground_clearance, data=MechaCar))

## lm one variable
summary(lm(mpg~vehicle_length, data=MechaCar))

## plot the lm for vehicle length
model<- lm(mpg~vehicle_length, MechaCar)
yvals<- model$coefficients['vehicle_length']*MechaCar$vehicle_length + model$coefficients['(Intercept)']
plt<- ggplot(MechaCar, aes(x=vehicle_length, y=mpg))
plt +geom_point() + geom_line(aes(y=yvals), color='red')

## plot the lm for ground clearance
model<- lm(mpg~ground_clearance, MechaCar)
yvals<- model$coefficients['ground_clearance']*MechaCar$ground_clearance + model$coefficients['(Intercept)']
plt<- ggplot(MechaCar, aes(x=ground_clearance, y=mpg))
plt +geom_point() + geom_line(aes(y=yvals), color='blue')

## plot the lm for vehicle length
model<- lm(mpg~vehicle_weight, MechaCar)
yvals<- model$coefficients['vehicle_weight']*MechaCar$vehicle_weight + model$coefficients['(Intercept)']
plt<- ggplot(MechaCar, aes(x=vehicle_weight, y=mpg))
plt +geom_point() + geom_line(aes(y=yvals), color='green')

## get the Suspension_Coil.csv dataset
suspension<- read.csv(file = "resources/Suspension_Coil.csv")

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