---
title: '6. On Air: The Addition of Campaign Advertising'
author: Mena Solomon
date: '2024-10-09'
slug: []
categories: []
tags: []
---

## What role does the campaign play in determining election outcomes?

Throughout the past five weeks, my blog has focused on exploring fundamentals like [the economy](https://menemshasolomon.github.io/election-blog/post/2024-09-14-2-the-importance-of-the-economy/), [polling](https://menemshasolomon.github.io/election-blog/post/2024-09-18-3-incorporating-polling/) [incumbency](https://menemshasolomon.github.io/election-blog/post/2024-09-27-4-the-incumbency-advantage/), and [demographics](https://menemshasolomon.github.io/election-blog/post/2024-10-02-5-demographics-turnout-and-vote-choice/). These discussions may generate a false understanding that elections are pre-determined, as they are predictable on a small set of fundamental variables. In reality, fundamentals only represent a partial understanding of the temperature of the American electorate. **To truly predict the outcome of presidential elections, it is also important to take into account the 6.6 billion dollar presidential campaign industry.** 

**Presidential campaigns have three main purposes — to convince donors, persuade voters, and mobilize the electorate. There are many mechanisms by which campaigns attempt to fulfill these purposes, the largest of which — the air war of mass media — will be explored below.**






##What is the air war? How does it influence voters?

**To reach the largest number of potential voters, campaigns often turn to mass media to present their message.** The meaning of mass media has changed throughout time; however, its largest sector for the past half century has been television advertising. Indeed, according to [EMarketer](https://www.emarketer.com/press-releases/2024-political-ad-spending-will-jump-nearly-30-vs-2020/), total US political ad spending will hit $12.32 billion in 2024. 

Political advertising has two main effects — persuasion and mobilization. There are two main pieces of literature which have found proof of the influence of campaign advertising. First, Gerber and his team used a randomized control trial in Rick Perry's Texas Gubernatorial race to understand the persuasive influence of certain advertisements. By randomizing which county saw what ad, that campaign was able to determine that televised campaign ads have sizable persuasive effects, especially on undecided voters, though those effects tend to fade over time [(Gerber et al, 2011).]() Huber and Arceneaux added to this existing literature with a study of spillover media markets from battleground states, with massive ad funding, into non-battleground states, which typically have almost no ad budget. The authors found that a large influx of advertising, as is often found in battleground states, led places that saw commercials to have their votes changed as compared to the places that did not see the swing-state volume of advertisements [(Huber and Arceneaux, 2019)]().

*To understand these effects in practice, is is important to first analyze some descriptive statistics on ads and campaign spending over time.*

**The first two graphics display the volume of campaign spending in the 2000, 2004, 2008, and 2012. These graphics highlight the disparities between election ad spending in swing states vs. non-competitive states.** Interestingly, the volume of advertising as well as the states deemed most competitive have changed throughout the years. Generally speaking, however, as elections haev become more competitive over the past 25 years, campaign ad spending has increased dramatically. 

**The third emphasizes the timing of this spending, emphasizing the importance of ad spending right before election day due to the lack of ad durability (voters are often unable to retain what they learned in an advertisement for a long period). Both of these graphics also point to an important reality — campaign spending is often evenly matched.** Many scholars assert that this equal game of tug-of-war is often why campaigns have a very small effect on outcomes. Indeed, if either party were to let go of the rope, voters may be influenced; however, while the even game continues, neither will make substantial gains.

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-3-1.png" width="1248" /><img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-3-2.png" width="1248" /><img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-3-3.png" width="1248" /><img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-3-4.png" width="1248" />


<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-4-1.png" width="1152" />


Despite this hypothesis, advertising is still an important way that campaigns convey their message to the general public. Furthermore, despite similarities in the volume of these advertisements, the content differences between parties are immense. The graphics below highlight differentials in terms of the policy and tone of both parties' advertisements.

The first two explore campaign aids by tone and purpose. For the most part, the proportions in each graph are similar, showing that trends in political advertising content are somewhat consistent. The one exception to this trend would be the purpose of advertisements in 2016. The main reason for this difference is that 2016 data was imputed, as it is not yet available in the correct format.

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-5-1.png" width="1536" />

Furthermore, the figure below emphasizes bipartisan shifts in tone depending on the election cycle. While the 2000 and 2008 campaigns focused on promotional content, 2004 and 2012 carried a lot of attack ads. One potential reason for this could be the role of incumbency, wherein Bush and Obama did not have to focus as heavily on promoting their views while Cheney and Romney were forced to attack the incumbent to make headway in the election.

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-6-1.png" width="672" />


The final figure displays campaign ads aired by issue and party in both 2000 and 2012. As discussed above, there are consistencies across party and year with regard to the tone and purpose of advertising; however, the policy discussed changes substantially depending on the election cycle. As discussed above, advertisements are done with the goal of persuading voters to select a certain candidate. Since fundamental factors cannot be controlled, ads are used to convince voters that a candidate will better serve the electorate on each of these contested factors. As seen by the graphs, in 2000 Democrats were focused on poverty and other social issues while Repulicans were focused on drugs and China. In 2012, however, Republicans were still focused on drugs and crime while democrats were now consumed with the war on Afghanistan. 

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-7-1.png" width="1536" />

## How can campaign spending be used to predict election outcomes?

To understand the impact of campaign spending on voters, a regression was run which attempted to ascertain this effect. Acknowledging the extreme differences between states in advertising, this relationship was measured at the state level. Furthermore, the values below represent a logistic transformation of this regression so as to normalize the variable which had been right skewed.



```
## 
## Call:
## lm(formula = D_pv ~ contribution_receipt_amount, data = d_campaign_spending)
## 
## Coefficients:
##                 (Intercept)  contribution_receipt_amount  
##                   4.526e+01                    1.683e-07
```

```
## 
## Call:
## lm(formula = D_pv2p ~ contribution_receipt_amount, data = d_campaign_spending)
## 
## Coefficients:
##                 (Intercept)  contribution_receipt_amount  
##                   4.681e+01                    1.749e-07
```

```
## 
## Call:
## lm(formula = D_pv ~ contribution_receipt_amount + factor(state), 
##     data = d_campaign_spending)
## 
## Coefficients:
##                 (Intercept)  contribution_receipt_amount  
##                   3.686e+01                    5.327e-08  
##         factor(state)Alaska         factor(state)Arizona  
##                   2.576e+00                    8.750e+00  
##       factor(state)Arkansas      factor(state)California  
##                  -9.433e-01                    1.730e+01  
##       factor(state)Colorado     factor(state)Connecticut  
##                   1.440e+01                    2.057e+01  
##       factor(state)Delaware         factor(state)Florida  
##                   2.117e+01                    1.063e+01  
##        factor(state)Georgia          factor(state)Hawaii  
##                   9.431e+00                    2.942e+01  
##          factor(state)Idaho        factor(state)Illinois  
##                  -4.617e+00                    1.968e+01  
##        factor(state)Indiana            factor(state)Iowa  
##                   6.020e+00                    1.105e+01  
##         factor(state)Kansas        factor(state)Kentucky  
##                   2.334e+00                   -7.378e-02  
##      factor(state)Louisiana           factor(state)Maine  
##                   2.689e+00                    1.597e+01  
##       factor(state)Maryland   factor(state)Massachusetts  
##                   2.422e+01                    2.282e+01  
##       factor(state)Michigan       factor(state)Minnesota  
##                   1.493e+01                    1.401e+01  
##    factor(state)Mississippi        factor(state)Missouri  
##                   5.078e+00                    6.110e+00  
##        factor(state)Montana        factor(state)Nebraska  
##                   4.429e+00                    1.191e+00  
##         factor(state)Nevada   factor(state)New Hampshire  
##                   1.430e+01                    1.436e+01  
##     factor(state)New Jersey      factor(state)New Mexico  
##                   1.918e+01                    1.593e+01  
##       factor(state)New York  factor(state)North Carolina  
##                   1.806e+01                    1.068e+01  
##   factor(state)North Dakota            factor(state)Ohio  
##                  -1.301e+00                    1.029e+01  
##       factor(state)Oklahoma          factor(state)Oregon  
##                  -4.809e+00                    1.696e+01  
##   factor(state)Pennsylvania    factor(state)Rhode Island  
##                   1.309e+01                    2.287e+01  
## factor(state)South Carolina    factor(state)South Dakota  
##                   6.209e+00                    1.100e+00  
##      factor(state)Tennessee           factor(state)Texas  
##                   1.094e+00                    5.065e+00  
##           factor(state)Utah         factor(state)Vermont  
##                  -5.934e+00                    2.678e+01  
##       factor(state)Virginia      factor(state)Washington  
##                   1.382e+01                    1.787e+01  
##  factor(state)West Virginia       factor(state)Wisconsin  
##                  -3.341e+00                    1.404e+01  
##        factor(state)Wyoming  
##                  -9.864e+00
```

```
## 
## Call:
## lm(formula = D_pv2p ~ contribution_receipt_amount + factor(state), 
##     data = d_campaign_spending)
## 
## Coefficients:
##                 (Intercept)  contribution_receipt_amount  
##                   3.758e+01                    2.460e-08  
##         factor(state)Alaska         factor(state)Arizona  
##                   4.377e+00                    9.548e+00  
##       factor(state)Arkansas      factor(state)California  
##                  -3.483e-01                    2.277e+01  
##       factor(state)Colorado     factor(state)Connecticut  
##                   1.627e+01                    2.145e+01  
##       factor(state)Delaware         factor(state)Florida  
##                   2.178e+01                    1.152e+01  
##        factor(state)Georgia          factor(state)Hawaii  
##                   9.852e+00                    3.164e+01  
##          factor(state)Idaho        factor(state)Illinois  
##                  -3.527e+00                    2.139e+01  
##        factor(state)Indiana            factor(state)Iowa  
##                   6.542e+00                    1.198e+01  
##         factor(state)Kansas        factor(state)Kentucky  
##                   3.028e+00                    1.783e-01  
##      factor(state)Louisiana           factor(state)Maine  
##                   2.885e+00                    1.808e+01  
##       factor(state)Maryland   factor(state)Massachusetts  
##                   2.613e+01                    2.578e+01  
##       factor(state)Michigan       factor(state)Minnesota  
##                   1.576e+01                    1.559e+01  
##    factor(state)Mississippi        factor(state)Missouri  
##                   4.912e+00                    6.636e+00  
##        factor(state)Montana        factor(state)Nebraska  
##                   5.454e+00                    1.865e+00  
##         factor(state)Nevada   factor(state)New Hampshire  
##                   1.540e+01                    1.524e+01  
##     factor(state)New Jersey      factor(state)New Mexico  
##                   1.997e+01                    1.805e+01  
##       factor(state)New York  factor(state)North Carolina  
##                   2.460e+01                    1.124e+01  
##   factor(state)North Dakota            factor(state)Ohio  
##                  -4.783e-01                    1.102e+01  
##       factor(state)Oklahoma          factor(state)Oregon  
##                  -4.819e+00                    1.944e+01  
##   factor(state)Pennsylvania    factor(state)Rhode Island  
##                   1.393e+01                    2.414e+01  
## factor(state)South Carolina    factor(state)South Dakota  
##                   6.514e+00                    1.673e+00  
##      factor(state)Tennessee           factor(state)Texas  
##                   1.412e+00                    6.227e+00  
##           factor(state)Utah         factor(state)Vermont  
##                  -3.206e+00                    3.000e+01  
##       factor(state)Virginia      factor(state)Washington  
##                   1.513e+01                    2.056e+01  
##  factor(state)West Virginia       factor(state)Wisconsin  
##                  -3.187e+00                    1.487e+01  
##        factor(state)Wyoming  
##                  -9.082e+00
```

```
## 
## Call:
## lm(formula = D_pv ~ log(contribution_receipt_amount), data = d_campaign_spending)
## 
## Coefficients:
##                      (Intercept)  log(contribution_receipt_amount)  
##                           -23.97                              4.61
```

```
## 
## Call:
## lm(formula = D_pv2p ~ log(contribution_receipt_amount), data = d_campaign_spending)
## 
## Coefficients:
##                      (Intercept)  log(contribution_receipt_amount)  
##                          -23.093                             4.659
```

```
## 
## Call:
## lm(formula = D_pv ~ log(contribution_receipt_amount) + factor(state), 
##     data = d_campaign_spending)
## 
## Coefficients:
##                      (Intercept)  log(contribution_receipt_amount)  
##                           0.8159                            2.4420  
##              factor(state)Alaska              factor(state)Arizona  
##                           4.2876                            6.4501  
##            factor(state)Arkansas           factor(state)California  
##                          -0.5393                           15.1284  
##            factor(state)Colorado          factor(state)Connecticut  
##                          11.0099                           17.4151  
##            factor(state)Delaware              factor(state)Florida  
##                          21.9221                            6.2710  
##             factor(state)Georgia               factor(state)Hawaii  
##                           6.4667                           29.4045  
##               factor(state)Idaho             factor(state)Illinois  
##                          -2.8521                           15.3483  
##             factor(state)Indiana                 factor(state)Iowa  
##                           4.7607                           10.7887  
##              factor(state)Kansas             factor(state)Kentucky  
##                           2.8087                           -0.3147  
##           factor(state)Louisiana                factor(state)Maine  
##                           2.5954                           15.7602  
##            factor(state)Maryland        factor(state)Massachusetts  
##                          20.0725                           18.4482  
##            factor(state)Michigan            factor(state)Minnesota  
##                          12.0270                           11.4768  
##         factor(state)Mississippi             factor(state)Missouri  
##                           7.4131                            4.3124  
##             factor(state)Montana             factor(state)Nebraska  
##                           6.0958                            2.8531  
##              factor(state)Nevada        factor(state)New Hampshire  
##                          13.6415                           13.9050  
##          factor(state)New Jersey           factor(state)New Mexico  
##                          15.3878                           14.3679  
##            factor(state)New York       factor(state)North Carolina  
##                          14.1120                            7.5762  
##        factor(state)North Dakota                 factor(state)Ohio  
##                           3.7015                            7.4367  
##            factor(state)Oklahoma               factor(state)Oregon  
##                          -4.8534                           14.2587  
##        factor(state)Pennsylvania         factor(state)Rhode Island  
##                           9.1872                           23.2334  
##      factor(state)South Carolina         factor(state)South Dakota  
##                           5.6123                            4.9169  
##           factor(state)Tennessee                factor(state)Texas  
##                          -0.5135                            0.6800  
##                factor(state)Utah              factor(state)Vermont  
##                          -5.7113                           26.6028  
##            factor(state)Virginia           factor(state)Washington  
##                           9.7776                           13.8421  
##       factor(state)West Virginia            factor(state)Wisconsin  
##                          -1.1641                           12.3482  
##             factor(state)Wyoming  
##                          -7.1046
```



Table: <span id="tab:unnamed-chunk-8"></span>Table 1: Estimate State-level Log Regression of Democratic Vote Share on Campaign Spending

|                                 |   Estimate| Standard Error|    z_value|Significance |
|:--------------------------------|----------:|--------------:|----------:|:------------|
|(Intercept)                      |  0.8159304|     12.0532633|  0.0676937|             |
|log(contribution_receipt_amount) |  2.4419990|      0.8042939|  3.0362022|**           |
|factor(state)Alaska              |  4.2876188|      2.5973042|  1.6507958|             |
|factor(state)Arizona             |  6.4500626|      2.6698137|  2.4159223|*            |
|factor(state)Arkansas            | -0.5392965|      2.5335056| -0.2128657|             |
|factor(state)California          | 15.1283965|      4.0185168|  3.7646717|***          |
|factor(state)Colorado            | 11.0098622|      2.8618523|  3.8471106|***          |
|factor(state)Connecticut         | 17.4150650|      2.8083447|  6.2011849|***          |
|factor(state)Delaware            | 21.9221164|      2.5422100|  8.6232515|***          |
|factor(state)Florida             |  6.2709580|      3.1905944|  1.9654513|.            |
|factor(state)Georgia             |  6.4667287|      2.7703310|  2.3342802|*            |
|factor(state)Hawaii              | 29.4044776|      2.5296529| 11.6239178|***          |
|factor(state)Idaho               | -2.8520596|      2.6009808| -1.0965323|             |
|factor(state)Illinois            | 15.3482805|      3.1831842|  4.8216752|***          |
|factor(state)Indiana             |  4.7606831|      2.5704372|  1.8520908|.            |
|factor(state)Iowa                | 10.7887340|      2.5313641|  4.2620238|***          |
|factor(state)Kansas              |  2.8086629|      2.5350170|  1.1079464|             |
|factor(state)Kentucky            | -0.3147136|      2.5310771| -0.1243398|             |
|factor(state)Louisiana           |  2.5953805|      2.5298601|  1.0258988|             |
|factor(state)Maine               | 15.7601823|      2.5306793|  6.2276490|***          |
|factor(state)Maryland            | 20.0725361|      3.0763912|  6.5247020|***          |
|factor(state)Massachusetts       | 18.4481783|      3.2127887|  5.7421076|***          |
|factor(state)Michigan            | 12.0270397|      2.7598379|  4.3578791|***          |
|factor(state)Minnesota           | 11.4767922|      2.7044863|  4.2436127|***          |
|factor(state)Mississippi         |  7.4131432|      2.6531495|  2.7940918|**           |
|factor(state)Missouri            |  4.3124044|      2.6128251|  1.6504757|             |
|factor(state)Montana             |  6.0957938|      2.5937352|  2.3501990|*            |
|factor(state)Nebraska            |  2.8530956|      2.5935430|  1.1000764|             |
|factor(state)Nevada              | 13.6415294|      2.5407647|  5.3690643|***          |
|factor(state)New Hampshire       | 13.9049686|      2.5349624|  5.4852760|***          |
|factor(state)New Jersey          | 15.3878179|      2.9666898|  5.1868646|***          |
|factor(state)New Mexico          | 14.3678855|      2.5934960|  5.5399683|***          |
|factor(state)New York            | 14.1120114|      3.7106795|  3.8030801|***          |
|factor(state)North Carolina      |  7.5761656|      2.7965955|  2.7090673|**           |
|factor(state)North Dakota        |  3.7015153|      3.0425729|  1.2165741|             |
|factor(state)Ohio                |  7.4366516|      2.7530734|  2.7012181|**           |
|factor(state)Oklahoma            | -4.8534329|      2.5296898| -1.9185881|.            |
|factor(state)Oregon              | 14.2586509|      2.7295060|  5.2238943|***          |
|factor(state)Pennsylvania        |  9.1872101|      3.0027442|  3.0596047|**           |
|factor(state)Rhode Island        | 23.2334372|      2.5327104|  9.1733492|***          |
|factor(state)South Carolina      |  5.6122752|      2.5386744|  2.2107109|*            |
|factor(state)South Dakota        |  4.9168674|      2.8422677|  1.7299100|.            |
|factor(state)Tennessee           | -0.5135034|      2.5962941| -0.1977832|             |
|factor(state)Texas               |  0.6800445|      3.2117091|  0.2117391|             |
|factor(state)Utah                | -5.7112519|      2.5307762| -2.2567194|*            |
|factor(state)Vermont             | 26.6027632|      2.5304299| 10.5131399|***          |
|factor(state)Virginia            |  9.7776241|      3.0415112|  3.2147257|**           |
|factor(state)Washington          | 13.8421205|      3.0608699|  4.5222833|***          |
|factor(state)West Virginia       | -1.1641218|      2.6375444| -0.4413658|             |
|factor(state)Wisconsin           | 12.3481502|      2.6034893|  4.7429233|***          |
|factor(state)Wyoming             | -7.1045965|      2.6995004| -2.6318190|**           |

```
## 
## Call:
## lm(formula = D_pv2p ~ log(contribution_receipt_amount) + factor(state), 
##     data = d_campaign_spending)
## 
## Coefficients:
##                      (Intercept)  log(contribution_receipt_amount)  
##                         21.48288                           1.09101  
##              factor(state)Alaska              factor(state)Arizona  
##                          5.14020                           8.52501  
##            factor(state)Arkansas           factor(state)California  
##                         -0.16807                          21.90979  
##            factor(state)Colorado          factor(state)Connecticut  
##                         14.76283                          20.05052  
##            factor(state)Delaware              factor(state)Florida  
##                         22.11824                           9.59767  
##             factor(state)Georgia               factor(state)Hawaii  
##                          8.53439                          31.63148  
##               factor(state)Idaho             factor(state)Illinois  
##                         -2.73951                          19.47483  
##             factor(state)Indiana                 factor(state)Iowa  
##                          5.98174                          11.86190  
##              factor(state)Kansas             factor(state)Kentucky  
##                          3.23932                           0.07087  
##           factor(state)Louisiana                factor(state)Maine  
##                          2.84318                          17.98910  
##            factor(state)Maryland        factor(state)Massachusetts  
##                         24.29554                          23.84887  
##            factor(state)Michigan            factor(state)Minnesota  
##                         14.46828                          14.46096  
##         factor(state)Mississippi             factor(state)Missouri  
##                          5.95377                           5.83582  
##             factor(state)Montana             factor(state)Nebraska  
##                          6.19785                           2.60674  
##              factor(state)Nevada        factor(state)New Hampshire  
##                         15.10382                          15.03743  
##          factor(state)New Jersey           factor(state)New Mexico  
##                         18.28879                          17.35467  
##            factor(state)New York       factor(state)North Carolina  
##                         22.89934                           9.86668  
##        factor(state)North Dakota                 factor(state)Ohio  
##                          1.75481                           9.75033  
##            factor(state)Oklahoma               factor(state)Oregon  
##                         -4.83824                          18.24442  
##        factor(state)Pennsylvania         factor(state)Rhode Island  
##                         12.19744                          24.29843  
##      factor(state)South Carolina         factor(state)South Dakota  
##                          6.24806                           3.37583  
##           factor(state)Tennessee                factor(state)Texas  
##                          0.69663                           4.29190  
##                factor(state)Utah              factor(state)Vermont  
##                         -3.10638                          29.92059  
##            factor(state)Virginia           factor(state)Washington  
##                         13.34024                          18.78371  
##       factor(state)West Virginia            factor(state)Wisconsin  
##                         -2.21587                          14.12055  
##             factor(state)Wyoming  
##                         -7.85053
```



Table: <span id="tab:unnamed-chunk-8"></span>Table 1: Estimate State-level Log Regression of Democratic Two-Party Vote Share on Campaign Spending

|                                 |   Estimate| Standard Error|    z_value|Significance |
|:--------------------------------|----------:|--------------:|----------:|:------------|
|(Intercept)                      | 21.4828841|     10.1575973|  2.1149573|*            |
|log(contribution_receipt_amount) |  1.0910076|      0.6777993|  1.6096321|             |
|factor(state)Alaska              |  5.1402035|      2.1888155|  2.3483950|*            |
|factor(state)Arizona             |  8.5250125|      2.2499212|  3.7890272|***          |
|factor(state)Arkansas            | -0.1680661|      2.1350508| -0.0787176|             |
|factor(state)California          | 21.9097911|      3.3865083|  6.4697291|***          |
|factor(state)Colorado            | 14.7628268|      2.4117571|  6.1211915|***          |
|factor(state)Connecticut         | 20.0505224|      2.3666649|  8.4720581|***          |
|factor(state)Delaware            | 22.1182379|      2.1423862| 10.3241132|***          |
|factor(state)Florida             |  9.5976683|      2.6887966|  3.5695033|***          |
|factor(state)Georgia             |  8.5343913|      2.3346297|  3.6555653|***          |
|factor(state)Hawaii              | 31.6314838|      2.1318041| 14.8378945|***          |
|factor(state)Idaho               | -2.7395123|      2.1919139| -1.2498266|             |
|factor(state)Illinois            | 19.4748350|      2.6825518|  7.2598169|***          |
|factor(state)Indiana             |  5.9817390|      2.1661740|  2.7614305|**           |
|factor(state)Iowa                | 11.8618955|      2.1332461|  5.5604909|***          |
|factor(state)Kansas              |  3.2393226|      2.1363245|  1.5163064|             |
|factor(state)Kentucky            |  0.0708733|      2.1330042|  0.0332270|             |
|factor(state)Louisiana           |  2.8431798|      2.1319787|  1.3335873|             |
|factor(state)Maine               | 17.9890973|      2.1326690|  8.4350161|***          |
|factor(state)Maryland            | 24.2955416|      2.5925546|  9.3712748|***          |
|factor(state)Massachusetts       | 23.8488694|      2.7075003|  8.8084458|***          |
|factor(state)Michigan            | 14.4682817|      2.3257869|  6.2208115|***          |
|factor(state)Minnesota           | 14.4609588|      2.2791406|  6.3449173|***          |
|factor(state)Mississippi         |  5.9537712|      2.2358778|  2.6628339|**           |
|factor(state)Missouri            |  5.8358218|      2.2018954|  2.6503628|**           |
|factor(state)Montana             |  6.1978509|      2.1858078|  2.8354967|**           |
|factor(state)Nebraska            |  2.6067425|      2.1856459|  1.1926646|             |
|factor(state)Nevada              | 15.1038182|      2.1411683|  7.0540080|***          |
|factor(state)New Hampshire       | 15.0374337|      2.1362785|  7.0390792|***          |
|factor(state)New Jersey          | 18.2887892|      2.5001063|  7.3152046|***          |
|factor(state)New Mexico          | 17.3546713|      2.1856063|  7.9404382|***          |
|factor(state)New York            | 22.8993402|      3.1270857|  7.3229013|***          |
|factor(state)North Carolina      |  9.8666775|      2.3567635|  4.1865369|***          |
|factor(state)North Dakota        |  1.7548073|      2.5640550|  0.6843875|             |
|factor(state)Ohio                |  9.7503291|      2.3200863|  4.2025717|***          |
|factor(state)Oklahoma            | -4.8382441|      2.1318352| -2.2695207|*            |
|factor(state)Oregon              | 18.2444226|      2.3002255|  7.9315802|***          |
|factor(state)Pennsylvania        | 12.1974354|      2.5304903|  4.8201865|***          |
|factor(state)Rhode Island        | 24.2984322|      2.1343807| 11.3843009|***          |
|factor(state)South Carolina      |  6.2480604|      2.1394067|  2.9204641|**           |
|factor(state)South Dakota        |  3.3758303|      2.3952526|  1.4093838|             |
|factor(state)Tennessee           |  0.6966264|      2.1879643|  0.3183902|             |
|factor(state)Texas               |  4.2919034|      2.7065905|  1.5857232|             |
|factor(state)Utah                | -3.1063815|      2.1327507| -1.4565141|             |
|factor(state)Vermont             | 29.9205862|      2.1324588| 14.0310265|***          |
|factor(state)Virginia            | 13.3402377|      2.5631603|  5.2046054|***          |
|factor(state)Washington          | 18.7837061|      2.5794743|  7.2819899|***          |
|factor(state)West Virginia       | -2.2158744|      2.2227270| -0.9969170|             |
|factor(state)Wisconsin           | 14.1205505|      2.1940279|  6.4359028|***          |
|factor(state)Wyoming             | -7.8505299|      2.2749389| -3.4508750|***          |


There are many interesting findings within these results:
- **As contribution amounts increase, the vote percentage difference increases more substantially.** This general effect can be seen across both models as well as the varios states within the fixed effect model.
- **Looking at two-party vote share versus raw vote percentage yields different results.**  The general coefficient on contribution receipt amount for the regression which analyzes two-party vote share is both larger than that of raw vote percentage as well as statistically significant. This result is surprising as scholars often assume increased spending to have a minimal effect on two-party vote share due to the tug-of-war effect discussed above, wherein both major parties have nearly equal funding. 
- **Looking more closely at the seven swing states in this upcoming election — Arizona, Nevada, Michigan, Wisconsin, North Carolina, Georgia, and Pennsylvania — we see the literature hold that large increases in campaign funding have only marginal effects on two party vote share.** For each of the aforementioned states, the coefficients in the second model were substantially lower than those of the first model, indicating that the large influx of spending during the election cycle is often balanced, thus it does not have a major effect on two-party vote share. The data does indicate, however, that the coefficients of each of these states is statistically significant at the 0.001 level. 

**While campaign spending cannot determine election outcomes, these results indicate that it is a significant part of the story when attempting to predict the outcome of the 2024 election.**

Take a prior belief about the prability of a certain outcome, combine it with data, then update final belief
- bayesian is flexible to many different probability distributions (OLD is biased towards only accepting normal distributions)
- random variable with probability distribution
- uncertainty takes the form of credible intervals, 95% that real value is within the constructed interval
- conditional probability of one even occurring conditional on other event is the probability of both events occurring / probability of the conditional occurring
- see slides for more information! 

frequentist statistics (what we have been using this far) assume that paramneters are fixed and unknown, they they rely on the central limit theory that using repeated sampling the estimators converge and are unbiased
- uncertainty takes the form of confidence internals i.e. 95% of intervals trap the true parameter value

linear regression can have a bayesian analogue IF we treat the model parameters as random variables with probability distributions.

```
## 
## Call:
## lm(formula = D_pv2p ~ latest_pollav_DEM + mean_pollav_DEM + D_pv2p_lag1 + 
##     D_pv2p_lag2, data = d.train)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -10.4485  -2.0088  -0.4128   1.7700   9.8659 
## 
## Coefficients:
##                   Estimate Std. Error t value Pr(>|t|)    
## (Intercept)        9.03700    1.84335   4.902 1.97e-06 ***
## latest_pollav_DEM  0.88022    0.08197  10.739  < 2e-16 ***
## mean_pollav_DEM   -0.27845    0.07428  -3.749 0.000233 ***
## D_pv2p_lag1        0.44393    0.04578   9.698  < 2e-16 ***
## D_pv2p_lag2       -0.17487    0.03974  -4.400 1.77e-05 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 3.383 on 197 degrees of freedom
## Multiple R-squared:  0.7767,	Adjusted R-squared:  0.7722 
## F-statistic: 171.3 on 4 and 197 DF,  p-value: < 2.2e-16
```

```
##             state year simp_pred_dem simp_pred_rep     winner stateab electors
## 1         Arizona 2024      52.46572      47.53428   Democrat      AZ       11
## 2      California 2024      63.98963      36.01037   Democrat      CA       54
## 3         Florida 2024      51.11625      48.88375   Democrat      FL       30
## 4         Georgia 2024      53.02358      46.97642   Democrat      GA       16
## 5        Maryland 2024      65.01586      34.98414   Democrat      MD       10
## 6        Michigan 2024      53.52353      46.47647   Democrat      MI       15
## 7       Minnesota 2024      55.22069      44.77931   Democrat      MN       10
## 8        Missouri 2024      45.74964      54.25036 Republican      MO       10
## 9         Montana 2024      44.15693      55.84307 Republican      MT        4
## 10         Nevada 2024      53.72355      46.27645   Democrat      NV        6
## 11  New Hampshire 2024      54.82356      45.17644   Democrat      NH        4
## 12     New Mexico 2024      54.27571      45.72429   Democrat      NM        5
## 13       New York 2024      59.47919      40.52081   Democrat      NY       28
## 14 North Carolina 2024      52.74411      47.25589   Democrat      NC       16
## 15           Ohio 2024      48.45776      51.54224 Republican      OH       17
## 16   Pennsylvania 2024      53.07083      46.92917   Democrat      PA       19
## 17          Texas 2024      50.34049      49.65951   Democrat      TX       40
## 18       Virginia 2024      55.23023      44.76977   Democrat      VA       13
## 19      Wisconsin 2024      53.35418      46.64582   Democrat      WI       10
```

```
##             state
## 1         Arizona
## 2      California
## 3         Florida
## 4         Georgia
## 5        Maryland
## 6        Michigan
## 7       Minnesota
## 8          Nevada
## 9   New Hampshire
## 10     New Mexico
## 11       New York
## 12 North Carolina
## 13   Pennsylvania
## 14          Texas
## 15       Virginia
## 16      Wisconsin
```

```
##      state
## 1 Missouri
## 2  Montana
## 3     Ohio
```

```
## # A tibble: 2 × 3
##   winner         n    ec
##   <chr>      <int> <dbl>
## 1 Democrat      16   287
## 2 Republican     3    31
```

```
## Running /Library/Frameworks/R.framework/Resources/bin/R CMD SHLIB foo.c
## using C compiler: ‘Apple clang version 15.0.0 (clang-1500.3.9.4)’
## using SDK: ‘MacOSX14.4.sdk’
## clang -arch arm64 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I"/Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library/Rcpp/include/"  -I"/Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library/RcppEigen/include/"  -I"/Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library/RcppEigen/include/unsupported"  -I"/Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library/BH/include" -I"/Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library/StanHeaders/include/src/"  -I"/Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library/StanHeaders/include/"  -I"/Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library/RcppParallel/include/"  -I"/Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library/rstan/include" -DEIGEN_NO_DEBUG  -DBOOST_DISABLE_ASSERTS  -DBOOST_PENDING_INTEGER_LOG2_HPP  -DSTAN_THREADS  -DUSE_STANC3 -DSTRICT_R_HEADERS  -DBOOST_PHOENIX_NO_VARIADIC_EXPRESSION  -D_HAS_AUTO_PTR_ETC=0  -include '/Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library/StanHeaders/include/stan/math/prim/fun/Eigen.hpp'  -D_REENTRANT -DRCPP_PARALLEL_USE_TBB=1   -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2  -c foo.c -o foo.o
## In file included from <built-in>:1:
## In file included from /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library/StanHeaders/include/stan/math/prim/fun/Eigen.hpp:22:
## In file included from /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library/RcppEigen/include/Eigen/Dense:1:
## In file included from /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library/RcppEigen/include/Eigen/Core:19:
## /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library/RcppEigen/include/Eigen/src/Core/util/Macros.h:679:10: fatal error: 'cmath' file not found
## #include <cmath>
##          ^~~~~~~
## 1 error generated.
## make: *** [foo.o] Error 1
```

```
## 
## SAMPLING FOR MODEL 'anon_model' NOW (CHAIN 1).
## Chain 1: 
## Chain 1: Gradient evaluation took 4.9e-05 seconds
## Chain 1: 1000 transitions using 10 leapfrog steps per transition would take 0.49 seconds.
## Chain 1: Adjust your expectations accordingly!
## Chain 1: 
## Chain 1: 
## Chain 1: Iteration:    1 / 4000 [  0%]  (Warmup)
## Chain 1: Iteration:  400 / 4000 [ 10%]  (Warmup)
## Chain 1: Iteration:  800 / 4000 [ 20%]  (Warmup)
## Chain 1: Iteration: 1001 / 4000 [ 25%]  (Sampling)
## Chain 1: Iteration: 1400 / 4000 [ 35%]  (Sampling)
## Chain 1: Iteration: 1800 / 4000 [ 45%]  (Sampling)
## Chain 1: Iteration: 2200 / 4000 [ 55%]  (Sampling)
## Chain 1: Iteration: 2600 / 4000 [ 65%]  (Sampling)
## Chain 1: Iteration: 3000 / 4000 [ 75%]  (Sampling)
## Chain 1: Iteration: 3400 / 4000 [ 85%]  (Sampling)
## Chain 1: Iteration: 3800 / 4000 [ 95%]  (Sampling)
## Chain 1: Iteration: 4000 / 4000 [100%]  (Sampling)
## Chain 1: 
## Chain 1:  Elapsed Time: 0.792 seconds (Warm-up)
## Chain 1:                2.426 seconds (Sampling)
## Chain 1:                3.218 seconds (Total)
## Chain 1: 
## 
## SAMPLING FOR MODEL 'anon_model' NOW (CHAIN 2).
## Chain 2: 
## Chain 2: Gradient evaluation took 1e-05 seconds
## Chain 2: 1000 transitions using 10 leapfrog steps per transition would take 0.1 seconds.
## Chain 2: Adjust your expectations accordingly!
## Chain 2: 
## Chain 2: 
## Chain 2: Iteration:    1 / 4000 [  0%]  (Warmup)
## Chain 2: Iteration:  400 / 4000 [ 10%]  (Warmup)
## Chain 2: Iteration:  800 / 4000 [ 20%]  (Warmup)
## Chain 2: Iteration: 1001 / 4000 [ 25%]  (Sampling)
## Chain 2: Iteration: 1400 / 4000 [ 35%]  (Sampling)
## Chain 2: Iteration: 1800 / 4000 [ 45%]  (Sampling)
## Chain 2: Iteration: 2200 / 4000 [ 55%]  (Sampling)
## Chain 2: Iteration: 2600 / 4000 [ 65%]  (Sampling)
## Chain 2: Iteration: 3000 / 4000 [ 75%]  (Sampling)
## Chain 2: Iteration: 3400 / 4000 [ 85%]  (Sampling)
## Chain 2: Iteration: 3800 / 4000 [ 95%]  (Sampling)
## Chain 2: Iteration: 4000 / 4000 [100%]  (Sampling)
## Chain 2: 
## Chain 2:  Elapsed Time: 0.808 seconds (Warm-up)
## Chain 2:                2.936 seconds (Sampling)
## Chain 2:                3.744 seconds (Total)
## Chain 2: 
## 
## SAMPLING FOR MODEL 'anon_model' NOW (CHAIN 3).
## Chain 3: 
## Chain 3: Gradient evaluation took 1e-05 seconds
## Chain 3: 1000 transitions using 10 leapfrog steps per transition would take 0.1 seconds.
## Chain 3: Adjust your expectations accordingly!
## Chain 3: 
## Chain 3: 
## Chain 3: Iteration:    1 / 4000 [  0%]  (Warmup)
## Chain 3: Iteration:  400 / 4000 [ 10%]  (Warmup)
## Chain 3: Iteration:  800 / 4000 [ 20%]  (Warmup)
## Chain 3: Iteration: 1001 / 4000 [ 25%]  (Sampling)
## Chain 3: Iteration: 1400 / 4000 [ 35%]  (Sampling)
## Chain 3: Iteration: 1800 / 4000 [ 45%]  (Sampling)
## Chain 3: Iteration: 2200 / 4000 [ 55%]  (Sampling)
## Chain 3: Iteration: 2600 / 4000 [ 65%]  (Sampling)
## Chain 3: Iteration: 3000 / 4000 [ 75%]  (Sampling)
## Chain 3: Iteration: 3400 / 4000 [ 85%]  (Sampling)
## Chain 3: Iteration: 3800 / 4000 [ 95%]  (Sampling)
## Chain 3: Iteration: 4000 / 4000 [100%]  (Sampling)
## Chain 3: 
## Chain 3:  Elapsed Time: 0.93 seconds (Warm-up)
## Chain 3:                2.543 seconds (Sampling)
## Chain 3:                3.473 seconds (Total)
## Chain 3: 
## 
## SAMPLING FOR MODEL 'anon_model' NOW (CHAIN 4).
## Chain 4: 
## Chain 4: Gradient evaluation took 1e-05 seconds
## Chain 4: 1000 transitions using 10 leapfrog steps per transition would take 0.1 seconds.
## Chain 4: Adjust your expectations accordingly!
## Chain 4: 
## Chain 4: 
## Chain 4: Iteration:    1 / 4000 [  0%]  (Warmup)
## Chain 4: Iteration:  400 / 4000 [ 10%]  (Warmup)
## Chain 4: Iteration:  800 / 4000 [ 20%]  (Warmup)
## Chain 4: Iteration: 1001 / 4000 [ 25%]  (Sampling)
## Chain 4: Iteration: 1400 / 4000 [ 35%]  (Sampling)
## Chain 4: Iteration: 1800 / 4000 [ 45%]  (Sampling)
## Chain 4: Iteration: 2200 / 4000 [ 55%]  (Sampling)
## Chain 4: Iteration: 2600 / 4000 [ 65%]  (Sampling)
## Chain 4: Iteration: 3000 / 4000 [ 75%]  (Sampling)
## Chain 4: Iteration: 3400 / 4000 [ 85%]  (Sampling)
## Chain 4: Iteration: 3800 / 4000 [ 95%]  (Sampling)
## Chain 4: Iteration: 4000 / 4000 [100%]  (Sampling)
## Chain 4: 
## Chain 4:  Elapsed Time: 0.954 seconds (Warm-up)
## Chain 4:                2.673 seconds (Sampling)
## Chain 4:                3.627 seconds (Total)
## Chain 4:
```

```
##       (Intercept) latest_pollav_DEM   mean_pollav_DEM       D_pv2p_lag1 
##         9.0369974         0.8802244        -0.2784522         0.4439321 
##       D_pv2p_lag2 
##        -0.1748684
```

```
##                        2.5 %      97.5 %
## (Intercept)        5.4017628 12.67223205
## latest_pollav_DEM  0.7185804  1.04186839
## mean_pollav_DEM   -0.4249335 -0.13197084
## D_pv2p_lag1        0.3536576  0.53420663
## D_pv2p_lag2       -0.2532440 -0.09649291
```

```
## Inference for Stan model: anon_model.
## 4 chains, each with iter=4000; warmup=1000; thin=1; 
## post-warmup draws per chain=3000, total post-warmup draws=12000.
## 
##        mean se_mean   sd  2.5%   25%   50%   75% 97.5% n_eff Rhat
## alpha  9.02    0.02 1.86  5.43  7.78  9.00 10.26 12.74  8316    1
## beta1  0.88    0.00 0.08  0.72  0.83  0.88  0.94  1.04  5758    1
## beta2 -0.28    0.00 0.07 -0.42 -0.33 -0.28 -0.23 -0.13  6044    1
## beta3  0.44    0.00 0.05  0.36  0.41  0.44  0.48  0.53  7890    1
## beta4 -0.17    0.00 0.04 -0.25 -0.20 -0.18 -0.15 -0.10  8187    1
## sigma  3.41    0.00 0.18  3.08  3.28  3.40  3.52  3.77  7748    1
## 
## Samples were drawn using NUTS(diag_e) at Mon Oct 14 11:08:49 2024.
## For each parameter, n_eff is a crude measure of effective sample size,
## and Rhat is the potential scale reduction factor on split chains (at 
## convergence, Rhat=1).
```

