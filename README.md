# MechaCar_Statistical_Analysis
A review of the production data, provided by the AutosRUs manufacturing team, on the proposed MechaCar prototypes.

## Linear Regression to Predict MPG
Data provided by the manufacturing team, found here as [MechaCar_mpg.csv](MechaCar_mpg.csv), cover 50 prototypes, produced using multiple design specifications to identify ideal vehicle performance, determined here by MPG, or miles per gallon:

- Vehicle Length
- Vehicle Weight
- Spoiler Angle
- Ground Clearance
- Drivetrain (seen as AWD in figure below)

![This is an image](https://github.com/JaimeStarling/MechaCar_Statistical_Analysis/blob/main/mpg%20data.png)

To predict one variable given another, we use linear regression. To predict one variable's total variance given more than one variable, we use multiple linear regression. 

![This is an image](https://github.com/JaimeStarling/MechaCar_Statistical_Analysis/blob/main/multiple%20linear%20regression%20mpg.png)

## Summary Statistics on Suspension Coils

Data provided by the manufacturing team, found here as [Suspension_Coil.csv](Suspension_Coil.csv), cover 150 individual vehicles, 50 each from three different manufacturing lots. The weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across the three lots.

We first created a total_summary dataframe to find the mean, median, variance, and standard deviation of the suspension coil’s PSI across all vehicles.

![This is an image](https://github.com/JaimeStarling/MechaCar_Statistical_Analysis/blob/main/total%20summary%20psi%20column.png)

We then created a lot_summary dataframe to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

![This is an image](https://github.com/JaimeStarling/MechaCar_Statistical_Analysis/blob/main/lot%20summary%20psi.png)


## T-Tests on Suspension Coils

Having determined a population mean of 1,500 pounds per square inch, we next performed t-tests to determine if all manufacturing lots, and each lot individually, are statistically different.

Of the three lots tested together, the mean was just below 1,500 pounds per square inch at 1498.78 psi. 
![This is an image](https://github.com/JaimeStarling/MechaCar_Statistical_Analysis/blob/main/all%20lots%20t%20test.png)

Tested eparately, Lot One was exactly the population mean, Lot Two was just above the population mean, and Lot Three was the mean that had lowered the overall average.

Lot One
![This is an image](https://github.com/JaimeStarling/MechaCar_Statistical_Analysis/blob/main/lot%201%20subset%20t%20test.png)

Lot Two
![This is an image](https://github.com/JaimeStarling/MechaCar_Statistical_Analysis/blob/main/lot%202%20subset%20t%20test.png)

Lot Three
![This is an image](https://github.com/JaimeStarling/MechaCar_Statistical_Analysis/blob/main/lot%203%20subset%20t%20test.png)

## Study Design: MechaCar vs Competition
