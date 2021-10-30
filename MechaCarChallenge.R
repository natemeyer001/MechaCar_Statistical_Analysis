library(tidyverse)

# Deliverable 1
car_data <- read.csv('MechaCar_mpg.csv', stringsAsFactors=F)
# create linear model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_data)
# show summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_data))


# Deliverable 2
coil_data <- read.csv('Suspension_Coil.csv', stringsAsFactors=F)
# mean, median, variance, standard deviation for PSI
total_summary <- coil_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
total_summary
# mean, median, variance, standard deviation for PSI grouped by manufacturing lot
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
lot_summary


# Deliverable 3
# t-test to determine if the PSI across all lots is statistically different from the average PSI
sample_table <- coil_data %>% sample_n(50)
t.test(sample_table$PSI, mu=mean(coil_data$PSI))

# test for each lot to see if its PSI is statistically different from the average PSI
t.test(sample(x=subset(coil_data$PSI, coil_data$Manufacturing_Lot == "Lot1"), size=25), mu=mean(coil_data$PSI))
t.test(sample(x=subset(coil_data$PSI, coil_data$Manufacturing_Lot == "Lot2"), size=25), mu=mean(coil_data$PSI))
t.test(sample(x=subset(coil_data$PSI, coil_data$Manufacturing_Lot == "Lot3"), size=25), mu=mean(coil_data$PSI))