library(dplyr)
mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)


#Multiple regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table)) #generate summary statistics
