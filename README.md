# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
MechaCar has created lots of prototypes for new cars and wants to determine the MPG based on a few factors: vehicle length, vehicle width, spoiler angle, ground clearance, and All Wheel Drive. Using R's lm() function, here are the regression results:

![RegressionSummary](https://user-images.githubusercontent.com/30487641/139344354-02ee42fa-08d3-49f1-9400-82a6aea81ec2.PNG)

The overall equation is for calculating MPG is: 
MPG = vehicle_length*6.267 + vehicle_weight*0.001 + spoiler_angle*0.069 + ground_clearance*3.546 - AWD*3.411 - 0.0104
Note: AWD is either 0 or 1 with 1's representing cars with All Wheel Drive

*Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?*
The vehicle length and the ground clearance both have very small p-values: 0.000000000026, and 0.0000000521 respectively. Since their p-values are much smaller than our typical 0.05% threshold, they provide a non-random amount of variance to the mpg values in the dataset.





Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
