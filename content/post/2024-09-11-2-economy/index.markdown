---
title: 2. The Importance of the Economy
author: Package Build
date: '2024-09-15'
slug: []
categories: []
tags: []
---

## How does the economy relate to election outcomes?

Many scholars argue that most presidential elections are determined by political and economic conditions called fundamentals, which exist outside of campaign efforts by either party. Factors like economic growth, disposable income, inflation, and the cost of living, which are often economic circumstances of the previous administration, are found to be highly correlated with election outcomes. This phenomenon is known as retrospective economic voting, wherein a voter makes choices based on the incumbent's past performance, with a specific focus on the economy [Achen and Bartels, 2017](https://hollis.harvard.edu/permalink/f/1s5nto6/01HVD_ALMA512397392810003941).

To evaluate this correlation it is important to look at the relationship between different economic indicators and two-party vote. In doing so, I will be focusing on economic data from quarter 2, the financial reporting quarter right before the election. This echoes the assumption embedded within retrospective voting that a vast majority of American voters only begin paying attention to the election in the months leading up to November, rewarding or punishing incumbent candidates and/or parties based on recent economic conditions [Achen and Bartels, 2017](https://hollis.harvard.edu/permalink/f/1s5nto6/01HVD_ALMA512397392810003941). 
<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-1-1.png" width="1632" />


<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-2-1.png" width="672" /><img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-2-2.png" width="672" />

```
## [1] 0.4336956
```

```
## [1] 0.569918
```

```
## 
## Call:
## lm(formula = pv2p ~ GDP_growth_quarterly, data = d_inc_econ)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -6.7666 -3.3847 -0.7697  2.9121  8.8809 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)    
## (Intercept)           51.2580     1.1399  44.968   <2e-16 ***
## GDP_growth_quarterly   0.2739     0.1380   1.985   0.0636 .  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 4.834 on 17 degrees of freedom
## Multiple R-squared:  0.1881,	Adjusted R-squared:  0.1403 
## F-statistic: 3.938 on 1 and 17 DF,  p-value: 0.06358
```

```
## 
## Call:
## lm(formula = pv2p ~ GDP_growth_quarterly, data = d_inc_econ_2)
## 
## Residuals:
##    Min     1Q Median     3Q    Max 
## -6.237 -4.160  0.450  1.904  8.728 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)    
## (Intercept)           49.3751     1.4163  34.862   <2e-16 ***
## GDP_growth_quarterly   0.7366     0.2655   2.774   0.0135 *  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 4.463 on 16 degrees of freedom
## Multiple R-squared:  0.3248,	Adjusted R-squared:  0.2826 
## F-statistic: 7.697 on 1 and 16 DF,  p-value: 0.01354
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-2-3.png" width="672" /><img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-2-4.png" width="672" />


```r
#Test predictive power
#In sample fit --> this is a good baseline, but it is sort of like cheating 

#R^2
summary(reg_econ) #Multiple R^2 = 0.19
```

```
## 
## Call:
## lm(formula = pv2p ~ GDP_growth_quarterly, data = d_inc_econ)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -6.7666 -3.3847 -0.7697  2.9121  8.8809 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)    
## (Intercept)           51.2580     1.1399  44.968   <2e-16 ***
## GDP_growth_quarterly   0.2739     0.1380   1.985   0.0636 .  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 4.834 on 17 degrees of freedom
## Multiple R-squared:  0.1881,	Adjusted R-squared:  0.1403 
## F-statistic: 3.938 on 1 and 17 DF,  p-value: 0.06358
```

```r
summary(reg_econ_2) #Multiple R^2 = 0.32 --> better fit when 2020 is removed (regression is predictive 32% of the time)
```

```
## 
## Call:
## lm(formula = pv2p ~ GDP_growth_quarterly, data = d_inc_econ_2)
## 
## Residuals:
##    Min     1Q Median     3Q    Max 
## -6.237 -4.160  0.450  1.904  8.728 
## 
## Coefficients:
##                      Estimate Std. Error t value Pr(>|t|)    
## (Intercept)           49.3751     1.4163  34.862   <2e-16 ***
## GDP_growth_quarterly   0.7366     0.2655   2.774   0.0135 *  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 4.463 on 16 degrees of freedom
## Multiple R-squared:  0.3248,	Adjusted R-squared:  0.2826 
## F-statistic: 7.697 on 1 and 16 DF,  p-value: 0.01354
```

```r
#In-sample error
plot(reg_econ)
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-3-1.png" width="672" /><img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-3-2.png" width="672" /><img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-3-3.png" width="672" /><img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-3-4.png" width="672" />

```r
plot(d_inc_econ$year, d_inc_econ$pv2p, type = "l",
     main = "true Y (Line), Predicted Y (Dot) for Each Year")
points(d_inc_econ$year, predict(reg_econ_2, d_inc_econ))
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-3-5.png" width="672" />

```r
hist(reg_econ_2$model$pv2p - reg_econ_2$fitted.values)
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-3-6.png" width="672" />

```r
#mean-squared error (hard to interpret on its own)
mse <- mean((reg_econ_2$model$pv2p - reg_econ_2$fitted.values)^2)
mse
```

```
## [1] 17.7027
```

```r
sqrt(mse) #in case of outliers, this is more reliable
```

```
## [1] 4.207458
```


```r
#Out-of-sample testing

# Model Testing: Leave-One-Out - withold one observation before fitting and then see how well the model predicts
(out_samp_pred <- predict(reg_econ_2, d_inc_econ[d_inc_econ$year == 2020,]))
```

```
##        1 
## 28.75101
```

```r
(out_samp_truth <- d_inc_econ |> filter(year == 2020) |> select(pv2p))
```

```
## # A tibble: 1 × 1
##    pv2p
##   <dbl>
## 1  47.7
```

```r
out_samp_pred - out_samp_truth # Dangers of fundamentals-only model!
```

```
##        pv2p
## 1 -18.97913
```

```r
# https://www.nytimes.com/2020/07/30/business/economy/q2-gdp-coronavirus-economy.html

# Model Testing: Cross-Validation (One Run) - applies to any random sub sample, train on half and predict on half
years_out_samp <- sample(d_inc_econ_2$year, 9) 
mod <- lm(pv2p ~ GDP_growth_quarterly, 
          d_inc_econ_2[!(d_inc_econ_2$year %in% years_out_samp),])
out_samp_pred <- predict(mod, d_inc_econ_2[d_inc_econ_2$year %in% years_out_samp,])
out_samp_truth <- d_inc_econ_2$pv2p[d_inc_econ_2$year %in% years_out_samp]
mean(out_samp_pred - out_samp_truth)
```

```
## [1] 2.225764
```

```r
# Model Testing: Cross-Validation (1000 Runs)
out_samp_errors <- sapply(1:1000, function(i) {
  years_out_samp <- sample(d_inc_econ_2$year, 9) 
mod <- lm(pv2p ~ GDP_growth_quarterly, 
          d_inc_econ_2[!(d_inc_econ_2$year %in% years_out_samp),])
out_samp_pred <- predict(mod, d_inc_econ_2[d_inc_econ_2$year %in% years_out_samp,])
out_samp_truth <- d_inc_econ_2$pv2p[d_inc_econ_2$year %in% years_out_samp]
mean(out_samp_pred - out_samp_truth)
})

mean(abs(out_samp_errors))
```

```
## [1] 1.801506
```



```r
####----------------------------------------------------------#
#### Predicting 2024 results using simple economy model. 
####----------------------------------------------------------#
# Sequester 2024 data.
GDP_new <- d_fred |> 
  filter(year == 2024 & quarter == 2) |> 
  select(GDP_growth_quarterly)

# Predict --> assume 2024 is not a major outlier, 52% for the incumbent party
#predict(model, new data)
predict(reg_econ_2, GDP_new)
```

```
##        1 
## 51.58486
```

```r
# Predict uncertainty. -> uncertainty is pretty wide here, so many predictors will use a lower confidence interval to narrow their prediction interval (change the level from 0.95 to 0.8 to get a narrower interval)
predict(reg_econ_2, GDP_new, interval = "prediction")
```

```
##        fit      lwr     upr
## 1 51.58486 41.85982 61.3099
```
to improve the model, there are many options:
1. timeline
- retrospective voters are the ones who focus on Q2 growth (less-rational)
- more rational voters may vote based on aggregate GDP growth over the entire presidency
2. use different data
- RDI, SMP 500, GDP, unemployment etc.
 -worry about over fitting and multi collinearity when adding many variables (this mades IVs no longer independent)
