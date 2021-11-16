library(dplyr)
mechacars_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# perform linear regression on all columns
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacars_table) 

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacars_table))
