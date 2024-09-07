---
title: "Lab1_notes"
output: pdf_document
date: "2024-09-04"
---



## Sample code


```r
# Load libraries.
## install via `install.packages("name")`
library(ggplot2)
library(maps)
library(tidyverse)
```

```
## -- Attaching core tidyverse packages ------------------------ tidyverse 2.0.0 --
## v dplyr     1.1.3     v readr     2.1.4
## v forcats   1.0.0     v stringr   1.5.0
## v lubridate 1.9.2     v tibble    3.2.1
## v purrr     1.0.2     v tidyr     1.3.0
## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
## x dplyr::filter() masks stats::filter()
## x dplyr::lag()    masks stats::lag()
## x purrr::map()    masks maps::map()
## i Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
```

```r
# Read presidential popular vote. 
d_popvote <- read_csv("popvote_1948-2020.csv")
```

```
## Rows: 38 Columns: 9
## -- Column specification --------------------------------------------------------
## Delimiter: ","
## chr (2): party, candidate
## dbl (3): year, pv, pv2p
## lgl (4): winner, incumbent, incumbent_party, prev_admin
## 
## i Use `spec()` to retrieve the full column specification for this data.
## i Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

```r
# Subset data to most recent past election year. 
d_popvote |> 
  filter(year == 2020) |> 
  select(party, candidate, pv2p)
```

```
## # A tibble: 2 x 3
##   party      candidate         pv2p
##   <chr>      <chr>            <dbl>
## 1 democrat   Biden, Joseph R.  52.3
## 2 republican Trump, Donald J.  47.7
```

```r
# Pivot data to wide format with party names as columns and two-party vote share as values.
(d_popvote_wide <- d_popvote |>
    select(year, party, pv2p) |>
    pivot_wider(names_from = party, values_from = pv2p))
```

```
## # A tibble: 19 x 3
##     year democrat republican
##    <dbl>    <dbl>      <dbl>
##  1  1948     52.3       47.7
##  2  1952     44.7       55.3
##  3  1956     42.2       57.8
##  4  1960     50.1       49.9
##  5  1964     61.3       38.7
##  6  1968     49.6       50.4
##  7  1972     38.2       61.8
##  8  1976     51.1       48.9
##  9  1980     44.8       55.2
## 10  1984     40.9       59.1
## 11  1988     46.2       53.8
## 12  1992     53.6       46.4
## 13  1996     54.8       45.2
## 14  2000     50.3       49.7
## 15  2004     48.7       51.3
## 16  2008     53.8       46.2
## 17  2012     51.9       48.1
## 18  2016     51.2       48.8
## 19  2020     52.3       47.7
```

```r
# Modify winner column to show "D" if Democrats win and "R" if Republicans win. 
(d_popvote_wide <- d_popvote_wide |> 
    mutate(winner = case_when(democrat > republican ~ "D",
                              TRUE ~ "R")))
```

```
## # A tibble: 19 x 4
##     year democrat republican winner
##    <dbl>    <dbl>      <dbl> <chr> 
##  1  1948     52.3       47.7 D     
##  2  1952     44.7       55.3 R     
##  3  1956     42.2       57.8 R     
##  4  1960     50.1       49.9 D     
##  5  1964     61.3       38.7 D     
##  6  1968     49.6       50.4 R     
##  7  1972     38.2       61.8 R     
##  8  1976     51.1       48.9 D     
##  9  1980     44.8       55.2 R     
## 10  1984     40.9       59.1 R     
## 11  1988     46.2       53.8 R     
## 12  1992     53.6       46.4 D     
## 13  1996     54.8       45.2 D     
## 14  2000     50.3       49.7 D     
## 15  2004     48.7       51.3 R     
## 16  2008     53.8       46.2 D     
## 17  2012     51.9       48.1 D     
## 18  2016     51.2       48.8 D     
## 19  2020     52.3       47.7 D
```

```r
# Summarize data with respect to winners. 
d_popvote_wide |> 
  group_by(winner) |>
  summarise(races = n())
```

```
## # A tibble: 2 x 2
##   winner races
##   <chr>  <int>
## 1 D         11
## 2 R          8
```

```r
####----------------------------------------------------------#
#### Visualize trends in national presidential popular vote. 
####----------------------------------------------------------#

# Visualize the two-party presidential popular over time. 
d_popvote_plot <- ggplot(data = d_popvote,
                         mapping = aes(x = year, y = pv2p, color = party)) + 
  geom_line() +
  scale_color_manual(values = c("dodgerblue", "firebrick")) +
  theme_bw() +
  labs(x = "Year",
       y = "Percent of Two-Party Voteshare",
       title = "Two-Party Presidential Popular Voteshare Over Time")

d_popvote_plot
```

![](Lab1-notes_files/figure-latex/unnamed-chunk-1-1.pdf)<!-- --> 

```r
####----------------------------------------------------------#
#### State-by-state map of presidential popular votes.
####----------------------------------------------------------#

# Sequester shapefile of states from `maps` library.
states_map <- map_data("state")

# Read wide version of dataset that can be used to compare candidate votes with one another. 
d_pvstate_wide <- read_csv("clean_wide_state_2pv_1948_2020.csv")
```

```
## Rows: 959 Columns: 14
## -- Column specification --------------------------------------------------------
## Delimiter: ","
## chr  (1): state
## dbl (13): year, D_pv, R_pv, D_pv2p, R_pv2p, D_pv_lag1, R_pv_lag1, D_pv2p_lag...
## 
## i Use `spec()` to retrieve the full column specification for this data.
## i Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

```r
# Merge d_pvstate_wide with state_map.
d_pvstate_wide$region <- tolower(d_pvstate_wide$state)

pv_map <- d_pvstate_wide |>
  filter(year == 2020) |>
  left_join(states_map, by = "region")
```

```r
# Make map grid of state winners for each election year available in the dataset.
pv_map <- d_pvstate_wide |>
  filter(year == 2020) |>
  left_join(states_map, by = "region")

pv_win_map <- pv_map |>
  mutate(winner = if_else(R_pv2p > D_pv2p, "republican", "democrat"))

pv_win_map |>
  ggplot(aes(long, lat, group = group)) +
  geom_polygon(aes(fill = winner)) +
  scale_fill_manual(values = c("dodgerblue", "firebrick")) +
  theme_void()
```

![](Lab1-notes_files/figure-latex/unnamed-chunk-2-1.pdf)<!-- --> 

```r
d_pvstate_wide |>
  filter(year >= 1980) |>
  left_join(states_map, by = "region") |>
  mutate(winner = if_else(R_pv2p > D_pv2p, "republican", "democrat")) |>
  ggplot(aes(long, lat, group = group)) +
  facet_wrap(facets = year ~.) +
  geom_polygon(aes(fill = winner), color = "white") +
  scale_fill_manual(values = c("dodgerblue", "firebrick")) +
  theme_void() +
    ggtitle("Presidential Vote Share (1980 - 2020)")
```

```
## Warning in left_join(filter(d_pvstate_wide, year >= 1980), states_map, by = "region"): Detected an unexpected many-to-many relationship between `x` and `y`.
## i Row 1 of `x` matches multiple rows in `y`.
## i Row 1 of `y` matches multiple rows in `x`.
## i If a many-to-many relationship is expected, set `relationship =
##   "many-to-many"` to silence this warning.
```

![](Lab1-notes_files/figure-latex/unnamed-chunk-2-2.pdf)<!-- --> 

####----------------------------------------------------------#
#### Forecast: simplified electoral cycle model. 
####----------------------------------------------------------#

# Create prediction (pv2p and margin) based on simplified electoral cycle model: 
# vote_2024 = 3/4*vote_2020 + 1/4*vote_2016 (lag1, lag2, respectively). 


```r
# Plot the margin of victory in a U.S. state map.

pv2p_2024_states <- d_pvstate_wide |>
  filter(year == 2020) |>
  group_by(state) |>
  summarize(R_pv2p_2024 = 0.75*R_pv2p + 0.25*R_pv2p_lag1,
            D_pv2p_2024 = 0.75*D_pv2p + 0.25*D_pv2p_lag1) |>
  mutate(pv2p_2024_margin = R_pv2p_2024 - D_pv2p_2024,
         winner = ifelse(R_pv2p_2024 > D_pv2p_2024, "R", "D"),
         region = tolower(state))

pv2p_2024_states |>
  left_join(states_map, by = "region") |>
  ggplot(aes(long, lat, group = group)) +
  geom_polygon(aes(fill = pv2p_2024_margin), color = "black") +
  scale_fill_gradient2(high = "firebrick",
                      low = "dodgerblue",
                      mid = "white",
                      name = "win margin",
                      breaks = c(-50, -25, 0, 25, 50),
                      limits = c(-50, 50)) +
  theme_void()
```

![](Lab1-notes_files/figure-latex/unnamed-chunk-3-1.pdf)<!-- --> 

```r
ec <-  read_csv("ec_full.csv")
```

```
## Rows: 936 Columns: 3
## -- Column specification --------------------------------------------------------
## Delimiter: ","
## chr (1): state
## dbl (2): electors, year
## 
## i Use `spec()` to retrieve the full column specification for this data.
## i Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

```r
pv2p_2024_states <- pv2p_2024_states |>
  mutate()

# Generate projected state winners and merge with electoral college votes to make summary of electoral college vote distributions. 


## Harris: 
## Trump: 
```
