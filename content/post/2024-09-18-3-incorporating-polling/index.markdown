---
title: 3. Incorporating Polling
author: Mena Solomon
date: '2024-09-18'
slug: []
categories: []
tags: []
---
## How can we best use polls to predict election outcomes?

Polls are central to understanding democratic discourse as they measure the average person's opinion. Since January 1, 2024 there have been **13,626 large-scale presidential polls** conducted to gauge sentiment towards the general election candidates. From 1968 to 2020, *general election polling has largely been an accurate predictor of election outcomes*, with an average polling miss of 1.58 percentage points in terms of popular vote. Much of this accuracy stems from a concept which dates back to Galton's Ox, wherein a large sample of guesses — or, in this case, opinions — will generate an average that approximates the general population's opinion as error in both ways cancels out. [(Galton, 1907)](https://hollis.harvard.edu/permalink/f/1mdq5o5/TN_cdi_crossref_primary_10_1038_075450a0)

Despite the general accuracy of polling right before election day, **polls are often incredibly variable** due to changes in sampling groups, incomplete information, or news events which temporarily alter opinion. The variability of polling is on display in the graphic below, accompanied by the dates of major events which are thought to alter polling answers, at least temporarily. The 1988 election is representative of polling before the digital era, while the 2020 election is the most recent general election. Data on 2024 polling thus far is also included.


<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-2-1.png" width="768" />


## How well do polls predict elections?

To understand how well these polls predict 

## Using these models, how can polling be used to predict the outcome of the 2024 election?



Regularization
OLS: works well when linear relationship is assumed, features are not highly correlated, number of features is less than number of observations
- BUT our models with n+1 features are going to generate overfitting for our model, making the model serve only the data we put into it, thus it will be uninterpretable
--> we have 14 election years (data points) but 30 weeks of polling (variables)  in our OLS (makes OLD angry)
- sparsity principle: smaller subset of festures in model exhibits the strongest effects

regularization: constrain or regularize coefficients to reduce variance and decrease out-of-sample prediction error
- a regularizes regression shrinks coefficients with a penalty term to only include coefficients that actually decrease the sum of squared residuals --> select for important features in the model!


```
## 
## Call:
## lm(formula = pv2p ~ nov_poll, data = subset(d_poll_nov, party == 
##     "DEM"))
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -4.0155 -2.4353 -0.3752  1.4026  5.8014 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  14.2936     7.1693   1.994 0.069416 .  
## nov_poll      0.7856     0.1608   4.885 0.000376 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.968 on 12 degrees of freedom
## Multiple R-squared:  0.6654,	Adjusted R-squared:  0.6375 
## F-statistic: 23.86 on 1 and 12 DF,  p-value: 0.0003756
```

```
## 
## Call:
## lm(formula = pv2p ~ nov_poll, data = d_poll_nov)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -4.6190 -1.6523 -0.5808  1.3629  6.0220 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept) 17.92577    4.15543   4.314 0.000205 ***
## nov_poll     0.70787    0.09099   7.780 2.97e-08 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.75 on 26 degrees of freedom
## Multiple R-squared:  0.6995,	Adjusted R-squared:  0.6879 
## F-statistic: 60.52 on 1 and 26 DF,  p-value: 2.974e-08
```

```
## 
## Call:
## lm(formula = paste0("pv2p ~ ", paste0("poll_weeks_left_", 0:30, 
##     collapse = " + ")), data = d_poll_weeks_train)
## 
## Residuals:
## ALL 28 residuals are 0: no residual degrees of freedom!
## 
## Coefficients: (4 not defined because of singularities)
##                    Estimate Std. Error t value Pr(>|t|)
## (Intercept)        28.25534        NaN     NaN      NaN
## poll_weeks_left_0   3.24113        NaN     NaN      NaN
## poll_weeks_left_1   0.02516        NaN     NaN      NaN
## poll_weeks_left_2  -8.87360        NaN     NaN      NaN
## poll_weeks_left_3   7.91455        NaN     NaN      NaN
## poll_weeks_left_4   0.74573        NaN     NaN      NaN
## poll_weeks_left_5   1.41567        NaN     NaN      NaN
## poll_weeks_left_6  -4.58444        NaN     NaN      NaN
## poll_weeks_left_7   4.63361        NaN     NaN      NaN
## poll_weeks_left_8  -0.95121        NaN     NaN      NaN
## poll_weeks_left_9  -1.55307        NaN     NaN      NaN
## poll_weeks_left_10 -1.38062        NaN     NaN      NaN
## poll_weeks_left_11  1.74881        NaN     NaN      NaN
## poll_weeks_left_12 -1.28871        NaN     NaN      NaN
## poll_weeks_left_13 -0.08482        NaN     NaN      NaN
## poll_weeks_left_14  0.87498        NaN     NaN      NaN
## poll_weeks_left_15 -0.16310        NaN     NaN      NaN
## poll_weeks_left_16 -0.34501        NaN     NaN      NaN
## poll_weeks_left_17 -0.38689        NaN     NaN      NaN
## poll_weeks_left_18 -0.06281        NaN     NaN      NaN
## poll_weeks_left_19 -0.17204        NaN     NaN      NaN
## poll_weeks_left_20  1.52230        NaN     NaN      NaN
## poll_weeks_left_21 -0.72487        NaN     NaN      NaN
## poll_weeks_left_22 -2.76531        NaN     NaN      NaN
## poll_weeks_left_23  4.90361        NaN     NaN      NaN
## poll_weeks_left_24 -2.04431        NaN     NaN      NaN
## poll_weeks_left_25 -0.76078        NaN     NaN      NaN
## poll_weeks_left_26 -0.47860        NaN     NaN      NaN
## poll_weeks_left_27       NA         NA      NA       NA
## poll_weeks_left_28       NA         NA      NA       NA
## poll_weeks_left_29       NA         NA      NA       NA
## poll_weeks_left_30       NA         NA      NA       NA
## 
## Residual standard error: NaN on 0 degrees of freedom
## Multiple R-squared:      1,	Adjusted R-squared:    NaN 
## F-statistic:   NaN on 27 and 0 DF,  p-value: NA
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-3-1.png" width="672" />

```
## 32 x 1 sparse Matrix of class "dgCMatrix"
##                              s1
## (Intercept)        29.951147799
## poll_weeks_left_0   0.032163983
## poll_weeks_left_1   0.025440084
## poll_weeks_left_2   0.024404320
## poll_weeks_left_3   0.024688870
## poll_weeks_left_4   0.024695646
## poll_weeks_left_5   0.024725772
## poll_weeks_left_6   0.024080438
## poll_weeks_left_7   0.023636908
## poll_weeks_left_8   0.024487501
## poll_weeks_left_9   0.026498950
## poll_weeks_left_10  0.025642838
## poll_weeks_left_11  0.021361476
## poll_weeks_left_12  0.017386999
## poll_weeks_left_13  0.013378030
## poll_weeks_left_14  0.010078675
## poll_weeks_left_15  0.007248494
## poll_weeks_left_16  0.012943440
## poll_weeks_left_17  0.012879654
## poll_weeks_left_18  0.011157452
## poll_weeks_left_19  0.008302783
## poll_weeks_left_20  0.004012987
## poll_weeks_left_21  0.003350434
## poll_weeks_left_22  0.004458406
## poll_weeks_left_23  0.001019583
## poll_weeks_left_24 -0.002711193
## poll_weeks_left_25 -0.002447895
## poll_weeks_left_26  0.001121142
## poll_weeks_left_27  0.005975853
## poll_weeks_left_28  0.011623984
## poll_weeks_left_29  0.013833925
## poll_weeks_left_30  0.018964139
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-3-2.png" width="672" />

```
## 32 x 1 sparse Matrix of class "dgCMatrix"
##                             s1
## (Intercept)        24.57897724
## poll_weeks_left_0   0.50149421
## poll_weeks_left_1   .         
## poll_weeks_left_2   .         
## poll_weeks_left_3   .         
## poll_weeks_left_4   .         
## poll_weeks_left_5   0.08461518
## poll_weeks_left_6   .         
## poll_weeks_left_7   .         
## poll_weeks_left_8   .         
## poll_weeks_left_9   0.17064525
## poll_weeks_left_10  .         
## poll_weeks_left_11  .         
## poll_weeks_left_12  .         
## poll_weeks_left_13  .         
## poll_weeks_left_14  .         
## poll_weeks_left_15  0.01147512
## poll_weeks_left_16  .         
## poll_weeks_left_17  .         
## poll_weeks_left_18  0.23694416
## poll_weeks_left_19  .         
## poll_weeks_left_20  .         
## poll_weeks_left_21  .         
## poll_weeks_left_22  .         
## poll_weeks_left_23  .         
## poll_weeks_left_24  .         
## poll_weeks_left_25 -0.55693209
## poll_weeks_left_26  .         
## poll_weeks_left_27  .         
## poll_weeks_left_28  .         
## poll_weeks_left_29  .         
## poll_weeks_left_30  0.11120476
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-3-3.png" width="672" />

```
## [1] 9.575001
```

```
## [1] 1.89766
```

```
## [1] 4.816115
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-3-4.png" width="672" />


predictions 
- do we wanna only include data for Harris v. Trump or should we include Biden v. Trump polling data as well

```r
# First check how many weeks of polling we have for 2024. 
d_pollav_natl |> 
  filter(year == 2024) |> 
  select(weeks_left) |> 
  distinct() |> 
  range() # Let's take week 30 - 7 as predictors since those are the weeks we have polling data for 2024 and historically. 
```

```
## [1]  7 36
```

```r
x.train <- d_poll_weeks_train |>
  ungroup() |> 
  select(all_of(paste0("poll_weeks_left_", 7:30))) |> 
  as.matrix()
y.train <- d_poll_weeks_train$pv2p
x.test <- d_poll_weeks_test |>
  ungroup() |> 
  select(all_of(paste0("poll_weeks_left_", 7:30))) |> 
  as.matrix()

# Using elastic-net for simplicity. 
set.seed(02138)
enet.poll <- cv.glmnet(x = x.train, y = y.train, alpha = 0.5)
```

```
## Warning: Option grouped=FALSE enforced in cv.glmnet, since < 3 observations per
## fold
```

```r
lambda.min.enet.poll <- enet.poll$lambda.min

# Predict 2024 national pv2p share using elastic-net. --> these are summing to over 100...
(polls.pred <- predict(enet.poll, s = lambda.min.enet.poll, newx = x.test))
```

```
##            s1
## [1,] 51.79268
## [2,] 50.65879
```

```r
# Harris: 51.8%
# Trump: 50.7% 
```



```r
# Estimate models using polls alone, fundamentals alone, and combined fundamentals and polls. 
# this is one option for a weighting scheme
# Read economic data. 
d_econ <- read_csv("data/fred_econ.csv") |> 
  filter(quarter == 2)
```

```
## Rows: 387 Columns: 14
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: ","
## dbl (14): year, quarter, GDP, GDP_growth_quarterly, RDPI, RDPI_growth_quarte...
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

```r
# Combine datasets and create vote lags. 
d_combined <- d_econ |> 
  left_join(d_poll_weeks, by = "year") |> 
  filter(year %in% c(unique(d_vote$year), 2024)) |> 
  group_by(party) |> 
  mutate(pv2p_lag1 = lag(pv2p, 1), 
         pv2p_lag2 = lag(pv2p, 2)) |> 
  ungroup() |> 
  mutate(gdp_growth_x_incumbent = GDP_growth_quarterly * incumbent, 
         rdpi_growth_quarterly = RDPI_growth_quarterly * incumbent,
         cpi_x_incumbent = CPI * incumbent,
         unemployment_x_incumbent = unemployment * incumbent,
         sp500_x_incumbent = sp500_close * incumbent) # Generate interaction effects.

# Create fundamentals-only dataset and split into training and test sets. 
d_fund <- d_combined |> 
  select("year", "pv2p", "GDP", "GDP_growth_quarterly", "RDPI", "RDPI_growth_quarterly", "CPI", "unemployment", "sp500_close",
         "incumbent", "gdp_growth_x_incumbent", "rdpi_growth_quarterly", "cpi_x_incumbent", "unemployment_x_incumbent", "sp500_x_incumbent", 
         "pv2p_lag1", "pv2p_lag2") 
x.train.fund <- d_fund |> 
  filter(year <= 2020) |>
  select(-c(year, pv2p)) |> 
  slice(-c(1:9)) |> 
  as.matrix()
y.train.fund <- d_fund |> 
  filter(year <= 2020) |> 
  select(pv2p) |> 
  slice(-c(1:9)) |> 
  as.matrix()
x.test.fund <- d_fund |> 
  filter(year == 2024) |> 
  select(-c(year, pv2p)) |> 
  drop_na() |> 
  as.matrix()

# Estimate elastic-net using fundamental variables only.
set.seed(02138)
enet.fund <- cv.glmnet(x = x.train.fund, y = y.train.fund, intercept = FALSE, alpha = 0.5)
```

```
## Warning: Option grouped=FALSE enforced in cv.glmnet, since < 3 observations per
## fold
```

```r
lambda.min.enet.fund <- enet.fund$lambda.min

# Predict 2024 national pv2p share using elastic-net. 
(fund.pred <- predict(enet.fund, s = lambda.min.enet.fund, newx = x.test.fund))
```

```
##            s1
## [1,] 51.23438
## [2,] 47.63135
```

```r
# Sequester data for combined model.
d_combo <- d_combined |> 
  select("year", "pv2p", "GDP", "GDP_growth_quarterly", "RDPI", "RDPI_growth_quarterly", "CPI", "unemployment", "sp500_close",
         "incumbent", "gdp_growth_x_incumbent", "rdpi_growth_quarterly", "cpi_x_incumbent", "unemployment_x_incumbent", "sp500_x_incumbent", 
         "pv2p_lag1", "pv2p_lag2", all_of(paste0("poll_weeks_left_", 7:30))) 

x.train.combined <- d_combo |> 
  filter(year <= 2020) |> 
  select(-c(year, pv2p)) |> 
  slice(-c(1:9)) |> 
  as.matrix()
y.train.combined <- d_combo |>
  filter(year <= 2020) |> 
  select(pv2p) |> 
  slice(-c(1:9)) |> 
  as.matrix()
x.test.combined <- d_combo |>
  filter(year == 2024) |> 
  select(-c(year, pv2p)) |> 
  drop_na() |> 
  as.matrix()
  
# Estimate combined model.
set.seed(02138)
enet.combined <- cv.glmnet(x = x.train.combined, y = y.train.combined, intercept = FALSE, alpha = 0.5)
```

```
## Warning: Option grouped=FALSE enforced in cv.glmnet, since < 3 observations per
## fold
```

```r
lambda.min.enet.combined <- enet.combined$lambda.min

# Predict 2024 national pv2p share using elastic-net.
(combo.pred <- predict(enet.combined, s = lambda.min.enet.combined, newx = x.test.combined))
```

```
##           s1
## [1,] 50.4831
## [2,] 47.9374
```

```r
# Ensemble 1: Predict based on unweighted (or equally weighted) ensemble model between polls and fundamentals models. 
(unweighted.ensemble.pred <- (polls.pred + fund.pred)/2)
```

```
##            s1
## [1,] 51.51353
## [2,] 49.14507
```

```r
# Ensemble 2: Weight based on polls mattering closer to November. (Nate Silver)
election_day_2024 <- "2024-11-05"
today <- "2024-09-18"
days_left <- as.numeric(as.Date(election_day_2024) - as.Date(today))

(poll_model_weight <- 1- (1/sqrt(days_left)))
```

```
## [1] 0.8556624
```

```r
(fund_model_weight <- 1/sqrt(days_left))
```

```
## [1] 0.1443376
```

```r
(ensemble.2.pred <- polls.pred * poll_model_weight + fund.pred * fund_model_weight)  
```

```
##            s1
## [1,] 51.71210
## [2,] 50.22182
```

```r
# Ensemble 3. Weight based on fundamentals mattering closer to November. (Gelman & King, 1993)
(poll_model_weight <- 1/sqrt(days_left))
```

```
## [1] 0.1443376
```

```r
(fund_model_weight <- 1-(1/sqrt(days_left)))
```

```
## [1] 0.8556624
```

```r
(ensemble.3.pred <- polls.pred * poll_model_weight + fund.pred * fund_model_weight)
```

```
##            s1
## [1,] 51.31497
## [2,] 48.06832
```

