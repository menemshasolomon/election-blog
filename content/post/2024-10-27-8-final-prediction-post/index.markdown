---
title: 8. Final Prediction Post
author: Mena Solomon
date: '2024-10-27'
slug: []
categories: []
tags: []
---







## How to predict an election outcome?

**Over the past seven weeks, I have been working to build a model which can effectively predict the outcome of the 2024 presidential election. Now, with a little over a week until election day, it is time to utilize my knowledge to produce a comprehensive election forecast.** 

**My final model will include five predictive variables —**

- **Q2 GDP Growth**: In [week two]((https://menemshasolomon.github.io/election-blog/post/2024-09-14-2-the-importance-of-the-economy/)) we began our discussion of fundamentals, covering the effect of the economy on incumbent vote share. Week two's model discovered the significant relationship between Q2 GDP growth and vote share, above all other economic variables. 
- **Latest Poll Averages**: Polling was covered in [week three](https://menemshasolomon.github.io/election-blog/post/2024-09-18-3-incorporating-polling/). The regularized regression model from that post discovered that the weeks with the greatest predictive power were those closest to the election. In this way, the model only includes recent polling data 
- **Incumbency**: The incumbency advantage was discussed in [week four](https://menemshasolomon.github.io/election-blog/post/2024-09-27-4-the-incumbency-advantage/) wherein we weighed the effects of name recognition, pork-barrel spending, and candidate fatigue. Incumbent status proves to be a major predictor of election outcomes; however, this effect is complicated by the candidate switch from Biden to Harris. Regardless, incumbency proved predictive in my week four model, thus it is incorporated here as well.
- **Democratic Two-Party Vote Share Lagged One Cycle**: In [week five](https://menemshasolomon.github.io/election-blog/post/2024-10-02-5-demographics-turnout-and-vote-choice/), we covered the effects of out final fundamental variable: demographics. As the electorate becomes further calcified, demographics are increasingly predictive of both turnout and election outcomes. It is difficult, however, to predict demographic shifts on existing data. Indeed, lagged vote share serves as a proxy for this variable (and others) by displaying how the state has voted in past elections.
- **Democratic Two-Party Vote Share Lagged Two Cycles**: By including lagged vote share from both the previous cycle and the one before that, the model is able to account for shifts within the state — i.e. demographic, turnout, or campaign strategy changes. 

Significantly, this model does *not* include campaign variables covered in [week 6](https://menemshasolomon.github.io/election-blog/post/2024-10-09-6-on-air-the-addition-of-campaign-advertising/) and [week 7](https://menemshasolomon.github.io/election-blog/post/2024-10-16-7-the-ground-game/). There are three primary reasons for this choice: 1. As political scholars point out, the election can often be predicted on fundamentals alone due to a tug-of-war effect wherein each candidate, campaigning at a similar volume, cancels out the effect of their opponent's campaign. 2. Due to the ever-changing and increasingly dynamic nature of campaigning, there is little historical data to incorporate into the model. Limited data will often generate model bias, which would inhibit my understanding of the predictive power of the variables listed above. 3. Over the past month, Kamala Harris raised over 1 billion dollars in donations [(Wall Street Journal, 2024)](https://www.wsj.com/livecoverage/harris-trump-election-10-21-2024/card/contributions-to-kamala-harris-topped-1-billion-in-third-quarter-C1LmXXd819zmR3vzZAWX). Indeed, campaign spending and mobilization has become unprecedented, calling into question the predictive power of campaigns.

*This model is also trained off of data beginning in 1972 so as to include the maximum number of election cycles after the Civil Rights Act, when each party's ideology become more consistent.* 

**Training a regression model to predict Democratic two-party vote share**


```
## 
## =================================================================================
##                                                         Dependent variable:      
##                                                   -------------------------------
##                                                   Democratic Two-Party Vote Share
## ---------------------------------------------------------------------------------
## Latest Democratic Poll Averages                          0.695*** (0.027)        
## Q2 GDP Growth                                            0.138*** (0.017)        
## Incumbency                                               -3.112*** (0.410)       
## Democratic Two-Party Vote Share Lagged One Cycle         0.526*** (0.033)        
## Democratic Two-Party Vote Share Lagged Two Cycles        -0.190*** (0.025)       
## Constant                                                 3.690*** (0.939)        
## ---------------------------------------------------------------------------------
## Observations                                                    559              
## R2                                                             0.836             
## Adjusted R2                                                    0.834             
## Residual Std. Error                                      3.741 (df = 553)        
## F Statistic                                          563.175*** (df = 5; 553)    
## =================================================================================
## Note:                                                 *p<0.1; **p<0.05; ***p<0.01
```


**This model, with an adjusted R^2 of 83.4%, can explain all but 20% of the variance in Democratic two-party vote share in every state's election since 1972.** Above, the asterisks indicate that each of the five variables described above is predictive at the 0.01 level. Indeed, each coefficient is also of significant magnitude, representing the percent increase in Democratic vote share triggered by increasing each variable by one point. 

**Training a regression model to predict Republican two-party vote share**


```
## 
## =================================================================================
##                                                         Dependent variable:      
##                                                   -------------------------------
##                                                   Republican Two-Party Vote Share
## ---------------------------------------------------------------------------------
## Latest Republican Poll Averages                          0.584*** (0.023)        
## Q2 GDP Growth                                            -0.040** (0.017)        
## Incumbency                                               -3.725*** (0.407)       
## Republican Two-Party Vote Share Lagged One Cycle         0.444*** (0.035)        
## Republican Two-Party Vote Share Lagged Two Cycles        0.076*** (0.026)        
## Constant                                                   0.578 (1.093)         
## ---------------------------------------------------------------------------------
## Observations                                                    559              
## R2                                                             0.833             
## Adjusted R2                                                    0.832             
## Residual Std. Error                                      3.770 (df = 553)        
## F Statistic                                          553.132*** (df = 5; 553)    
## =================================================================================
## Note:                                                 *p<0.1; **p<0.05; ***p<0.01
```


**This model, with an adjusted R^2 of 83.2%, can explain all but 20% of the variance in Republican two-party vote share in every state's election since 1972.** Above, the asterisks indicate that each of the five variables described above is predictive at the 0.01 level, except Q2 GDP growth which is predictive at the 0.05 level. Indeed, each coefficient is also of significant magnitude, representing the percent increase in Democratic vote share triggered by increasing each variable by one point. 

**The similarities in both of these regression models is indicative of the predictive power of all of the variables included in the model.** 

## Utilizing a regularized regression to eliminate collinearity

In using variables which are often highly correlated not only with my chosen outcome variable, two-party vote share, but the other variables within the model as well generates a high risk of collinearity. This could bias our results, thus I chose to use an **elastic-net regularized regression which shrinks each coefficient based on its relative significance, thus decreasing model bias.** In generating this model, cross validation was used to determine the model's best lambda value.  

**To test the success of the elastic net regularization on enhancing my model's predictive power, I ran a k-fold cross validation, the results of which are included here:**



Table: <span id="tab:unnamed-chunk-5"></span>Table 1: Out-of-Sample Error Summary for Democratic and Republican Predictions

|Party      | Mean Error| Standard Deviation|
|:----------|----------:|------------------:|
|Democratic |  0.0520180|           5.800855|
|Republican | -0.1684959|           7.165806|


**The very small mean error, accompanied by a similarly low standard deviation, increases my confidence in both models, indicating their predictive power.**

## Predicting the 2024 election

As I have done in the previous three weeks, I will be predicting for the seven states which [expert predictors like Cook and Sabato](https://menemshasolomon.github.io/election-blog/post/2024-09-27-4-the-incumbency-advantage/) determine to be toss-ups in the upcoming election: Arizona, Nevada, Michigan, Wisconsin, North Carolina, Georgia, and Pennsylvania. Using the elastic-net regularized regression model generated above, which includes five predictive variables, my models calculated both Democratic and Republican two-party vote share.

**2024 Election Predictions:**


|   |state          | Democratic Two-Party Vote Share|Winner |
|:--|:--------------|-------------------------------:|:------|
|1  |Arizona        |                        50.77350|Harris |
|4  |Georgia        |                        51.23031|Harris |
|6  |Michigan       |                        51.79278|Harris |
|11 |Nevada         |                        51.36677|Harris |
|15 |North Carolina |                        50.70765|Harris |
|17 |Pennsylvania   |                        51.63566|Harris |
|20 |Wisconsin      |                        51.45839|Harris |



|   |state          | Republican Two-Party Vote Share|Winner |
|:--|:--------------|-------------------------------:|:------|
|1  |Arizona        |                        54.70818|Trump  |
|4  |Georgia        |                        54.73862|Trump  |
|6  |Michigan       |                        53.22518|Trump  |
|11 |Nevada         |                        53.29655|Trump  |
|15 |North Carolina |                        55.05921|Trump  |
|17 |Pennsylvania   |                        53.85692|Trump  |
|20 |Wisconsin      |                        54.01358|Trump  |


**As displayed by both models, an apparent error exists wherein each model is biased to predict a two-party vote share which sums to around 105%, instead of 100%.** This bias does not appear to shift when any single variable is removed, thus indicating that it is the fault of an anomaly in the data. To account for this error, my final result normalizes the results above.

**Normalized 2024 election prediction:**



|State          | Democratic Prediction| Republican Prediction|Winner |
|:--------------|---------------------:|---------------------:|:------|
|Arizona        |              48.13490|              51.86510|Trump  |
|Georgia        |              48.34465|              51.65535|Trump  |
|Michigan       |              49.31803|              50.68197|Trump  |
|Nevada         |              49.07810|              50.92190|Trump  |
|North Carolina |              47.94285|              52.05715|Trump  |
|Pennsylvania   |              48.94720|              51.05280|Trump  |
|Wisconsin      |              48.78869|              51.21131|Trump  |


**After normalizing the results, the model appears to predict a landslide victory for Trump in every swing state. Indeed, this model predicts 312 electoral votes for Trump and 226 for Harris.** While this result appears to be incredibly unlikely, it is not impossible. Furthermore, the confidence intervals (not shown above) include both outcomes, re-emphasizing that this year's election will be decided within an incredibly slim margin.

## Notes
All code above is accessible via [Github](https://github.com/menemshasolomon/election-blog/blob/main/content/post/2024-10-09-6-on-air-the-addition-of-campaign-advertising/index.Rmarkdown).


**Data Sources**

US Presidential Election Popular Vote Data from 1948-2020 provided by the course. Economic data from the U.S. Bureau of Economic Analysis, also provided by the course. Polling data sourced from FiveThirtyEight.

