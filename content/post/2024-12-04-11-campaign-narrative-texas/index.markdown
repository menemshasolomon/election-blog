---
title: '11. Campaign Narrative: Texas'
author: Mena Solomon
date: '2024-12-04'
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




## The Texas Campaign Narrative

The prediction model explored in the previous two posts attempted to use fundamental variables to predict the outcome of the election. Though fundamentals are largely predictive of election outcomes, utilizing fundamentals alone discounts the role of the campaign in determining the outcome of a certain state. To ascertain an understanding of how the campaign may have contributed to forecasting error within my model (and other predictive models), I analyzed the volume and nature of campaign activity in Texas as well as general trends of both election results and predictions. 

*To provide an in-depth understanding of the effect of the campaign, this post will focus on one state: Texas.* 

Texas was chosen as it offers a unique perspective for two reasons:
1. **Increasingly Narrow Margins for the Republican Party:** Texas has been a Republican stronghold in presidential elections since Jimmy Carter's victory in 1976. However, recent trends suggest a narrowing gap between the two parties. In 2020, Donald Trump carried the state by just five percentage points, a marked decline from previous Republican margins. Similarly, in the 2018 Senate race, Republican Ted Cruz narrowly defeated Democrat Beto O’Rourke by less than three points, signaling growing Democratic competitiveness in the state. These shifts underscore Texas's evolving political landscape and its potential to become a key battleground.[(Texas Standard, 2024)](https://www.texasstandard.org/stories/texas-polls-turning-blue-democratic-gains-accuracy-allred-cruz/).
2. **Battleground of Decisive Electoral Issues:** Two of the most decisive issues in the 2024 election were immigration and abortion, both of which are incredibly important to Texas voters. Immigration has been a defining issue for Trump supporters, serving as both a cornerstone of his political identity and a polarizing national debate. For Vice President Kamala Harris, the topic represents a key vulnerability in her political resume. This issue holds heightened significance in Texas, a state uniquely positioned at the forefront of the immigration debate. As home to over half of the U.S.-Mexico border, Texas bears the brunt of both the logistical and political complexities associated with immigration policy. Border towns face immediate pressures from surges in migrant crossings, while the broader state grapples with the economic, social, and political implications of federal immigration decisions.[(University of Houston, 2024)](https://uh.edu/news-events/stories/2024/august/08152024-hobby-immigration-survey.php) Additionally, Abortion has been a defining narrative of the Democratic party since the overturning of Roe V. Wade in June, 2022. This issue is particularly resonant in Texas, where anti-abortion politicians have tried to stop people from accessing abortion by passing unnecessary restrictions for the past 20 years. Texas is also home to some of the most restrictive abortion legislation, banning abortion as early as six weeks in pregnancy and offering money “damages” of at least $10,000 to anyone who successfully sues an abortion provider. These laws, passed by the Republican legislature, have become a point of pride for the Trump administration. For Harris, they have become a rallying cry as she defends women from laws which seek to limit their bodily autonomy[(ACLU Texas, 2024)](https://www.aclutx.org/en/know-your-rights/abortion-texas). 

Though Texas is not a swing state and, thus, did not see a high volume of campaign activity, the issues have inflated its importance throughout the campaign, making it an interesting area for analysis.

## The Political History of Texas

**Population and Geography**

Texas, also known as the lone star state, is the second most populous (29 million people) and the second largest (261,000 square miles) state in the United States. 

From 2010 to 2020, Texas experienced a population growth of 15%, nearly double the national average. This surge was largely concentrated in the state's major urban centers: Dallas, Fort Worth, Austin, Houston, and San Antonio. During this period, these cities saw a decline in their white populations alongside significant increases in Black residents. Additionally, the Hispanic population in Texas grew by 20%, driven predominantly by expansion within these metropolitan areas, further shaping the state's demographic landscape. [(U.S. Census, 2020)](https://www.census.gov/library/stories/state-by-state/texas-population-change-between-census-decade.html#age)

Texas boasts a highly diverse economy spanning multiple industries. It is recognized as the manufacturing capital of the U.S., with excellent high-tech manufacturing, automotive production, and food and beverage processing. The state is also a hub for aerospace, aviation, and defense, with several major military bases. Texas is also an energy production leader, particularly in oil and gas. [(Texas Government)](https://gov.texas.gov/business/page/target-industries#:~:text=A%20leader%20in%20advanced%20technologies,technologies%20are%20brought%20to%20life.)

**Politics**

Texas has two members of the U.S. Senate and a total of 38 members of the U.S. House of Representatives, thus giving it 40 electoral votes in a Presidential election. 

The governor of Texas is Greg Abbott (R), who is currently serving a third term. During his term as governor, Abbott has used executive orders to prohibit local governments and state agencies from mandating vaccines or face masks, signed a six week abortion ban into law, allowed the legal carry of handguns without a license, and sent $1.54 billion for construction of barriers along the southern border. These policies reflect the priorities and values of the Texas voters who have supported him across three terms.

Texas is represented in the U.S. senate by John Cornyn (R) and Ted Cruz (R). Cruz won re-election in the 2024 cycle, defeating Democrat Colin Allred. Cruz ran a campaign centered on the border, blaming Biden for several recent high-profile murders allegedly committed by immigrants who entered the country illegally. [(Ballotopedia)](https://ballotpedia.org/Texas)

**2024 Election**

In the 2024 election, Texas voters elected 25 Republicans and 13 Democrats to the House of Representatives. This represented no change from the 2022 midterm elections. As mentioned above, Ted Cruz was re-elected to his position in the U.S. senate. 15 seats in the Texas State Senate were up for election, seven went to Democrats and eight to Republicans. Republicans expanded their majority in the Texas House by flipping two seats in historically Democratic border districts.

Texans also voted to elect a Railroad Commissioner, one member of the three-person board in charge of regulating the oil and gas industry. The republican incumbent won reelection for that position. 

There are 15 districts within the State Board of Education, which sets curriculum and chooses textbooks for Texas public schools. A total of 8 seats were up for election this year, Republicans retained their majority, holding ten seats with the Democrats only holding five.

Three of the nine seats on the Supreme Court were up for election in 2024. Republican incumbents won reelection, thus Republicans continue to hold all seats.

The Texas Court of Criminal Appeals is the state’s highest criminal court, consisting of nine judges elected statewide. Currently, all nine judges are Republicans. In the most recent primaries, three incumbent judges lost their races, reportedly due to Attorney General Ken Paxton's "revenge tour" after the court limited his authority to prosecute voter fraud cases. The seats were subsequently won by Paxton-backed Republican challengers.

## Forecasted Outcome of the 2024 Presidential Election in Texas

Every prediction model for the 2024 Presidential Election predicted a Trump victory. Since the fully saturated version of my model accurately predicted the outcome of the 2024 election, I will use my model's vote margin prediction to understand how closely the actual outcome in the state met my forecast.

As a reminder, the fully saturated version of my prediction model included six variables — the interaction between incumbency and Q2 GDP growth, incumbency, Q2 GDP growth, poll averages right before election day, two-party vote share lagged one cycle, and two-party vote share lagged two cycles. These variables were incorporated into an elastic-net regularized regression predicting both Democratic two-party vote share and Republican two-party vote share. These predictions were then normalized against each other to arrive at my final prediction. 

**Real and Predicted Texas Election Results**

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
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Texas </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 57.01534 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 54.85448 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 42.98466 </td>
   <td style="text-align:right;background-color: rgba(240, 128, 128, 255) !important;"> 45.14552 </td>
   <td style="text-align:left;background-color: rgba(240, 128, 128, 255) !important;"> Trump </td>
  </tr>
</tbody>
</table>

As the table above indicates, my model predicted a Trump victory with 54.85% as compared to Harris's 45.15%. While this model correctly predicted a Trump victory, in reality he beat Harris with 57.02% compared to her 42.98%. 

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
   <td style="text-align:left;"> Texas </td>
   <td style="text-align:right;"> 42.98466 </td>
   <td style="text-align:right;"> 45.14552 </td>
   <td style="text-align:right;"> -2.160856 </td>
  </tr>
</tbody>
</table>

This table makes it abundantly clear that my model overpredicted Harris's vote margin by 2.16 percentage points.

**Model Error and Bias**

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption><span id="tab:unnamed-chunk-4"></span>Table 1: Model Evaluation Metrics for 2024 Democratic Vote Share Predictions</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Metric </th>
   <th style="text-align:right;"> General Model Value </th>
   <th style="text-align:right;"> Texas Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Bias </td>
   <td style="text-align:right;"> -0.2723 </td>
   <td style="text-align:right;"> -2.1609 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mean Squared Error (MSE) </td>
   <td style="text-align:right;"> 1.2176 </td>
   <td style="text-align:right;"> 4.6693 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Root Mean Squared Error (RMSE) </td>
   <td style="text-align:right;"> 1.1034 </td>
   <td style="text-align:right;"> 2.1609 </td>
  </tr>
</tbody>
</table>

As shown in the table, the root mean squared error (RMSE) for Texas (2.1642) was nearly double that of the general model (1.1047), indicating a significantly higher prediction error for Texas. Additionally, the bias for Texas (-2.1642) was considerably larger in magnitude compared to the general model's bias (-0.2752), highlighting that the model to overpredicted the outcome in Texas by nearly two percentage points more than the overall model bias.

These results indicate a need to explore what led to such a large error in my model's prediction, beginning with an understanding of the actual 2024 election results in Texas and, eventually, transforming into a discussion of the relevant Texas campaign narratives.

## Actual Outcome of the 2024 Presidential Election in Texas

As mentioned above, Former President Trump won Texas by 57.02% compared to Vice President Harris's 42.98%. To understand these results, it is helpful to analyze them at the county level.

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-5-1.png" width="672" />

As is indicated in the graphic above, Texas is almost entirely Republican. Following general trends, the Democratic sections of the state are concentrated in the large metropolitan areas. As detailed above, these areas are typically the fastest growing, most diverse sections of the state. Setting them aside, a majority of Texas is made up of White, small-town Republican voters.

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-6-1.png" width="672" />

The chart above is particularly revealing when analyzing the 2024 election outcome. While some Democratic strongholds shifted further left, a majority of the state moved significantly to the right, with the most notable shift occurring along the Western border of Texas.

Latino-dominated border towns, once considered Democratic strongholds, are increasingly voting Republican. The Texas Tribune points out that Democrats have long viewed the state's growing Latino population as key to breaking the Republican Party's dominance. However, polls show that Donald Trump won 55% of the Latino vote in this region, securing victories in 14 out of 18 counties within 20 miles of the border.

This shift, driven by concerns over immigration, border security, and economic issues, pushed Texas even further to the right than in 2020, challenging the assumption that the state’s growing Latino population would necessarily benefit Democrats. It signals a broader realignment in voter preferences across the state. [(Texas Tribune, 2024)](https://www.texastribune.org/2024/11/06/donald-trump-near-sweep-texas-border-counties/).

## Exploring the 2024 Presidential Campaign in Texas 

**Background on the Campaign in Texas**

Kamala Harris replaced Joe Biden as the Democratic candidate for President on July 22, 2024. For the sake of consistency in analyzing the campaign strategy of both candidates in Texas, this analysis will only cover the period from that point onward, when the race was between Harris and Trump.

Harris only had a limited time to present herself as a candidate thus, her campaign focused almost exclusively on the seven swing states — Pennsylvania, Michigan, Wisconsin, North Carolina, Georgia, Arizona, and Nevada. This meant that both candidates spent very limited time in Texas, a state which every pre-eminent forecast had going for Trump. 

Despite this, as previously stated, Texas was considered an incredibly important battleground for the most prominent issues of both campaigns: immigration and abortion. Thus, there is some campaign activity in Texas worth analyzing.

**Campaign Events in Texas**

Each campaign hosted one event in Texas during the period from July 22, 2024 to November 5, 2024. 

On the evening of October 25th, the Harris campaign "held a rally in Houston Texas to draw attention to restrictions on reproductive freedom and Trump's role in overturning Roe v. Wade.” The event, featuring cameos from Beyonce and Willie Nelson, was the largest that the Vice President hosted during her campaign. [(NBC News, 2024)](https://www.nbcnews.com/politics/2024-election/kamala-harris-rallies-beyonce-willie-nelson-texas-rcna177407).

Hours before Harris was set to appear in Houston for this star-studded rally, Trump hosted his own event in Austin, Texas. According to PBS, “Donald Trump tried Friday to turn a major celebratory event for Kamala Harris into an attack line tied to his favorite subject, immigration.” [(PBS News, 2024)](https://www.pbs.org/newshour/politics/watch-trump-calls-the-u-s-a-garbage-can-for-the-world-at-campaign-event-in-austin-texas).

**Campaign Advertising in Texas**

While there is limited information on total television ad spending in the 2024 election, data from The Wesleyan Media Project and the Cross-platform Election Advertising Transparency Initiative analyzes spending on Instagram and Meta during the same period.Between July 27 and October 26, 2024, Kamala Harris's campaign spent 3.2 million dollars in Texas, significantly outpacing Donald Trump's 920,000 dollar expenditure. This marks a reversal from the same period in 2020, where Joe Biden spent 2.5 million dollars compared to Trump's 5.8 million dollars. [(Wesleyan Media Project, 2024)](https://geo-ad-spending-813751399605.us-central1.run.app/).

In terms of television advertising, Harris's campaign emphasized abortion, with 93% of Houston’s 507 ads during this period focusing on the issue—the highest nationwide concentration. Meanwhile, energy dominated Austin ads (83%) and Laredo ads (21%), often linking the topic to inflation. Immigration was notably absent from Texas television ads during this time. [(Wesleyan Media Project, 2024)](https://mediaproject.wesleyan.edu/issues-oct24/)

**Door Knocking in Texas**

With the Harris campaign concentrating its ground-game efforts on seven key swing states and Trump traditionally deprioritizing ground-game campaigning, Texas saw minimal ground-game activity from either side. This lack of investment in door-knocking and voter outreach reflects their strategic focus on other battlegrounds, leaving little to analyze in this domain.

## Analyzing the Role of the Campaign in Texas

In evaluating the campaign's influence on shifting the vote margin in Texas, it is essential to consider both the quantitative aspects, such as the volume of campaign activity, and the qualitative dimensions, including the messaging strategies and themes each campaign sought to emphasize.

1. **Limited Campaign Activity:** To evaluate the quantitative aspect of the campaign it is important to explore the difference between outcomes in the seven swing states, which saw the highest volume of campaign activity, and the other states. Furthermore, I will evaluate if states which saw a higher volume of campaign activity were predicted with higher accuracy by the model than those which where not.

2. **Clarifying Campaign vs. Insurgent Campaign:** In her book *Message Matters*, author Lynn Vavreck hypothesizes that candidates running the right type of campaign can outperform fundamentals (the basis of my forecast model). According to her analysis, out of 12 campaigns that do what she asserts to be the right thing, 11 won. Furthermore, out of the 14 that she asserts did the wrong thing, 12 lost. I will evaluate how each campaign performed according to Vavreck's metric of the "right" and "wrong" type of campaign messaging through text analysis of their campaign events in Texas. 

**Quantitative Analysis — The Volume of Campaign Activity**

Due to time constraints, the Harris campaign concentrated efforts on the seven swing states, which, according to campaign representatives on *Pod Save America*, led to narrower margins in these states. They argue that with more time, they could have reduced these margins even further [(Pod Save America, 2024)](https://podcasts.apple.com/us/podcast/pod-save-america/id1192761536). As *New York Magazine* reports, "States that had a margin of 3 points or less in 2020 moved to the right by 3.4 points on average. States where the margin in 2020 was larger than that moved to the right by an average of 4.8 points.” [(New York Magazine, 2024)](https://nymag.com/intelligencer/article/harris-campaign-battleground-states-electoral-college.html)

This theory is evaluated by comparing the shift in Democratic two-party vote share between the 2020 and 2024 elections, providing insight into the potential impact of focused campaigning in these critical states.

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-7-1.png" width="864" />

As seen in the graphic above, on average the seven swing states (light green) did have a smaller shift to the right than the average of all of the other states (magenta). This could be evidence of the effect of the Harris campaign in shrinking the shift rightward from 2020 to 2024.

Texas appeared to have the 5th largest shift rightward in the United States, nearly two points above the national average. This result indicates that though the lack of campaign may have been partially related to the outcome, it is likely that there were other factors at play as well.  

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-8-1.png" width="864" />

The chart above examines whether higher campaign activity in a state correlates with a reduced root mean squared error (RMSE) in forecast predictions. It reveals that the average RMSE for the seven swing states (light green) was 0.75 points lower than the overall average RMSE for all states (magenta). This disparity suggests that the Harris campaign's focus on swing states may have improved alignment between polling predictions and actual results in these key regions, potentially demonstrating the effectiveness of their targeted efforts.

Texas has one of the largest RMSEs, indicating that fundamentals and polling were inaccurate predictors of the outcome of the election. This result indicates that the outcome of the Texas election was most likely due to unexpected voter behavior, demographic shifts, or localized issues that polling and predictive models failed to account for. These discrepancies highlight the challenge of relying solely on fundamentals and polling to predict outcomes in complex electoral environments like Texas.

In combination, these two charts indicate that the result in Texas was a due to a failure of fundamentals and polling to describe the temperature of the electorate in Texas. Furthermore, while the limited presence of the campaign may explain some of the outcome, it fails to account for why Texas had the fifth largest rightward shift from 2020 to 2024. Despite this, the quality of the campaign will be discussed below to understand some of the error in predicting the outcome in Texas.

**Qualitative Analysis — The Type of Campaign Messaging**

As mentioned above, to understand the success of a campaign, scholar Lynn Vavreck emphasizes that it is important to analyze campaign messaging. Through text analysis of their campaign events in Texas, I will use Vavreck's metric of a successful campaign to evaluate the success of each candidate's messaging in Texas.

According to Vavreck, candidates must tailor their campaigns based on the economic context. When the economy benefits the candidate (e.g., an incumbent in a strong economy or a challenger in a weak one), they should run a clarifying campaign by emphasizing the economy's strengths or weaknesses. Conversely, when the economy does not favor the candidate (e.g., an incumbent in a weak economy or a challenger in a strong one), they must adopt an insurgent approach, focusing on a specific issue where public opinion aligns with their stance to shift the narrative in their favor. [(Vavreck, 2009)](https://hollis.harvard.edu/permalink/f/1lqd3jo/01HVD_ALMA512229372270003941)

Using Vavreck's framework, it would make sense for Trump to run a clarifying campaign, one which draws attention to the poor economy under the Biden administration. By that metric, Harris would then need to run an insurgent campaign, most likely relying on issues like democracy, January 6th, and abortion to win the election. The analysis below will attempt to discern whether or not Trump and Harris ran campaigns in line with Vavreck's hypothesis. Furthermore, bearing in mind that Texas voters care deeply about abortion, immigration, and energy, it is important to evaluate if the campaigns incorporate those issues into their speeches.

To analyze the type of campaign each candidate ran in Texas, I will use text analysis of each speech. First, summarizing the most frequent words used in each speech:

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-9-1.png" width="672" /><img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-9-2.png" width="672" />

First, it is important to note that Trump's speech in Austin was 50 minutes, while Harris's speech was around 28 minutes. Furthermore, while Harris delivered polished, well-rehearsed remarks, Trump often veered off his teleprompter. These details are important as the most frequent words in the Harris word cloud seem to be very intentional — Texas, women, abortion, freedom. However, the most frequent words in Trump's word cloud are far more general — people, know, thank, going. 

Since the word cloud fails to provide real insight into the subject matter of each candidate's speech, I selected a few words for each relevant topic — the economy, energy, abortion, immigration, foreign policy, and domestic policy/democracy. I then compared the frequency each of these words appeared in both candidates speeches.

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:left;"> Word </th>
   <th style="text-align:right;"> Harris (Houston) </th>
   <th style="text-align:right;"> Trump (Austin) </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> economy </td>
   <td style="text-align:left;"> economy </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> jobs </td>
   <td style="text-align:left;"> jobs </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> inflation </td>
   <td style="text-align:left;"> inflation </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> energy </td>
   <td style="text-align:left;"> energy </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> oil </td>
   <td style="text-align:left;"> oil </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(221, 221, 255, 255) !important;"> abortion </td>
   <td style="text-align:left;background-color: rgba(221, 221, 255, 255) !important;"> abortion </td>
   <td style="text-align:right;background-color: rgba(221, 221, 255, 255) !important;"> 17 </td>
   <td style="text-align:right;background-color: rgba(221, 221, 255, 255) !important;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(221, 221, 255, 255) !important;"> health </td>
   <td style="text-align:left;background-color: rgba(221, 221, 255, 255) !important;"> health </td>
   <td style="text-align:right;background-color: rgba(221, 221, 255, 255) !important;"> 3 </td>
   <td style="text-align:right;background-color: rgba(221, 221, 255, 255) !important;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(221, 221, 255, 255) !important;"> women </td>
   <td style="text-align:left;background-color: rgba(221, 221, 255, 255) !important;"> women </td>
   <td style="text-align:right;background-color: rgba(221, 221, 255, 255) !important;"> 22 </td>
   <td style="text-align:right;background-color: rgba(221, 221, 255, 255) !important;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> immigration </td>
   <td style="text-align:left;"> immigration </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(255, 221, 221, 255) !important;"> illegal </td>
   <td style="text-align:left;background-color: rgba(255, 221, 221, 255) !important;"> illegal </td>
   <td style="text-align:right;background-color: rgba(255, 221, 221, 255) !important;"> 0 </td>
   <td style="text-align:right;background-color: rgba(255, 221, 221, 255) !important;"> 10 </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(255, 221, 221, 255) !important;"> border </td>
   <td style="text-align:left;background-color: rgba(255, 221, 221, 255) !important;"> border </td>
   <td style="text-align:right;background-color: rgba(255, 221, 221, 255) !important;"> 0 </td>
   <td style="text-align:right;background-color: rgba(255, 221, 221, 255) !important;"> 21 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> defense </td>
   <td style="text-align:left;"> defense </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(255, 221, 221, 255) !important;"> war </td>
   <td style="text-align:left;background-color: rgba(255, 221, 221, 255) !important;"> war </td>
   <td style="text-align:right;background-color: rgba(255, 221, 221, 255) !important;"> 0 </td>
   <td style="text-align:right;background-color: rgba(255, 221, 221, 255) !important;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(255, 221, 221, 255) !important;"> policy </td>
   <td style="text-align:left;background-color: rgba(255, 221, 221, 255) !important;"> policy </td>
   <td style="text-align:right;background-color: rgba(255, 221, 221, 255) !important;"> 0 </td>
   <td style="text-align:right;background-color: rgba(255, 221, 221, 255) !important;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;background-color: rgba(255, 221, 221, 255) !important;"> democracy </td>
   <td style="text-align:left;background-color: rgba(255, 221, 221, 255) !important;"> democracy </td>
   <td style="text-align:right;background-color: rgba(255, 221, 221, 255) !important;"> 1 </td>
   <td style="text-align:right;background-color: rgba(255, 221, 221, 255) !important;"> 3 </td>
  </tr>
</tbody>
</table>

According to the chart above, Trump did not run a clarifying campaign in Texas. Rather, he focused on issues of immigration, foreign policy, and democracy. According to Vavreck, this means that Trump ran the "wrong" type of campaign, thus his messaging would not have helped him win the election. Trump did, however, recognize the importance of immigration and the border to Texas voters. As indicated previously, it was border towns that swung the furthest right in all of Texas. Thus, it is possible that Trump's message on the border contributed to that success. Furthermore, literature has revealed that much of the conversation about the border often relates to the economic costs and burdens associated with the migration surge or concerns about security[(Pew Research Center, 2024)](https://www.pewresearch.org/politics/2024/02/15/in-their-own-words-americans-concerns-feelings-about-u-s-mexico-border-situation/). Indeed, it is possible that through coversation on immiration, Trump addressed concerns about the economy, thus running a partial clarifying campaign tailored towards the concerns of Texas voters.

The chart does indicate that Harris ran a successful insurgent campaign, focused on the issue of abortion and women's rights. As mentioned above, she also carried this message across the air through campaign advertising. It goes against Vavreck's hypothesis that Harris would have lost the election while running a strong insurgent campaign. However, it is likely that Texas voters did not find this issues particularly salient when compared to Trump's success delivering his clarifying message. 

To summarize, the campaign's influence on Texas's rightward shift was likely minor. While increased campaign efforts might have slightly tempered this shift, they wouldn't have bridged the considerable gap between Biden's 2020 performance and Harris's in 2024. Despite Harris's strong insurgent campaign and Trump's lack of a clarifying one, voters appeared to favor Trump's message over Harris's. This outcome underscores the inability of Vavreck's model to fully account for voter sentiment in the 2024 election.

## So, Why Did Trump Win and Why Did the Polls Fail?

Texas experienced one of the most significant rightward shifts in the 2024 election, coupled with the largest polling error among states. This was likely driven by demographic changes and the failure of predictive models to capture the underlying priorities and sentiments of Texas voters. While the campaign contributed to this shift through a lack of presence in Texas and a message that missed key voter concerns, these factors alone cannot account for the scale of the outcome. The evidence suggests that broader demographic trends and a nationwide sentiment favoring Trump played the decisive role. Even with an optimal campaign strategy, reversing this shift in Texas would have been extremely challenging, given the broader dynamics shaping the election.

## Notes
All code above is accessible via [Github](https://menemshasolomon.github.io/election-blog/post/2024-11-13-10-prediction-evaluation/).

**Sources**

Texas Standard. “Why Are Texas Polls Missing the Mark on Democratic Gains?” Texas Standard, Texas Public Radio, 27 Oct. 2024, https://www.texasstandard.org/stories/texas-polls-turning-blue-democratic-gains-accuracy-allred-cruz/.

University of Houston. “Survey Reveals Texans’ Mixed Views on Immigration.” UH News, University of Houston, 15 Aug. 2024, https://uh.edu/news-events/stories/2024/august/08152024-hobby-immigration-survey.php.

ACLU of Texas. “Know Your Rights: Abortion in Texas.” ACLU of Texas, https://www.aclutx.org/en/know-your-rights/abortion-texas. Accessed 8 Dec. 2024.

U.S. Census Bureau. “Texas: Population Change Between Census Decades.” Census Stories by State, U.S. Census Bureau, 2024, https://www.census.gov/library/stories/state-by-state/texas-population-change-between-census-decade.html#age.

Office of the Governor of Texas. “Target Industries in Texas.” Gov. of Texas, 2024, https://gov.texas.gov/business/page/target-industries#:~:text=A%20leader%20in%20advanced%20technologies.

Ballotpedia. “Texas.” Ballotpedia, Lucy Burns Institute, 2024, https://ballotpedia.org/Texas.

Ura, Alexa. “Trump Makes Near Sweep of Texas Border Counties in 2024 Election.” Texas Tribune, 6 Nov. 2024, https://www.texastribune.org/2024/11/06/donald-trump-near-sweep-texas-border-counties/.

NBC News. “Kamala Harris Rallies in Texas with Beyoncé and Willie Nelson.” NBC News, 2024, https://www.nbcnews.com/politics/2024-election/kamala-harris-rallies-beyonce-willie-nelson-texas-rcna177407.

PBS NewsHour. “Trump Calls U.S. ‘Garbage Can for the World’ at Austin Campaign Event.” PBS NewsHour, PBS, 2024, https://www.pbs.org/newshour/politics/watch-trump-calls-the-u-s-a-garbage-can-for-the-world-at-campaign-event-in-austin-texas.

MediaProject. “2024 Ad Spending by State.” MediaProject, Wesleyan University, 2024, https://geo-ad-spending-813751399605.us-central1.run.app/.

MediaProject. “Ad Issue Breakdown: October 2024.” MediaProject, Wesleyan University, 2024, https://mediaproject.wesleyan.edu/issues-oct24/.

“Pod Save America.” Crooked Media, hosted by Jon Favreau et al., episode aired Oct. 2024, https://podcasts.apple.com/us/podcast/pod-save-america/id1192761536.

Nwanevu, Osita. “Harris Campaign Prioritizes Battleground States.” New York Magazine, 2024, https://nymag.com/intelligencer/article/harris-campaign-battleground-states-electoral-college.html.

Harvard Hollis Catalog. “Electoral College Strategies in Modern Campaigns.” Harvard University Library, 2024, https://hollis.harvard.edu/permalink/f/1lqd3jo/01HVD_ALMA512229372270003941.

Pew Research Center. “In Their Own Words: Americans’ Concerns About U.S.-Mexico Border.” Pew Research Center, 15 Feb. 2024, https://www.pewresearch.org/politics/2024/02/15/in-their-own-words-americans-concerns-feelings-about-u-s-mexico-border-situation/.

**Data Sources**

US Presidential Election Popular Vote Data from 1948-2020 provided by the course. Economic data from the U.S. Bureau of Economic Analysis, also provided by the course. Polling data sourced from FiveThirtyEight. 2024 election results provided by the course. 

To watch each candidate's speech in Texas, see here: [Trump in Austin](https://www.youtube.com/watch?v=NHpF4Oat0UQ). [Harris in Houston](https://www.youtube.com/watch?v=UfX9VKueuGE).
