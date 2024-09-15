---
title: 2. The Importance of the Economy
author: Package Build
date: '2024-09-14'
slug: []
categories: []
tags: []
---
## How does the economy relate to election outcomes?

Many scholars argue that most presidential elections are determined by political and economic conditions called fundamentals, which exist outside of campaign efforts by either party. Factors like *economic growth*, *disposable income*, *inflation*, and the *cost of living*, which are often economic circumstances of the previous administration, are found to be highly correlated with election outcomes. This phenomenon is known as **retrospective economic voting**, wherein a voter makes choices based on the incumbent's past performance, with a specific focus on the economy [(Achen and Bartels, 2017)](https://hollis.harvard.edu/permalink/f/1s5nto6/01HVD_ALMA512397392810003941).

To evaluate this correlation it is important to look at the relationship between different economic indicators and two-party vote. In doing so, I will be focusing on **economic data from quarter 2**, the financial reporting quarter right before the election. This echoes the assumption embedded within retrospective voting that a vast majority of American voters only begin paying attention to the election in the months leading up to November, *rewarding or punishing incumbent candidates and/or parties based on recent economic conditions* [(Achen and Bartels, 2017)](https://hollis.harvard.edu/permalink/f/1s5nto6/01HVD_ALMA512397392810003941). 

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-1-1.png" width="1152" />


From these plots it is somewhat difficult to discern whether or not a correlation exists between the three second quarter economic indicators plotted above — GDP growth and real disposable personal income — and the Incumbent Party's national popular vote share. Indeed, the blue bivariate regression line on each plot paints a better picture of the data, yet one which is still difficult to interpret without more information One thing that is easy to discern, however, is that for both indicators, the year **2020 is an obvious outlier in the data**. Due to the unique nature of the COVID-19 pandemic and the subsequent recession it caused, in the quarter preceding the 2020 election, unemployment remained high while economic stimulus and back-to-work policies allowed for GDP growth and RDPI growth to bounce back rapidly [(NPR News)](https://www.npr.org/2020/07/09/889080504/the-economy-may-be-losing-its-impact-on-presidential-elections). Since this moment was so unique and its data so different than any other election year, *2020 will be excluded in further analysis and prediction*. 

The table below better outlines the bivariate regression relationship between the economic indicators plotted above and the national popular vote of the incumbent party (excluding 2020).


|Variable (Measured in Q2) | Coefficient| R-squared|Significant at 20% |Significant at 5% |
|:-------------------------|-----------:|---------:|:------------------|:-----------------|
|GDP Growth                |   0.7365757| 0.3248066|Yes                |Yes               |
|RDPI Growth               |   0.4604327| 0.1114869|Yes                |No                |

In analyzing the differences between these three relationships, it is first important to understand the statistical significance. The only variable significant at the 5% level is GDP growth, indicating that GDP growth is a significant predictor of election outcomes. The growth in real disposable personal income is also a significant predictor, but only at the 20% level, leaving a high likelihood of type-1 error. Furthermore, based on the R^2 values, while *GDP growth in Q2 can explain around 32% of the trend in incumbent party voteshare*, RDPI growth can only explain 11%. Finally, the coefficients of both variables, which indicate the effect of a one percent increase in growth on incumbent voteshare, show that **while GDP growth of 1% increases incumbent voteshare by 0.74 percentage points, RDPI growth only has a 0.46 percentage point effect.**  

## How can economic data be used to build a prediction model?

Based on the information above, I will use the **GDP and RDPI growth data to build a predictive model.** 


|Variable    | Predicted Value| Lower Bound (80% PI)| Upper Bound (80% PI)|
|:-----------|---------------:|--------------------:|--------------------:|
|GDP Growth  |        51.58486|             45.45250|             57.71722|
|RDPI Growth |        50.32576|             43.11837|             57.53316|


The predictive model above displays that 

##How should this model be evaluated for accuracy?
