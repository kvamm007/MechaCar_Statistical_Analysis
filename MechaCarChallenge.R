library(dplyr)
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors=F) #Read in CSV file
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg) #generate linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))#generate summary
Suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors=F) #Read in CSV file
total_summary <- Suspension_coil %>% summarize (Mean = mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- Suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
t.test((Suspension_coil$PSI), mu=1500)
lot1=subset(Suspension_coil, Manufacturing_Lot=="Lot1")
lot2=subset(Suspension_coil, Manufacturing_Lot=="Lot2")
lot3=subset(Suspension_coil, Manufacturing_Lot=="Lot3")
t.test((lot1$PSI), mu= 1500)
t.test((lot2$PSI), mu= 1500)
t.test((lot3$PSI), mu= 1500)