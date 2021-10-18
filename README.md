# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

   ![Statistical Summary MPG](https://user-images.githubusercontent.com/85597801/137787054-6aca5d49-138b-4fa6-bbb6-25308e198347.png)

The following variables are unlikely to have a random correlation to MPG in our data set (these variables are likely to have either a negative or positive correlation with MPG)
 - Vehicle Length
 - Ground Clearance
 
The intercept is also considered statistically significant, so we may need to scale length & ground clearance to get a better estimate. 

Vehicle weight is very close to the cut off (0.0776 with cut off being 0.05) so it may be worth investigating in another larger data set whether weight may correlate with MPG. 

### Slope of model
The slope would not be considered to be zero, as the coefficients for our two variables most likely to correlate to the MPG data, vehicle length & ground clearance have slopes of 6.3 and 3.5 respectively, which would be a significant slope. The variables where we don't see a high likelyhood of correlation with MPG would be closer to a slope of zero. 

### Prediction value
Our multiple R-squared value with this multiple linear regression comes out to 0.7149 which means that approximately 70% ofthe variablity in MPG is explained by our variables. Since the value is greater than or equal to 0.7, we would consider this to be a 'strong' correlation between variables and MPG. Our P value is also significantly below the 0.05 threshold to conclude that it is unlikely that the correlation of variables is random. 

## Summary Statistics on Suspension Coils
![total summary](https://user-images.githubusercontent.com/85597801/137787191-7ac09fc9-cad0-4ef2-a3c3-61392a30362f.png)
![lot summary](https://user-images.githubusercontent.com/85597801/137787297-5f309f44-2b01-4d1b-b9cb-9a268cb7945f.png)

Our required standard to meet is that the variance must not exceed 100 on suspension coils produced for MechaCars. When we look at our data as a whole, the variance does meet this threshold, with a variance of 62.3, which is significantly below our threshold. 

When we look at each lot individually, lot 1 has a variance of less than 1 (very good!), lot 2 has a variance of 7.5 (still very good and well below our threshold) 
and lot 3 has a variance of 170.3, which is well above our threshold. When the lots are looked at individually, lots 1 & 2 are well beyond passing the threshold but lot 3 should have measurements confirmed (perhaps there was a sampling error) and may need to be discarded. 


![lot summary 2](https://user-images.githubusercontent.com/85597801/137787327-4a80fb36-e059-4f41-880b-8bd4b2ab31c0.png)

 - I added the number of samples per category to the table, to verify that the issue was not related to perhaps varying sample size (for example, if lot 1 & 2 both had 1,000 samples, and lot 3 had 15 samples, that may explain the drastic differences in variance). All lots have 50 samples, so sample size is not the issue. 

 - I also added minimum and maximum to the table to see if those ranges looked significantly off- pehaps lot 3 could have had one entered as 1000 which may have been a data entry error. However, the minimum and maximums are not exceedingly far off from lot 1 & 2, and did not appear to be individual outlier datapoints. 

## T-Tests on Suspension Coils
![t-test all samples](https://user-images.githubusercontent.com/85597801/137787371-d5eb0a45-6981-449e-94b0-a623e2be7d37.png)

For the full sample (including all lot numbers) the P value is 0.06. Since that is over 0.05, we cannot the null hypothesis that there is no statisical difference between the sample mean & population mean of 1500. This means we can conclude that the true mean of the sample is the calculated 1500.

Individual lots compared to the full sample population mean of 1,500:

 ![lot1 t-test](https://user-images.githubusercontent.com/85597801/137787398-496f61e5-5003-4dd0-9d22-2182e82ca7ca.png)

 - Lot 1: P value is 1.0 which means we are unable to reject the null hypothesis, and we are able to conclude that the true mean of lot 1 is 1,500 which matches the overall population mean.
 ![lot2 t-test](https://user-images.githubusercontent.com/85597801/137787424-704f595d-6a7a-43e7-8fc1-2ef46a67b1cc.png)

 - Lot 2: P value is 0.6072 which means we are unable to reject the null hypothesis, and we are able to conclude that the true mean of lot 2 is 1,500, which matches the overall population mean. 
 - Lot 3: P value is 0.04 which falls within our confidence interval of 0.05 or less. This means for lot 3, we ARE able to reject the null hypothesis and conclude that the true mean of lot 3 is NOT equal to 1,500, the mean of the full population. 
![lot3 t-test](https://user-images.githubusercontent.com/85597801/137787451-bdc35a74-d1a0-4cd0-b647-bb79a44d6513.png)

Lot 1 & 2 matching the overall sample population mean with lot 3 not matching fits with our previous conclusion that the data set for lot 3 is out of bounds based on the variance, and we may not be able to use those springs. 

## Study Design: MechaCar vs Competition

To compare the MechCar against compentation, we would like to compare a few parameters between our MechaCar, and the available data for other cars sold in the same market. 

The data points we would like to compare are:
 - Fuel Efficiency- overall MPG
 - MSRP (original sale price)
 - Cargo space
 - IIHS Vehicle Safety Ratings
 - Horsepower

**Null Hypothesis:** The MechaCar is the same as the competitors cars

**Alternative hypothesis:** The MechaCar is different than the competitors cars
For this stage of research we will use the "normal" importance level and test with a P value of 0.05 or less to reject our null hypothesis. 

To test this, we will use a two-sample T-Test for each of our individual questions. On each question, we will determine whether the MechaCar is significantly different from the competitors cars. This will tell us if our mean values for the MechaCar match or do not match our competitors mean values. If we are able to reject the null hypothesis and conclude they don't match, we will need to evaluate whether we are above or below the competitors in each category (use a summary table to compare means by car)
and whether that is a "good" or "bad" thing in each case. 
 - Fuel Efficiency- if we are able to reject the null hypothesis, we would want to evaluate and find that our mean is below the competitors mean value
 - MSRP- if we are able to reject the null hypothethsis, we would want to evaluate and find that our mean is below the competitors mean
 - Cargo Space- if we are able to reject the null hypothetsis, we would want to evaluate and find that our mean is higher than the competitors mean
 - IIHS Vehicle Safety Ratings- if we are able to reject the null hypothetsis, we would want to evaluate and find our mean is higher than the competitors mean
 - Horsepower- if we are able to reject the null hypothesis, we would want to evaluate and find our mean is higher than the competitors

The data that we will need to run this test: We will need each of the required data points (if Fuel Efficiency is only available in City & Highway values, we will average the two to get overall)
for our MechaCar, as well as for all other cars considered competitors. We should compare by make & model of car (for example, Ford makes a lot of cars, and some may not be of concern to us- we don't need to compare a sedan to a pick up truck). 
We should filter competitor data down to similar cars- if our car is a general use sedan, we should exclude sports cars, mini-vans, large SUVs and pick up trucks from the samples of competitor data. 
We should use 5 years of data to compare, as other manufacturers may have tweaked their cars over that span and may have varying stats, to make sure we are getting a good average. More than 5 years may cause an issue due to 
inflation on MSRP, and technological advances in fuel efficiency & safety. 
