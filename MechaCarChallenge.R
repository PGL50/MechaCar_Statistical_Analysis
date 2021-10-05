library(dplyr)

## Deliverable 1
mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Multiple regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table)) #generate summary statistics

# Check for normality
ggplot(mecha_table,aes(x=vehicle_length)) + geom_density() #visualize distribution using density plot
shapiro.test(mecha_table$vehicle_length)
ggplot(mecha_table,aes(x=ground_clearance)) + geom_density() 
shapiro.test(mecha_table$ground_clearance)

# Plot relationships with significant vars and mpg
ggplot(mecha_table, aes(x=vehicle_length, y=mpg)) +
  geom_point(size=2)
ggplot(mecha_table, aes(x=ground_clearance, y=mpg)) +
  geom_point(size=2)


# Deliverable 2
coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- coil_table %>% summarize(Mean =mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #create summary table

lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean =mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
