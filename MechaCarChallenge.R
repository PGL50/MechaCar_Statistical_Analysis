library(dplyr)
library(ggplot2)

## Deliverable 1
#file1 <- file.choose()
#mecha_table <- read.csv(file=file1,check.names=F,stringsAsFactors = F)
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



plt <- ggplot(coil_table,aes(x=Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
plt + geom_boxplot() + theme(axis.text.x=element_text(hjust=1)) #add boxplot and rotate x-axis labels 45 degrees




# Deliverable 3
# One-sample t-test
# Ho = (mean PSI = 1500)
res <- t.test(coil_table$PSI,alternative = "two.sided", mu = 1500)
# Printing the results
res

# subset the data for each lot
lot1 <- subset(coil_table, Manufacturing_Lot == 'Lot1')
lot2 <- subset(coil_table, Manufacturing_Lot == 'Lot2')
lot3 <- subset(coil_table, Manufacturing_Lot == 'Lot3')

# One-sample t-test for each lot
# Ho = (mean PSI = 1500)

# One sample t tests for each lot
res1 <- t.test(lot1$PSI,alternative = "two.sided", mu = 1500)
# Printing the results
res1

res2 <- t.test(lot2$PSI,alternative = "two.sided", mu = 1500)
# Printing the results
res2

res3 <- t.test(lot3$PSI,alternative = "two.sided", mu = 1500)
# Printing the results
res3
