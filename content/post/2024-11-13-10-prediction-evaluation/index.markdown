---
title: 10. Prediction Evaluation
author: Mena Solomon
date: '2024-11-13'
slug: []
categories: []
tags: []
---
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />









## Post-election Reflection

It has now been almost two weeks since Donald Trump won the 2024 election, thus the time has come to evaluate my prediction model and attempt to understand where I fell short. To begin, here is another look at my prediction:

**My 2024 Prediction Model**

My prediction model utilized an elastic-net regularized regression of four key predictor variables: the interaction effect between Q2 GDP growth and incumbency, the latest FiveThirtyEight weighted poll averages, two-party voteshare lagged one cycle, and two-party vote share lagged two cycles. In choosing these variables I hoped to build a relatively simple model which could apply to an election as unusual as this once. For a full explanation of each variable as well as my justification for its inclusion, refer to my week nine blog post [linked here](https://menemshasolomon.github.io/election-blog/post/2024-11-01-9-final-prediction-assignment/). 

I utilized an elastic-net regularized regression to control for multicollinearity and overfitting while maintaining my model's simplicity, transparency, and generalizability. Once again, my [week nine](https://menemshasolomon.github.io/election-blog/post/2024-11-01-9-final-prediction-assignment/) blog post provides a more in-depth explaination for my choice of model. 

Finally, since my two-party vote share summed to over 100%, I normalized my predictions for both Democratic and Republican two-party vote share against each other. *My results are summarized below:*

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> State </th>
   <th style="text-align:right;"> Democratic Prediction </th>
   <th style="text-align:right;"> Republican Prediction </th>
   <th style="text-align:left;"> Winner </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Arizona </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.01264 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.98736 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> California </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 63.23344 </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 36.76656 </td>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Harris </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Colorado </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 55.64653 </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 44.35347 </td>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Harris </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Florida </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 47.18219 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 52.81781 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Georgia </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.32191 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.67809 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Indiana </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 41.54380 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 58.45620 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Maryland </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 64.87031 </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 35.12969 </td>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Harris </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Massachusetts </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 64.61116 </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 35.38884 </td>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Harris </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Michigan </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 50.52614 </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 49.47386 </td>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Harris </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Minnesota </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 52.82845 </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 47.17155 </td>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Harris </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Missouri </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 42.63210 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 57.36790 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Montana </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 40.92078 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 59.07922 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Nebraska </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 40.98905 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 59.01095 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Nevada </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 50.10748 </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 49.89252 </td>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Harris </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> New Hampshire </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 52.52822 </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 47.47178 </td>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Harris </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> New Mexico </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 53.92110 </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 46.07890 </td>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Harris </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> New York </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 59.57050 </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 40.42950 </td>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Harris </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> North Carolina </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.18136 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.81864 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Ohio </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 45.70131 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 54.29869 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Pennsylvania </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.96810 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.03190 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> South Carolina </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 43.84510 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 56.15490 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Texas </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 46.29662 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 53.70338 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Utah </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 38.53670 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 61.46330 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Virginia </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 53.59095 </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 46.40905 </td>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Harris </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Washington </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 59.57236 </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 40.42764 </td>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Harris </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Wisconsin </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 50.20683 </td>
   <td style="text-align:right;background-color: rgba(173, 216, 230, 255) !important;"> 49.79317 </td>
   <td style="text-align:left;background-color: rgba(173, 216, 230, 255) !important;"> Harris </td>
  </tr>
</tbody>
</table>

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-4-1.png" width="672" /><img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-4-2.png" width="672" />

My model predicted that Harris would win Michigan, Nevada, and Wisconsin on a slim margin, while Trump would have won Arizona, Pennsylvania, Georgia, and North Carolina on similarly slim margin. *This would have resulted in a Trump victory with 281 electors while Harris had 257 electors.*

**The 2024 Election Results**

Early Wednesday morning the 2024 election was called for Former President Donald Trump after he managed to clinch Georgia, North Carolina, and Pennsylvania. In the hours that followed, the rest of the swing states — Michigan, Wisconsin, Arizona, and Nevada — were called for Donald Trump as well. **This means that Trump won the election with 312 electoral votes compared to Vice President Harris' 226 electoral votes.**


```
## 
  |                                                                            
  |                                                                      |   0%
  |                                                                            
  |                                                                      |   1%
  |                                                                            
  |=                                                                     |   1%
  |                                                                            
  |=                                                                     |   2%
  |                                                                            
  |==                                                                    |   3%
  |                                                                            
  |==                                                                    |   4%
  |                                                                            
  |===                                                                   |   5%
  |                                                                            
  |====                                                                  |   6%
  |                                                                            
  |=====                                                                 |   8%
  |                                                                            
  |======                                                                |   8%
  |                                                                            
  |=======                                                               |  10%
  |                                                                            
  |========                                                              |  11%
  |                                                                            
  |========                                                              |  12%
  |                                                                            
  |==========                                                            |  15%
  |                                                                            
  |=============                                                         |  19%
  |                                                                            
  |==============                                                        |  21%
  |                                                                            
  |================                                                      |  23%
  |                                                                            
  |==================                                                    |  25%
  |                                                                            
  |====================                                                  |  28%
  |                                                                            
  |======================                                                |  31%
  |                                                                            
  |=======================                                               |  33%
  |                                                                            
  |=============================                                         |  42%
  |                                                                            
  |===============================                                       |  44%
  |                                                                            
  |================================                                      |  45%
  |                                                                            
  |================================                                      |  46%
  |                                                                            
  |=================================                                     |  48%
  |                                                                            
  |==================================                                    |  49%
  |                                                                            
  |===================================                                   |  51%
  |                                                                            
  |=====================================                                 |  52%
  |                                                                            
  |=======================================                               |  55%
  |                                                                            
  |=======================================                               |  56%
  |                                                                            
  |========================================                              |  57%
  |                                                                            
  |=========================================                             |  59%
  |                                                                            
  |==========================================                            |  60%
  |                                                                            
  |============================================                          |  62%
  |                                                                            
  |============================================                          |  63%
  |                                                                            
  |==============================================                        |  65%
  |                                                                            
  |==============================================                        |  66%
  |                                                                            
  |===============================================                       |  67%
  |                                                                            
  |================================================                      |  68%
  |                                                                            
  |=================================================                     |  70%
  |                                                                            
  |==================================================                    |  71%
  |                                                                            
  |===================================================                   |  72%
  |                                                                            
  |=====================================================                 |  75%
  |                                                                            
  |=====================================================                 |  76%
  |                                                                            
  |======================================================                |  77%
  |                                                                            
  |=======================================================               |  78%
  |                                                                            
  |========================================================              |  80%
  |                                                                            
  |=========================================================             |  81%
  |                                                                            
  |==========================================================            |  83%
  |                                                                            
  |===========================================================           |  85%
  |                                                                            
  |============================================================          |  86%
  |                                                                            
  |==============================================================        |  88%
  |                                                                            
  |================================================================      |  91%
  |                                                                            
  |=================================================================     |  92%
  |                                                                            
  |==================================================================    |  94%
  |                                                                            
  |==================================================================    |  95%
  |                                                                            
  |===================================================================   |  96%
  |                                                                            
  |===================================================================== |  98%
  |                                                                            
  |======================================================================|  99%
  |                                                                            
  |======================================================================| 100%
```

```
## 
  |                                                                            
  |                                                                      |   0%
  |                                                                            
  |                                                                      |   1%
  |                                                                            
  |==                                                                    |   2%
  |                                                                            
  |===                                                                   |   4%
  |                                                                            
  |===                                                                   |   5%
  |                                                                            
  |====                                                                  |   6%
  |                                                                            
  |=====                                                                 |   7%
  |                                                                            
  |=====                                                                 |   8%
  |                                                                            
  |=======                                                               |  10%
  |                                                                            
  |========                                                              |  11%
  |                                                                            
  |=========                                                             |  13%
  |                                                                            
  |==========                                                            |  15%
  |                                                                            
  |============                                                          |  17%
  |                                                                            
  |=============                                                         |  19%
  |                                                                            
  |==============                                                        |  20%
  |                                                                            
  |===============                                                       |  22%
  |                                                                            
  |================                                                      |  22%
  |                                                                            
  |=================                                                     |  25%
  |                                                                            
  |==================                                                    |  25%
  |                                                                            
  |===================                                                   |  27%
  |                                                                            
  |=====================                                                 |  30%
  |                                                                            
  |=====================                                                 |  31%
  |                                                                            
  |=======================                                               |  32%
  |                                                                            
  |========================                                              |  34%
  |                                                                            
  |=========================                                             |  36%
  |                                                                            
  |===========================                                           |  39%
  |                                                                            
  |============================                                          |  40%
  |                                                                            
  |=============================                                         |  41%
  |                                                                            
  |==============================                                        |  43%
  |                                                                            
  |===============================                                       |  44%
  |                                                                            
  |================================                                      |  46%
  |                                                                            
  |==================================                                    |  48%
  |                                                                            
  |==================================                                    |  49%
  |                                                                            
  |===================================                                   |  50%
  |                                                                            
  |====================================                                  |  52%
  |                                                                            
  |=====================================                                 |  53%
  |                                                                            
  |=======================================                               |  55%
  |                                                                            
  |=======================================                               |  56%
  |                                                                            
  |=========================================                             |  58%
  |                                                                            
  |==========================================                            |  60%
  |                                                                            
  |==========================================                            |  61%
  |                                                                            
  |============================================                          |  62%
  |                                                                            
  |=============================================                         |  64%
  |                                                                            
  |=============================================                         |  65%
  |                                                                            
  |==============================================                        |  66%
  |                                                                            
  |===============================================                       |  67%
  |                                                                            
  |================================================                      |  68%
  |                                                                            
  |================================================                      |  69%
  |                                                                            
  |=================================================                     |  70%
  |                                                                            
  |==================================================                    |  71%
  |                                                                            
  |===================================================                   |  73%
  |                                                                            
  |====================================================                  |  74%
  |                                                                            
  |=====================================================                 |  76%
  |                                                                            
  |======================================================                |  77%
  |                                                                            
  |=======================================================               |  78%
  |                                                                            
  |=======================================================               |  79%
  |                                                                            
  |========================================================              |  80%
  |                                                                            
  |=========================================================             |  82%
  |                                                                            
  |==========================================================            |  83%
  |                                                                            
  |==========================================================            |  84%
  |                                                                            
  |===========================================================           |  85%
  |                                                                            
  |============================================================          |  85%
  |                                                                            
  |============================================================          |  86%
  |                                                                            
  |=============================================================         |  87%
  |                                                                            
  |==============================================================        |  88%
  |                                                                            
  |==============================================================        |  89%
  |                                                                            
  |===============================================================       |  90%
  |                                                                            
  |===============================================================       |  91%
  |                                                                            
  |================================================================      |  92%
  |                                                                            
  |=================================================================     |  93%
  |                                                                            
  |==================================================================    |  95%
  |                                                                            
  |===================================================================   |  96%
  |                                                                            
  |====================================================================  |  97%
  |                                                                            
  |===================================================================== |  99%
  |                                                                            
  |======================================================================| 100%
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-5-1.png" width="672" />

The overwhelming shift toward Donald Trump and the Republican party was seen across the United States, as is outlined in the map included below:

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-6-1.png" width="672" />

**Comparing My Predictions with the Actual Results**

I predicted that Trump would narrowly beat Harris with 281 electoral votes by winning Georgia, North Carolina, and Pennsylvania by incredibly slim margins. Instead, Trump managed to win every one of the seven swing states. The table below compares my predicted vote margins with the reality in each swing state.

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> State </th>
   <th style="text-align:right;"> 2024 Republican Vote Share </th>
   <th style="text-align:right;"> Republican Prediction </th>
   <th style="text-align:right;"> 2024 Democratic Vote Share </th>
   <th style="text-align:right;"> Democratic Prediction </th>
   <th style="text-align:left;"> Winner </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> georgia </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.12155 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.67809 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.87845 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.32191 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> pennsylvania </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.01765 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.03190 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.98235 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.96810 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> nevada </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.62171 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.89252 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.37829 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.10748 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> michigan </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.69844 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.47386 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.30156 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.52614 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> arizona </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 52.84747 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.98736 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 47.15253 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.01264 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> wisconsin </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.46844 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.79317 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.53156 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.20683 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> north carolina </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.70111 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.81864 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.29889 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.18136 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
</tbody>
</table>

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> State </th>
   <th style="text-align:right;"> 2024 Democratic Vote Share </th>
   <th style="text-align:right;"> Democratic Prediction </th>
   <th style="text-align:right;"> Democratic Vote Share Error </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> georgia </td>
   <td style="text-align:right;"> 48.87845 </td>
   <td style="text-align:right;"> 49.32191 </td>
   <td style="text-align:right;"> -0.4434620 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pennsylvania </td>
   <td style="text-align:right;"> 48.98235 </td>
   <td style="text-align:right;"> 49.96810 </td>
   <td style="text-align:right;"> -0.9857550 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nevada </td>
   <td style="text-align:right;"> 48.37829 </td>
   <td style="text-align:right;"> 50.10748 </td>
   <td style="text-align:right;"> -1.7291875 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> michigan </td>
   <td style="text-align:right;"> 49.30156 </td>
   <td style="text-align:right;"> 50.52614 </td>
   <td style="text-align:right;"> -1.2245852 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> arizona </td>
   <td style="text-align:right;"> 47.15253 </td>
   <td style="text-align:right;"> 49.01264 </td>
   <td style="text-align:right;"> -1.8601160 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> wisconsin </td>
   <td style="text-align:right;"> 49.53156 </td>
   <td style="text-align:right;"> 50.20683 </td>
   <td style="text-align:right;"> -0.6752730 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> north carolina </td>
   <td style="text-align:right;"> 48.29889 </td>
   <td style="text-align:right;"> 49.18136 </td>
   <td style="text-align:right;"> -0.8824625 </td>
  </tr>
</tbody>
</table>

As the tables above indicate, my model overpredicted for Harris in every swing state. 
- **Georgia:** My model correctly predicted that Georgia would swing for Trump. Furthermore, the margin of error between my prediction model and the actual result was only 0.44 percentage points: a relatively small under prediction for Trump. My working hypothesis as to why my model was more accurate in Georgia is that polls in Georgia have been incredibly accurate in the Trump era, especially compared to polling in other states. According to FiveThirtyEight, Georgia's average polling miss across 188 polls since 2016 was only 3.4 points [(FiveThirtyEight, 2024)](https://abcnews.go.com/538/states-accurate-polls/story?id=115108709). I believe this enhanced accuracy in accounting for the Trump-effect increased the accuracy of Georgia's prediction.

- **Arizona:** My model also asserted that Arizona would vote for Trump. This state, however, saw the largest margin of error wherein my model overpredicted Harris's performance by a margin of 1.86 points. This result calls into question my earlier hypothesis as FiveThirtyEight asserts that Arizona's average polling miss across 162 polls since 2016 was 3.7 points, only 0.3 points higher than Georgia  [(FiveThirtyEight, 2024)](https://abcnews.go.com/538/states-accurate-polls/story?id=115108709).

- **North Carolina:** I accurately predicted that North Carolina would swing for Trump. The margin for error in this prediction was 0.88 percentage points, placing it on the smaller end in terms of magnitude. My prediction is that the North Carolina model was more accurate as North Carolina is the only state of that seven that has swung for former President Trump in both 2016 and 2020, thus the lagged vote share may predict a Trump victory more accurately.

- **Pennsylvania:** Pennsylvania is the most interesting state in my prediction model as I had originally predicted it would swing for Harris when using the latest FiveThirtyEight poll averages taken about three weeks before election day. When I updated my poll averages the day before the election, however, Pennsylvania flipped for Trump on a narrow margin of 0.003 percentage points. This prediction ended up being correct, though it still overpredicted Harris's vote share by 0.99 percentage points. Three weeks before election day, FiveThirtyEight's latest aggregate poll showed Harris above Trump with a margin of 0.7 percentage points [(FineThirtyEight, 2024)](https://projects.fivethirtyeight.com/polls/president-general/2024/pennsylvania/). In the data I used for my model, Trump had shifted to having a 0.2 percentage point margin above Harris. This 0.9 point shift in the polls led Pennsylvania to swing for a different candidate, thus indicating how important poll accuracy was for the success of my model. 

- **Michigan:** Michigan was one of the three states that I incorrectly predicted would swing for Harris. My model had overpredicted Harris's vote margin by 1.22 percentage points. My hypothesis is that both Michigan and Wisconsin were biased by polling data which overpredicted Harris's vote margin as Michigan and Wisconsin were thought of as part of the "Blue Wall." Blue Wall states are those which have voted for a Democratic candidate from 1992 to 2012 and again in 2020, with the one exception being Trump's election in 2016. According to FiveThirtyEight, Michigan's average polling miss across 133 polls since 2016 was 5.4 points [(FiveThirtyEight, 2024)](https://abcnews.go.com/538/states-accurate-polls/story?id=115108709). Furthermore, Michigan polling from FiveThirtyEight had Harris at a 0.9 percentage point margin above Trump. 

- **Wisconsin:** Like Michigan, my model also incorrectly predicted a Harris victory in Wisconsin. The prediction error in Wisconsin was around 0.67 percentage points, so around half of the error in Michigan. I am unsure why my model was more accurate in Wisconsin than in Michigan, especially because Wisconsin's average polling miss across 81 polls since 2016 was 5.6 points [(FiveThirtyEight, 2024)](https://abcnews.go.com/538/states-accurate-polls/story?id=115108709). 

- **Nevada:** Finally, my last incorrect prediction was in Nevada where I overpredicted Harris's margin by 1.73 percentage points. Nevada had voted for the Democratic candidate in 2016 and 2020, thus the lagged vote share most likely biased my model. Indeed, Nevada's polls are thought of as the most accurate — the state's average polling miss across 86 polls since 2016 was 3.3 points [(FiveThirtyEight, 2024)](https://abcnews.go.com/538/states-accurate-polls/story?id=115108709). I am unsure as to why Nevada would have behaved differently in this election and will explore that (and my other hypotheses) in depth below.  

**Calculating My Model's Error**

To better understand the error in my prediction model, I will utilize both graphics and calculations of bias and error. 

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-8-1.png" width="672" />

The graphic above indicates that for every state except Washington, Utah, and Colorado, Trump outperformed the model. This indicates systemic model bias in favor of Harris which I will attempt to understand and explore below.

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption><span id="tab:unnamed-chunk-9"></span>Table 1: Model Evaluation Metrics for 2024 Democratic Vote Share Predictions</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Metric </th>
   <th style="text-align:right;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Bias </td>
   <td style="text-align:right;"> -1.4362 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mean Squared Error (MSE) </td>
   <td style="text-align:right;"> 3.3204 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Root Mean Squared Error (RMSE) </td>
   <td style="text-align:right;"> 1.8222 </td>
  </tr>
</tbody>
</table>


- **Bias:** Numerically, my model was biased to overpredict Harris's vote share by an average of 1.44 percentage points. This is curious as  when calculating the mean error of my final prediction model using out-of-sample cross-validation I had calculated that the [mean error for Democrats is around -0.25](https://menemshasolomon.github.io/election-blog/post/2024-11-01-9-final-prediction-assignment/), indicating my model tended to slightly underestimate Democrat performance. This systematic overestimation of Harris's performance is unique to this election cycle and an undesirable outcome of my model. I will attempt to understand what happened below.
- **Mean Squared Error:** The average squared error is 3.32. This value is sensitive to larger errors because squaring amplifies the impact of larger deviations. This value is difficult to interpret in the context of vote margin since it is squared; however, I use it here to compare it to the square of the [mean out-of-sample error of my model](https://menemshasolomon.github.io/election-blog/post/2024-11-01-9-final-prediction-assignment/) calculated using cross-validation. The mean error for a Democratic prediction prior to 2024 was -0.25 making the mean squared error 0.0625. Indeed, the mean squared error of my 2024 prediction is nearly 54 times that of my model prior to 2024.
- **Root Mean Squared Error:** To interpret this error in terms of vote percentage, root mean squared error was calculated to be 1.82. This means that my model was, on average, 1.82 percentage points off from the actual Democratic vote share. 

**Correcting my Model and Recalculating Error**

After completing my prediction model, I realized that when including the interaction effect between Q2 GDP growth and incumbency, it is essential to also include the individual variables (Q2 GDP growth and incumbency) to ensure that the model is fully saturated. A fully saturated model accounts for the main effects of each variable alongside their interaction, which is a standard practice in data science to avoid omitting key predictors. I have decided to address this oversight by updating my model and re-evaluating its errors. This will ensure that any hypotheses I make regarding the model's inaccuracies are based on a version of the model that adheres to proper data science principles and standards.

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> State </th>
   <th style="text-align:right;"> Democratic Prediction </th>
   <th style="text-align:right;"> Republican Prediction </th>
   <th style="text-align:left;"> Winner </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Arizona </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 47.93136 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 52.06864 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Georgia </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.32335 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.67665 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Michigan </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.37357 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.62643 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Nevada </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.75901 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.24099 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> North Carolina </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 47.95523 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 52.04477 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Pennsylvania </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.73942 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.26058 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Wisconsin </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.92756 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.07244 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
</tbody>
</table>

As is displayed above, had I correctly included Q2 GDP Growth, Incumbency, and the interaction effect between them in a fully saturated version of my model I would have accurately predicted a Trump victory in all seven swing states. To evaluate the performance of this adjusted model I will one again run through the steps I took above when initially evaluating my model.

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> State </th>
   <th style="text-align:right;"> 2024 Republican Vote Share </th>
   <th style="text-align:right;"> Republican Prediction </th>
   <th style="text-align:right;"> 2024 Democratic Vote Share </th>
   <th style="text-align:right;"> Democratic Prediction </th>
   <th style="text-align:left;"> Winner </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Georgia </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.12155 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.67665 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.87845 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.32335 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Pennsylvania </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.01765 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.26058 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.98235 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.73942 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Nevada </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.62171 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.24099 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.37829 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.75901 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Michigan </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.69844 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.62643 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.30156 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.37357 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Arizona </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 52.84747 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 52.06864 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 47.15253 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 47.93136 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Wisconsin </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 50.46844 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.07244 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 49.53156 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.92756 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> North Carolina </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 51.70111 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 52.04477 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 48.29889 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 47.95523 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
</tbody>
</table>

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> State </th>
   <th style="text-align:right;"> 2024 Democratic Vote Share </th>
   <th style="text-align:right;"> Democratic Prediction </th>
   <th style="text-align:right;"> Democratic Vote Share Error </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Georgia </td>
   <td style="text-align:right;"> 48.87845 </td>
   <td style="text-align:right;"> 48.32335 </td>
   <td style="text-align:right;"> 0.5550947 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pennsylvania </td>
   <td style="text-align:right;"> 48.98235 </td>
   <td style="text-align:right;"> 48.73942 </td>
   <td style="text-align:right;"> 0.2429313 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Nevada </td>
   <td style="text-align:right;"> 48.37829 </td>
   <td style="text-align:right;"> 48.75901 </td>
   <td style="text-align:right;"> -0.3807175 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Michigan </td>
   <td style="text-align:right;"> 49.30156 </td>
   <td style="text-align:right;"> 49.37357 </td>
   <td style="text-align:right;"> -0.0720130 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Arizona </td>
   <td style="text-align:right;"> 47.15253 </td>
   <td style="text-align:right;"> 47.93136 </td>
   <td style="text-align:right;"> -0.7788320 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Wisconsin </td>
   <td style="text-align:right;"> 49.53156 </td>
   <td style="text-align:right;"> 48.92756 </td>
   <td style="text-align:right;"> 0.6040008 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> North Carolina </td>
   <td style="text-align:right;"> 48.29889 </td>
   <td style="text-align:right;"> 47.95523 </td>
   <td style="text-align:right;"> 0.3436614 </td>
  </tr>
</tbody>
</table>

The corrected version of my model accurately predicted a Trump landslide in each of the swing states with the error in democratic vote share equal to less than a percentage point. To visually represent my model's bias for each state, I plotted them on a map similar to the one pictured above. 


```r
states_2024_margins_corrected <- states_2024_margins_corrected |>
  mutate(`Democratic Vote Share Error` = `2024 Democratic Vote Share` - `Democratic Prediction`,
         `Republican Vote Share Error` = `2024 Republican Vote Share` - `Republican Prediction`)

states_2024_margins_corrected2 <- states_2024_margins_corrected |>
  drop_na()

ggplot(states_2024_margins_corrected, aes(fill = `Democratic Vote Share Error`)) + 
  geom_sf() + 
  scale_fill_gradient2(low = "red", mid = "white", high = "blue", 
                       midpoint = 0, 
                       limits = c(-3, 3), 
                       na.value = "grey90") +
  theme_bw() + 
  labs(title = "Margin of Error Between 2024 Real and Predicted Election Results",
       caption = "States Where Trump Outperformed the Model will be Red, 
       States Where Harris Outperformed the Model will be Blue,
       Gray States Were Not Included in the Original Prediction Model",
       fill = "Vote Margin Error") + 
  theme(legend.position = "bottom",
        panel.grid = element_blank(),   
    axis.title.x = element_blank(), 
    axis.title.y = element_blank(), 
    axis.ticks = element_blank(),     
    axis.text = element_blank()) 
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-12-1.png" width="672" />

As can be seen in the map above, my model does not appear to be biased in either direction as around half of the predicted states were bias toward Trump and the other half were biased toward Harris. This is very different than my less-saturated model above which systematically underpredicted for Trump. Furthermore, the lighter shades of both colors represents the model's enhanced accuracy in predicting the actual Democratic two-party vote share in each state.

To better understand the bias and error of this adjusted model mathematically, I conducted the same calculations as above on the fully-saturated version of my model here:

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption><span id="tab:unnamed-chunk-13"></span>Table 2: Model Evaluation Metrics for 2024 Democratic Vote Share Predictions</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Metric </th>
   <th style="text-align:right;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Bias </td>
   <td style="text-align:right;"> -0.2723 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mean Squared Error (MSE) </td>
   <td style="text-align:right;"> 1.2176 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Root Mean Squared Error (RMSE) </td>
   <td style="text-align:right;"> 1.1034 </td>
  </tr>
</tbody>
</table>

- **Bias:** Numerically, my corrected model was biased to overpredict Harris's vote share by an average of 0.27 percentage points. As is indicated by the different directions of error in each of my swing state predictions, this model does not have the systematic bias towards Harris that the less-saturated version of my model did. I will, however, continue to explore why this version of my model still slightly overpredicts for Harris.
- **Mean Squared Error:** The average squared error for my corrected model is 1.21 which is over 2 points less than that of my less-saturated model presented above. This implies that a fully saturated version of my model more accurately predicted the actual 2024 vote share.
- **Root Mean Squared Error:** To interpret this error in terms of vote percentage, root mean squared error was calculated to be 1.1. This means that my model was, on average, 1.1 percentage points off from the actual Democratic vote share. This is 0.7 percentage points lower than the error of my less-saturated model.


