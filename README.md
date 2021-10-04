# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

<br/>

![Linear model](/Resources/lm_output.png) 

<br/>

##
- **Vehicle length** and **Ground Clearance** are the two variables that are significant in the multiple linear regression model predicting MPG (assuming a 0.05 significance level). Each on has a highly significant p-value (<0.001) associated with it's slope.

<br>

- There is not one slope in a multiple linear regression model. Each variable has it's own slope which is its relationship with the dependent variable mpg. Since **Vehicle length** and **Ground Clearance** are both significant in the model they each have a slope that is different from zero (6.27 and 3.55, respectively). The other variables in the model (vehicle weight, spoiler andgle and AWD) have slopes that are not significantly different from zero. The F-statistic for the model is also highly significant (<0.001) which tests that some of the variables have significant slopes.

<br>

- This model has an R-squared value = 0.71 which signifies thatis has accounted for more than 70% of the variability in MPG of MechaCar prototype. This would be considered an effective model. There may need to be some exploration of data transformation done with such a highly significant intercept.

<br>



