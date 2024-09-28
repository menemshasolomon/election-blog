---
title: 4. The Incumbency Advantage
author: Mena Solomon
date: '2024-09-27'
slug: []
categories: []
tags: []
---

## What is the advantage of incumbency in presidential elections?

**There have been 18 presidential elections since World War II, eleven of which had at least one incumbent president running, seven of whom won re-election.** Indeed, while an incumbent president has won re-election in 33% of the elections post WWII, the incumbent party has won over 44% of such presidential elections. These results point out a reality within U.S. politics: that incumbency is a major advantage for both politicians and parties within the context of a general election for President. 

**How many incumbent presidents have been re-elected since WWII?**

|Was the incumbent president re-elected | Count| Percent|
|:--------------------------------------|-----:|-------:|
|FALSE                                  |    12|   66.67|
|TRUE                                   |     6|   33.33|

**How many incumbent parties have been re-elected since WWII?**

| Was the incumbent party re-elected   | Count| Percent|
|:-------------------------------------|-----:|-------:|
|FALSE                                 |    10|   55.56|
|TRUE                                  |     8|   44.44|

## Historically, why do incumbents have this advantage?

As seen above, incumbency presents a huge advantage for both presidents and their parties within presidential elections. Scholar Alfred Cuzán describes this effect as one of the five laws of politics — **the law of incumbent advantage**. Cuzán's second of the five laws, however, paints a more complicated picture of this effect. **The law of shrinking support** asserts that despite the incumbent advantage in the presidential election, all but one incumbent’s party has lost vote share in midterm house election since WWII.[(Cuzán, 2015)](https://www.cambridge.org/core/journals/ps-political-science-and-politics/article/abs/five-laws-of-politics/693D6F468706FB21FD043397D88FC0C3?utm_campaign=shareaholic&utm_medium=copy_link&utm_source=bookmark) This is often due to a phenomenon called mean reversion wherein parties who overperform and gain marginal seats in one election, will typically revert to the mean in the next election, returning to their historical average number of seats.

The law of incumbent advantage is, thus, specific to the office of the president. First and foremost, politicians are able to shape public opinion because of high esteem and recognition. Incumbents are able to begin their campaigns for re-election from the second that they arrive in the oval office, giving them a jumpstart on the race. Furthermore, according to Kriner and Reeves, Presidents can use the distribution of federal funds to garner electoral support.[(Kriner and Reeves, 2012)](https://hollis.harvard.edu/permalink/f/1mdq5o5/TN_cdi_proquest_journals_1018073231) One aspect of this spending, called pork barrel spending, targets certain politicians to help with their re-election campaigns.


<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-4-1.png" width="1536" />

**As seen above, federal grant spending in swing states is significantly higher than in non-swing states. Furthermore, this spending increases significantly in an election year.** Finally, this effect applies both to incumbents and their successors. To analyze the relationship between incumbent vote share and federal grant spending at the county level, a bivariate regression was run which resulted in an r-squared value of 0.4, meaning this model can explain 40% of the variance in incumbent vote share. *The model asserts that both grant spending and the competitiveness of states influence incumbent vote share, a finding which is statistically significant at the 0.001 level.* The model also indicates that the coefficients for years 1996, 2004, and 2008 are significantly larger than the base year, suggesting important temporal effects during these elections. When analyzing a separate bivariate regression model which uses grant data at the state level, these temporal effects persist in 1996 and 2004, indicating significant pork barrel spending by Bush and Clinton to support their re-election campaigns.

## Can incumbency build a predictive model?
While federal grant data for 2024 is not yet available, incumbency can be easily incorporated into predictive models by incorporating whether or not a candidate is an incumbent as well as the president's approval rating. One such model which incorporates both of these statistics, as well as quarter 2 GDP growth, was made by the political scientist Alan Abramowitz. **Abramowitz's Time for Change model had a true out-of-sample PV prediction error of 1.7% between 1992 and 2016.**


|Prediction Models                       | Predicted 2024 Democratic Voteshare| Lower Bound (95% PI)| Upper Bound (95% PI)|
|:---------------------------------------|-----------------------------------:|--------------------:|--------------------:|
|Time for Change Model (2016)            |                            48.92874|             43.09807|             54.75942|
|Simplified Time for Change Model (2020) |                            47.39554|             40.52536|             54.26573|

The table above uses both the 2016 model as well as the simplified 2020 model to predict the results of the 2024 election. The 2016 model includes incumbency advantage (as determined by incumbency status as well as June approval ratings) as well as GDP growth quarterly. [To better understand the inclusion of economic fundamentals, refer to blog post two.](https://menemshasolomon.github.io/election-blog/post/2024-09-14-2-the-importance-of-the-economy/) **This model estimates a 48.93% two-party popular vote share for Vice President Harris.** To make this prediction, a prediction interval of 95% was used, meaning that there is only a 5% chance the real election outcome does not fall within the upper and lower bounds noted above. The 2020 time for change model only utilizes june approval ratings as a predictor, **estimating a 47.4% two-party popular vote share for Vice President Harris.** 

**These two predictions differ significantly than those mode in previous weeks, primarily because they rely on Biden's incumbency status and approval ratings despite the reality that Biden is no longer the democratic candidate for president.** Indeed, in June (the month of the first presidential debate) Biden's approval rating was -22, which is certainly not the case for his younger successor Kamala Harris. The complicated narrative of this election makes it difficult to incorporate incumbency advantage into a prediction model.

## Using this model, can we predit the results of the 2024 presidential election?


```
## # A tibble: 5 × 2
##    year mean_match_rate
##   <dbl>           <dbl>
## 1  2004           0.647
## 2  2008           0.608
## 3  2012           0.765
## 4  2016           0.804
## 5  2020           0.824
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-6-1.png" width="672" /><img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-6-2.png" width="672" /><img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-6-3.png" width="672" /><img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-6-4.png" width="672" /><img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-6-5.png" width="672" />

```
## 
##  0  1 
##  9 42
```

```
## [1] "Florida"        "Georgia"        "Iowa"           "Minnesota"     
## [5] "New Hampshire"  "New Mexico"     "North Carolina" "Ohio"          
## [9] "Texas"
```

```
## # A tibble: 9 × 5
##   state          cook_rating region         sabato_rating rating_match
##   <chr>                <dbl> <chr>                  <dbl>        <dbl>
## 1 Florida                  4 florida                    5            0
## 2 Georgia                  4 georgia                    3            0
## 3 Iowa                     4 iowa                       5            0
## 4 Minnesota                3 minnesota                  2            0
## 5 New Hampshire            3 new hampshire              2            0
## 6 New Mexico               1 new mexico                 2            0
## 7 North Carolina           4 north carolina             3            0
## 8 Ohio                     4 ohio                       5            0
## 9 Texas                    4 texas                      5            0
```

```
##   cook_correct sabato_correct 
##      0.8823529      0.9803922
```

```
## [1] "Florida"        "Georgia"        "Iowa"           "North Carolina"
## [5] "Ohio"           "Texas"
```

```
## [1] "North Carolina"
```

```
## # A tibble: 7 × 1
##   state         
##   <chr>         
## 1 Arizona       
## 2 Georgia       
## 3 Michigan      
## 4 Nevada        
## 5 North Carolina
## 6 Pennsylvania  
## 7 Wisconsin
```

```
##   cook_correct sabato_correct 
##      0.8549020      0.9137255
```

```
## # A tibble: 5 × 3
##    year mean_cook_correct mean_sabato_correct
##   <dbl>             <dbl>               <dbl>
## 1  2004             0.824               0.961
## 2  2008             0.804               0.784
## 3  2012             0.863               0.961
## 4  2016             0.902               0.882
## 5  2020             0.882               0.980
```



