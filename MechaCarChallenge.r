# Deliverable 1: Linear Regression to Predict MPG
library(dplyr)
mechacars_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# perform linear regression on all columns
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacars_table) 

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacars_table))

# Deliverable 2: Create Visualizations for the Trip Analysis
suspension_coil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# total summary
total_summary <- suspension_coil_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# lot summary
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Deliverable 3: T-Tests on Suspension Coils
# T-Tests on Suspension Coils
t.test(suspension_coil_table$PSI, mu=mean(suspension_coil_table$PSI))

# T-Tests on Suspension Coils for Lot1
lot1 = suspension_coil_table %>% filter(Manufacturing_Lot=='Lot1')
t.test(lot1$PSI, mu=mean(suspension_coil_table$PSI))

# T-Tests on Suspension Coils for Lot2
lot2 = suspension_coil_table %>% filter(Manufacturing_Lot=='Lot2')
t.test(lot2$PSI, mu=mean(suspension_coil_table$PSI))

# T-Tests on Suspension Coils for Lot3
lot3 = suspension_coil_table %>% filter(Manufacturing_Lot=='Lot3')
t.test(lot3$PSI, mu=mean(suspension_coil_table$PSI))

