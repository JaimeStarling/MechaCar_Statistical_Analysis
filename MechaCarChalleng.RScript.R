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


