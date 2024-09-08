---
title: 1. Exploring Electoral Competitiveness
author: []
date: '2024-09-06'
slug: []
categories: []
tags: []
---


*How competitive are presidential elections in the United States?*

In order to predict the outcome of the 2024 presidential election, it is important to base the prediction model on an understanding of past elections at the national level. 

**Generally speaking, national elections have been competitive between the two major parties since the election of President Franklin Roosevelt in 1948.** In the succeeding 75+ years, neither party has been able to maintain a significant monopoly over the Presidency. 


```
## ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
## ✔ dplyr     1.1.3     ✔ readr     2.1.4
## ✔ forcats   1.0.0     ✔ stringr   1.5.0
## ✔ lubridate 1.9.2     ✔ tibble    3.2.1
## ✔ purrr     1.0.2     ✔ tidyr     1.3.0
## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()
## ✖ purrr::map()    masks maps::map()
## ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
## Rows: 38 Columns: 9
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: ","
## chr (2): party, candidate
## dbl (3): year, pv, pv2p
## lgl (4): winner, incumbent, incumbent_party, prev_admin
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-1-1.png" width="672" />
Within this time frame, the margin of victory has lessened significantly over the past 40 years. From the 1956 re-election of President Eisenhower to the 1984 re-election of President Reagan, the winning candidate received an average of 55.85% of the two-party popular voteshare. Indeed, 1964 and 1972 the winning candidate won with a margin of 22.69% and 23.58% respectively. Since 1988, however, the winning candidate has only recieved on average 52.23% of the two-party popular voteshare. This includes the 2000 election of Bush v. Gore wherin Bush not only won with a negative margin, but an incredibly narrow 0.52%.

To better understand the factors which contribute to the competitiveness of a presidential election, it is important to understand the narratives of both the landslide victories and narrow margins of the past 75+ years.

- *The 

##Which states vote blue/red and how consistently?

##Using electoral competitiveness, predict the outcome of the 2024 election 
