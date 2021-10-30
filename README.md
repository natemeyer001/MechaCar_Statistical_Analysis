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


**Is the slope of the linear model considered to be zero? Why or why not?**

No - the p-value for the model is 0.0000000000535 which is well below our 0.05 threshold. Therefore, we reject the null hypothesis that the slope of the model is zero. This is a good thing because a model with a slope of zero means each dependent value would be determined by random chance and error.


**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

The R-sqaured value is 0.7149 which indicates a strong correlation, and thus the linear model is a good predictor of mpg. Note: the cut-off from "moderate" to "strong" is at 0.7



## Summary Statistics on Suspension Coils
Here are the current means, medians, variances, and standard deviations for 1) all cars, and 2) all cars but grouped by manufacturing lot respectively.

![total_summary](https://user-images.githubusercontent.com/30487641/139481721-2b5d820c-1443-418c-90ed-a0b33805f1ba.PNG)
![lot_summary](https://user-images.githubusercontent.com/30487641/139481735-743f7d70-9816-404f-b2f0-0691d6f3ef18.PNG)


**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

The variance for all cars is 62.29, which passes the threshold, but we need to look under the hood to see what's really going on. Looking at the first two lots we see fantastic results, with variances of 0.98 and 7.47 respectively. Red flags arrise with lot 3 with a variance of 170.29 that fails the design specifications miserably. Soemthing appears to be very off with the third lot, and comparisons need to be done by lots to suss out the situation.



## T-Tests on Suspension Coils
To determine if all manufacturing lots are statistically different from the population, I performed a t-test on the means. I used a random sample of 50 PSI readings to test agains the population average. The results are below.
![t_test](https://user-images.githubusercontent.com/30487641/139542991-bc4a105b-5130-4070-9019-bb75ce13d965.PNG)

The p-value is 0.75, which is much larger than our 0.05 threshold. Therefore, we failed reject the null hypothesis, and state that the two means are statistically similar. 


The next step was to test each lot individually against the population to see if any specific lot differed from the population. I did a t-test on the means, and used a random sample of 25 PSI readings from a specific lot to test against the overall average. Here is the test lot1, lot2, and lot3 respectively.
![lot1_test](https://user-images.githubusercontent.com/30487641/139543711-7addfc76-4539-4430-a52b-cee4c26a1f44.PNG)

The p-value is 0.000048, so we reject the null hypothesis and conclude that the two means are statistically different.


![lot2_test](https://user-images.githubusercontent.com/30487641/139543769-9a9e57c9-c7e5-4e4b-9649-c4b4585ee977.PNG)

The p-value (0.0559) is just above our 0.05 threshold, so we fail to reject the null hypothesis. Lot 2's mean is statistically similar to the population mean.


![lot3_test](https://user-images.githubusercontent.com/30487641/139546213-3470f30d-0e0a-4727-80ca-fe39c62f9e7f.PNG)

The p-value (0.1188) is above our threshold, so we fail to reject the null hypothesis. 



## Study Design: MechaCar vs Competition
Are MechaCar's highway fuel efficiencies better than the competiton's highway fuel efficiencies when looking by vehicle class size? For example, do the compact cars from MechaCars have the same average highway efficiency as the competition's? The null hypothesis for each vehicle size would be: MechaCar's average highway fuel efficiency is statistically similar to the competition's average highway fuel efficiency. The alternate would be that they are not statistically different. I would use a paired t-test because there are two different populations comparing the same measurements that I want to compare. The MechaCar data I have includes fuel efficiency but does not specify if it is highway, or city, or a combination. So, for both MechaCar and competition, I would need the data on just the highway fuel efficieny as well as a column for vehicle class size. Both of which should be easily accessible.

