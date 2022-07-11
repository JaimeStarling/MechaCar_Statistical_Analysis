#Deliverable 1
library(tidyverse)
getwd()
setwd("~/Desktop/R_Analysis/MechaCar_Statistical_Analysis")
#4 Import and read in the MechaCar_mpg.csv file as a dataframe.
df <- read.csv("MechaCar_mpg.csv", stringsAsFactors = FALSE, check.names = FALSE)
head(df)
#5 Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
model = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = df)
#6 Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(model)

#Deliverable 2
#1 Import and read in the Suspension_Coil.csv file as a table.
df2 <- read.csv("Suspension_Coil.csv", stringsAsFactors = FALSE, check.names = FALSE)
head(df2)
#3 Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- df2 %>% 
  summarize(Mean=mean(PSI),
            Median = median(PSI),
            VAR = var(PSI),
            SD= sd(PSI))
total_summary
#4 Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- df2 %>% 
  group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI),
            Median = median(PSI),
            VAR = var(PSI),
            SD= sd(PSI),
            .groups='keep')
lot_summary

#Deliverable 3
# Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(df2$PSI, mu=1500)
# Write three more RScripts using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
lot1 = subset(df2, Manufacturing_Lot=="Lot1")
lot2 = subset(df2, Manufacturing_Lot=="Lot2")
lot3 = subset(df2, Manufacturing_Lot=="Lot3")
#then
t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)







