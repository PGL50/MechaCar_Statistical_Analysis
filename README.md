# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

<br/>

![Linear model](/Resources/lm_output.png) 

<br/>

##
- **Vehicle length** and **Ground Clearance** are the two variables that are significant in the multiple linear regression model predicting MPG (assuming a 0.05 significance level). Each one has a highly significant p-value (<0.001) associated with it's slope.

<br>

- There is not one slope in a multiple linear regression model. Each variable has it's own slope which is its relationship with the dependent variable mpg. Since **Vehicle length** and **Ground Clearance** are both significant in the model they each have a slope that is different from zero (6.27 and 3.55, respectively). The other variables in the model (vehicle weight, spoiler angle and AWD) have slopes that are not significantly different from zero. The F-statistic for the model is also highly significant (<0.001) which tests that some of the variables have significant slopes.

<br>

- This model has an R-squared value = 0.71 which signifies that is has accounted for more than 70% of the variability in MPG of MechaCar prototype. This would be considered an effective model. There may need to be some exploration of data transformation done with such a highly significant intercept.

<br>

## Summary Statistics on Suspension Coils

<br>

- The design specifications for MechaCar suspension coils says the variance of the coils can't exceed 100 PSI. 

- Overall for all coils the variance is 62.3. So according to the specs the lots in total meet the specs but it's a different story by individual lots.
<br/>

    ![Total summary](/Resources/total_summary.png) 

- There is difference in variance by lot. Lots 1 and 2 are well under the spec of 100 for variance. Lot 3 is well over the 100 at 170.3 for the variance. MechaCar may do well to exclude the Lot 3 coils from their manufacturing.
<br/>

    ![Lot summary](/Resources/lot_summary.png) 

## T-Tests on Suspension Coils

### For all four of the t-tests performed the null hypothesis is this:
-   Ho: Mean coil PSI = 1500
-   Ha: Mean coil PSI <> 1500
### Two-sided tests will be performed since the test is to determine if the mean PSI is different from 1500 (higher or lower).

<br/>

1. Below are the results comparing the **overall sample** PSI to the designated 1500 PSI. The p value = 0.06028. So at the 0.05 significance level the null hypothesis cannot be rejected. Therefore the mean PSI **overall** (1498.78) is not statistically different from 1500 PSI.

<br/>

![Overall t-test](/Resources/res0.png) 

<br/>

2. Below are the results comparing the **Lot 1** sample PSI to the designated 1500 PSI. The p value = 1.00. So at the 0.05 significance level the null hypothesis cannot be rejected. Therefore the mean PSI for **Lot 1** (1500) is not statistically different from 1500 PSI. 

<br/>

![Overall t-test](/Resources/res1.png) 

<br/>

3. Below are the results comparing the **Lot 2** sample PSI to the designated 1500 PSI. The p value = 0.6072. So at the 0.05 significance level the null hypothesis cannot be rejected. Therefore the mean PSI for **Lot 2** (1500.2) is not statistically different from 1500 PSI. 

<br/>

![Overall t-test](/Resources/res2.png) 

<br/>

4. Below are the results comparing the **Lot 3** sample PSI to the designated 1500 PSI. The p value = 0.04168. So at the 0.05 significance level the null hypothesis is rejected. Therefore the mean PSI for **Lot 3** (1496.14) is statistically different from 1500 PSI. 

<br/>

![Overall t-test](/Resources/res3.png) 

### T test summary overall and by lot 
#### The overall t-test showed no difference from the required 1500 PSI. This could be an issue since there may be coils in Lot 3 that do not meet the 1500 PSI standard. Lots 1 and 2 showed no difference from 1500. MechaCar would do well do not accept coils from Lot 3.