# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
MechaCar has created lots of prototypes for new cars and wants to determine the MPG based on a few factors: vehicle length, vehicle width, spoiler angle, ground clearance, and All Wheel Drive. Using R's lm() function, here are the regression results:

![RegressionSummary](https://user-images.githubusercontent.com/30487641/139344354-02ee42fa-08d3-49f1-9400-82a6aea81ec2.PNG)

The overall equation is: 
MPG = (vehicle_length x 6.267) + (vehicle_weight x 0.001) + (spoiler_angle x 0.069) + (ground_clearance x 3.546) - (AWD x 3.411) - 0.0104

Note: AWD is either 0 or 1 with 1's representing cars with All Wheel Drive


**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
The vehicle length and the ground clearance both have very small p-values: 0.000000000026, and 0.0000000521 respectively. Since their p-values are much smaller than our typical 0.05 threshold, they provide a non-random amount of variance to the mpg values in the dataset.
On the other hand, vehicle_weight, spoiler_angle, and AWD all had p-values over three times the threshold. Since the p-values are larger than the threshold, they are likely to produce random amounts of variance.



COMPLETE STUFF BELOW

**Is the slope of the linear model considered to be zero? Why or why not?**
No - the p-value for the 




**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
The R-sqaured value is 0.7149 which indicates a strong correlation, and the p-value is 0.0000000000535 which suggests we should 
