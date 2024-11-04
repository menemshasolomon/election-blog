---
title: 9. Final Prediction Assignment
author: Mena Solomon
date: '2024-11-01'
slug: []
categories: []
tags: []
---









## Who will win the 2024 Presidential Election?

With only a few days to go until voting closes across the United States, the time has come to generate my finalized prediction for the 2024 Presidential election. Building off of eight weeks of learning, modeling, and discussing, my final model has been built based on existing scholarship, the successes (and failures) of models over the past week, data availability, and an increased understanding of the unique nature of this election.

**Model Formula**

My model includes four predictive variables:

- **Latest Poll Averages**: Polling was covered in [week three](https://menemshasolomon.github.io/election-blog/post/2024-09-18-3-incorporating-polling/). The regularized regression model from that post discovered that the weeks with the greatest predictive power were those closest to the election. In this way, the model only includes recent polling data 
- **The Interaction Between Q2 GDP Growth and Incumbency**: In [week two]((https://menemshasolomon.github.io/election-blog/post/2024-09-14-2-the-importance-of-the-economy/)) we began our discussion of fundamentals, covering the effect of the economy on incumbent vote share. Week two's model discovered the significant relationship between Q2 GDP growth and vote share, above all other economic variables. This relationship, however, often comes across in the relationship between Q2 GDP Growth and incumbent advantage. If GDP growth is high, individuals may be more likely to re-elect an incumbent president; however, if growth is low, the opposite may take place. Indeed, the incumbency advantage was discussed in [week four](https://menemshasolomon.github.io/election-blog/post/2024-09-27-4-the-incumbency-advantage/) wherein we weighed the effects of name recognition, pork-barrel spending, and candidate fatigue. Incumbent status proves to be a major predictor of election outcomes; however, this effect is complicated by the candidate switch from Biden to Harris. To account for this, incumbency will only be included in the model as it related to Q2 GDP growth, accounting for the reality that while many voters see Harris as different than Biden, they attribute the low economic growth over the Biden presidency to her. 
- **Democratic Two-Party Vote Share Lagged One Cycle**: In [week five](https://menemshasolomon.github.io/election-blog/post/2024-10-02-5-demographics-turnout-and-vote-choice/), we covered the effects of out final fundamental variable: demographics. As the electorate becomes further calcified, demographics are increasingly predictive of both turnout and election outcomes. It is difficult, however, to predict demographic shifts on existing data. Indeed, lagged vote share serves as a proxy for this variable (and others) by displaying how the state has voted in past elections.
- **Democratic Two-Party Vote Share Lagged Two Cycles**: By including lagged vote share from both the previous cycle and the one before that, the model is able to account for shifts within the state — i.e. demographic, turnout, or campaign strategy changes. 

**Model Strategy**

**Regression Modeling**
I decided to use a standard regression to build out my predictive my model. I have three primary reasons for utilizing a  regression model as opposed to an ensemble method or a form of machine learning.

1. **Transparency**: In using a regression model throughout the past few weeks, I have attempted to ensure that I am transparent in my assumptions as well as their impact on the models and my overall predictions. My reasoning behind the prioritization of transparency lies in the importance of election forecasting in instilling confidence in U.S. elections. Without forecasting, the American people would have no baseline upon which to gauge election results. In a time where election integrity has been called into question and a team of officials are lined up to discount the results, predictions are a means of giving the public a sense of what to expect on election night, thus simple transparency is key to ensuring the result of my model directly reflects its inputs.  
2. **Interpretability**: Building upon the previous point, election forecasts are not just designed to be read by expert data scientists. Rather, large audiences of American citizens rely on forecasts to understand the temperature of the nation going into election night. In this way, it is important that my model be interpretable by audiences beyond a data science sphere. Using a regularized regression model allows me to easily interpret which variables are significant predictors and how, in aggregate, they deliver a prediction.
3. **Generalizability**: Data science, especially as it pertains to election forecasting, is a relatively new field, thus generating a lack of robust data for every variable in my model. Regression models work best at generating generalizable results from limited data without creating extreme model biases.

*The first regression model measures the relationship between Democratic two-party vote share and my four predictive variables: the latest poll averages, the interaction effect between Q2 GDP and incumbency, Democratic two-party vote share lagged one cycle, and Democratic two-party vote share lagged two cycles.*


```
## 
## =================================================================================
##                                                         Dependent variable:      
##                                                   -------------------------------
##                                                   Democratic Two-Party Vote Share
## ---------------------------------------------------------------------------------
## Latest Democratic Poll Averages                          0.713*** (0.028)        
## Incumbency and GDP Interaction Effect                     -0.067 (0.049)         
## Democratic Two-Party Vote Share Lagged One Cycle         0.382*** (0.028)        
## Democratic Two-Party Vote Share Lagged Two Cycles        -0.085*** (0.025)       
## Constant                                                 3.628*** (1.041)        
## ---------------------------------------------------------------------------------
## Observations                                                    559              
## R2                                                             0.805             
## Adjusted R2                                                    0.803             
## Residual Std. Error                                      4.077 (df = 554)        
## F Statistic                                          570.632*** (df = 4; 554)    
## =================================================================================
## Note:                                                 *p<0.1; **p<0.05; ***p<0.01
```

Since my predictive model is regularized with elastic-net and normalized by combining models of both Democratic and Republican two-party vote share (in-depth explanations will follow below), the coefficients and r-squared value of this model are inaccurate representations of my final model. I include them here, however, as a sense-check for the assumptions made above. First, the adjusted r-squared of 0.8 displays that the simple regression model can explain 80% of the variance in Democratic two-party vote share. To me, this emphasizes that the variables included here do a reasonably good job of explaining the attitude of the American electorate when selecting a presidential candidate. Furthermore, for every variable except the Interaction between Incumbency and GDP, the size of each coefficient, as well as their statistical significance, indicate their relative importance in understanding Democratic vote share. 

*The second regression model measures the relationship between Republican two-party vote share and my four predictive variables: the latest poll averages, the interaction effect between Q2 GDP and incumbency, Republican two-party vote share lagged one cycle, and Republican two-party vote share lagged two cycles.* 


```
## 
## =================================================================================
##                                                         Dependent variable:      
##                                                   -------------------------------
##                                                   Republican Two-Party Vote Share
## ---------------------------------------------------------------------------------
## Latest Republican Poll Averages                          0.636*** (0.024)        
## Incumbency and GDP Interaction Effect                      0.026 (0.019)         
## Republican Two-Party Vote Share Lagged One Cycle         0.255*** (0.030)        
## Republican Two-Party Vote Share Lagged Two Cycles        0.193*** (0.024)        
## Constant                                                  -0.210 (1.168)         
## ---------------------------------------------------------------------------------
## Observations                                                    559              
## R2                                                             0.809             
## Adjusted R2                                                    0.807             
## Residual Std. Error                                      4.035 (df = 554)        
## F Statistic                                          585.451*** (df = 4; 554)    
## =================================================================================
## Note:                                                 *p<0.1; **p<0.05; ***p<0.01
```

These results are incredibly similar to those seen in the Democratic two-party vote share model, indicating both models operate similarly and are very successful in predicting two-party vote share. These sense-checks leave me confident in the variables I have chosen to include within my model going forward.

**Regularized Regression**
When utilizing a regression model, there are two main concerns: overfitting and multicollinearity. To address these concerns, I decided to use an Elastic-Net regularized regression model, which combines both Lasso and Ridge regularization tools to penalize large coefficients and and average the coefficients of correlated predictors. My penalization term, known as alpha, was calculated using cross validation to pick a term wich best fit my model. In doing so, I effectively improved the stability of my model as well as its predictive power.




*The first elastic-net regression regularizes the Democratic two-party vote share regression analyzed above*


Table: <span id="tab:unnamed-chunk-7"></span>Table 1: Democratic Two-Party Vote Share Elastic Net Coefficients

|Variable                                          | Coefficient|
|:-------------------------------------------------|-----------:|
|Intercept                                         |   3.7152136|
|Intercept  1                                      |   0.0000000|
|Latest Democratic Poll Averages                   |   0.7089807|
|Incumbency and GDP Interaction Effect             |  -0.0630074|
|Democratic Two Party Vote Share Lagged One Cycle  |   0.3784582|
|Democratic Two Party Vote Share Lagged Two Cycles |  -0.0795311|

In comparing the coefficients of this model with the model above, it appears that none of the coefficients underwent significant changes with the use of elastic-net. Indeed, the ideal lambda discovered through cross-validation was 0.03 meaning that my model requires only a small amount of regularization to optimize predictive performance. This means that my model has a low risk of both multicollinearity and overfitting, further emphasizing the strong predictive power of my selected variables. 

Furthermore, the most interesting finding here is that the variable which codes for the latest Democratic poll averages has the largest coefficient, indicating it is the most predictive of the actual Democratic two-party vote share. Indeed, every percentage point increase in the latest Democratic poll averages correlated with a 0.7% increase in Democratic two-party vote share. The only other coefficient that comes close to this magnitude is Democratic Two Party Vote Share Lagged One Cycle, wherein a 1% increase is associated with a 0.3% increase in two-party vote share. 

*The second elastic-net regression regularizes the Republican two-party vote share regression also analyzed above*


Table: <span id="tab:unnamed-chunk-8"></span>Table 2: Republican Two-Party Vote Share Elastic Net Coefficients

|Variable                                          | Coefficient|
|:-------------------------------------------------|-----------:|
|Intercept                                         |   0.0823261|
|Intercept  1                                      |   0.0000000|
|Latest Republican Poll Averages                   |   0.6316387|
|Incumbency and GDP Interaction Effect             |   0.0231685|
|Republican Two Party Vote Share Lagged One Cycle  |   0.2562105|
|Republican Two Party Vote Share Lagged Two Cycles |   0.1901908|

While the lambda found through cross-validation here is slightly higher, sitting around 0.056, the coefficients remain relatively unchanged compared to those found in the aimple regression model above. Once again, this indicates my model has a low risk of both multicollinearity and overfitting, further emphasizing the strong predictive power of my selected variables. 

As mentioned above, the coefficient on the latest Republican poll averages variable is also the largest here, indicating a 1% increase in poll averages leads to a 0.6% increase in Republican two-party vote share. Furthermore, the coefficients on both lagged Republican vote shares are of significant magnitude, displaying that a 1% increase in vote share lagged two cycles increases Republican vote share by 0.19% while a 1% increase in vote share lagged one cycle increases Republican vote share by 0.26%.

**Model Validation**

To verify the accuracy of my model in predicting my chosen outcome variables — Democratic and Republican two-party vote share — I decided to perform an out-of-sample performance validation. While I would have liked to display my in-sample error as well, the use of an aggregate elastic-net model predicted onto state-based variables makes it incredibly difficult, thus I will instead focus on out-of-sampel error.

*Using Bootstrapped Out-of-Sample Error Estimation to Test Predictive Power:*


Table: <span id="tab:unnamed-chunk-9"></span>Table 3: Out-of-Sample Error Summary for Democratic and Republican Predictions

|Party      | Mean Error| Standard Deviation|
|:----------|----------:|------------------:|
|Democratic | -0.2518568|           6.260530|
|Republican |  0.4969762|           6.017972|

The mean error for Democrats is around -0.25, indicating the model tends to slightly underestimate Democrat performance. The mean error for Republicans is around 0.5, indicating the model tends to slightly overestimate Republican performance. That said, the values are close to zero, suggesting the models do not have a significant directional bias in their predictions. A standard deviation of around 6 for both, however, is relatively high, especially in the context of vote share predictions. A high standard deviation (relative to the mean error) suggests that individual predictions vary considerably from the true values.

**Predicting Vote Share**

As I have done in the previous three weeks, I will be predicting for the seven states which [expert predictors like Cook and Sabato](https://menemshasolomon.github.io/election-blog/post/2024-09-27-4-the-incumbency-advantage/) determine to be toss-ups in the upcoming election: Arizona, Nevada, Michigan, Wisconsin, North Carolina, Georgia, and Pennsylvania. Using the elastic-net regularized regression model generated above, which includes four predictive variables, my models calculated both Democratic and Republican two-party vote share.

When interpreting the results below, bear in mind that the predicted two-party vote shares sum to above 100 as a result of the data used in this model. The data will be normalized below; however, this model is included for the sake of evaluating the confidence intervals for each state.

*Model of Elastic-Net Regularized Regression Predicted Two-Party Democratic Vote Share with 90% Confidence Intervals for Swing States*


Table: <span id="tab:unnamed-chunk-10"></span>Table 4: Predicted Two-Party Democratic Vote Share with Confidence Intervals for Swing States

|State          | Predicted Vote Share| Lower Bound| Upper Bound|Winner |
|:--------------|--------------------:|-----------:|-----------:|:------|
|Arizona        |             51.86514|    46.65193|    57.07834|Harris |
|Georgia        |             52.11199|    46.89879|    57.32520|Harris |
|Michigan       |             52.79701|    47.58380|    58.01021|Harris |
|Nevada         |             52.38159|    47.16839|    57.59480|Harris |
|North Carolina |             51.75088|    46.53768|    56.96409|Harris |
|Pennsylvania   |             52.51599|    47.30279|    57.72919|Harris |
|Wisconsin      |             52.56607|    47.35287|    57.77927|Harris |

*Model of Elastic-Net Regularized Regression Predicted Two-Party Republican Vote Share with 90% Confidence Intervals for Swing States*


Table: <span id="tab:unnamed-chunk-11"></span>Table 5: Predicted Two-Party Republican Vote Share with Confidence Intervals for Swing States

|State          | Predicted Vote Share| Lower Bound| Upper Bound|Winner |
|:--------------|--------------------:|-----------:|-----------:|:------|
|Arizona        |             53.26769|    48.10809|    58.42729|Trump  |
|Georgia        |             53.37372|    48.21411|    58.53332|Trump  |
|Michigan       |             51.74763|    46.58803|    56.90724|Trump  |
|Nevada         |             51.63499|    46.47539|    56.79460|Trump  |
|North Carolina |             53.46686|    48.30725|    58.62646|Trump  |
|Pennsylvania   |             52.28012|    47.12051|    57.43972|Trump  |
|Wisconsin      |             52.39460|    47.23500|    57.55421|Trump  |

The 90% confidence interval of these predictions includes both election outcomes, indicating the extreme variability of the model. Since election prediction models are extremely specific and based on limited data, confidence intervals which include both outcomes are typical; however, it is important to bear this in mind when interpreting the results below. 

*Normalizing the Two-Party Vote Share in my Models to Generate a Final Prediction*


|State          | Democratic Prediction| Republican Prediction|Winner |
|:--------------|---------------------:|---------------------:|:------|
|Arizona        |              49.33296|              50.66704|Trump  |
|Georgia        |              49.40195|              50.59805|Trump  |
|Michigan       |              50.50188|              49.49812|Harris |
|Nevada         |              50.35888|              49.64112|Harris |
|North Carolina |              49.18456|              50.81544|Trump  |
|Pennsylvania   |              50.11254|              49.88746|Harris |
|Wisconsin      |              50.08168|              49.91832|Harris |

**In normalizing both predictions, Harris appears to win Michigan, Nevada, Pennsylvania, and Wisconsin on a slim margin, while Trump wins Arizona, Georgia, and North Carolina on similarly slim margin. This leads to a result where Harris wins with 276 electors while Trump has 262 electors.** 



```r
library(ggplot2)
library(maps)

us_states <- map_data("state")

final_preds$State <- tolower(final_preds$State)

map_data <- us_states %>%
  left_join(final_preds, by = c("region" = "State"))


ggplot(map_data, aes(x = long, y = lat, group = group)) +
  geom_polygon(aes(fill = Winner), color = "white") + 
  scale_fill_manual(values = c("Harris" = "blue", "Trump" = "red")) +
  theme_minimal() +
  theme(
    panel.grid = element_blank(),   
    axis.title.x = element_blank(), 
    axis.title.y = element_blank(), 
    axis.ticks = element_blank(),     
    axis.text = element_blank()        
  ) + 
  labs(title = "Predicted Election Results by State, Swing States Only",
       fill = "Winner") 
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-13-1.png" width="672" />

## Notes
All code above is accessible via [Github](https://github.com/menemshasolomon/election-blog/blob/main/content/post/2024-11-01-9-final-prediction-assignment/index.Rmarkdown).


**Data Sources**

US Presidential Election Popular Vote Data from 1948-2020 provided by the course. Economic data from the U.S. Bureau of Economic Analysis, also provided by the course. Polling data sourced from FiveThirtyEight.

