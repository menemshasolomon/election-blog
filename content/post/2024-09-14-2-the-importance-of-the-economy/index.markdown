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

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-1-1.png" width="1632" />


From these plots it is somewhat difficult to discern whether or not a correlation exists between the three second quarter economic indicators plotted above — GDP growth, real disposable personal income, and unemployment — and the Incumbent Party's national popular vote share. Indeed, the blue bivariate regression line on each plot paints a better picture of the data, yet one which is still difficult to interpret without more information One thing that is easy to discern, however, is that for each indicator, the year **2020 is an obvious outlier in the data**. Due to the unique nature of the COVID-19 pandemic and the subsequent recession it caused, in the quarter preceding the 2020 election unemployment remained high while economic stimulus and back-to-work policies allowed for GDP growth and RDPI growth to bounce back rapidly [NPR News](https://www.npr.org/2020/07/09/889080504/the-economy-may-be-losing-its-impact-on-presidential-elections). Since this moment was so unique and its data so different than any other election year, *2020 will be excluded in further analysis and prediction*. 

The table below better outlines the bivariate regression relationship between the economic indicators plotted above and the national popular vote of the incumbent party (excluding 2020).


|Variable              | Coefficient|Significant.at.20. |Significant.at.5. |
|:---------------------|-----------:|:------------------|:-----------------|
|GDP Growth Quarterly  |   0.7365757|Yes                |Yes               |
|RDPI Growth Quarterly |   0.4604327|Yes                |No                |
|Unemployment          |   0.0220523|No                 |No                |

This table displays 
