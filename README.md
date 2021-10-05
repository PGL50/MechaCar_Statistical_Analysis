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




