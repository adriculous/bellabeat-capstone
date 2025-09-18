# Bellabeat Capstone – Speaker Notes

**Author:** Adrianne Padua  
**Role-play:** Junior Data Analyst at Bellabeat  
**Audience:** Bellabeat executives  

---

## Slide 1 – Title
**Slide content:**  
- Bellabeat Capstone Case Study  
- Adrianne Padua | Data Analytics  
- Tools: R, Tidyverse, ggplot2  

**Speaker notes:**  
Hello, my name is Adrianne Padua, and I’m a junior data analyst at Bellabeat.  
In this presentation, I’ll share my analysis of Fitbit data, exploring user behaviors around activity, sleep, and weight.  
I’ll then present recommendations on how Bellabeat can leverage these insights to expand its product offerings.

---

## Slide 2 – Project Overview
**Slide content:**  
- Objective: Identify user health trends  
- Dataset: 30 users, 2 months (2016, Fitabase)  
- Tools: R, Tidyverse, ggplot2  

**Speaker notes:**  
The goal of this project was to analyze Fitbit data and identify user behavior patterns that could inform Bellabeat’s product strategy.  
The dataset includes 30 volunteer users, tracked over two months in 2016.  
I used R with the Tidyverse and ggplot2 for data cleaning, analysis, and visualization.

---

## Slide 3 – Data Cleaning
**Slide content:**  
- Combined two monthly exports  
- Standardized dates, removed duplicates  
- Derived: ActiveMinutes, SedentaryRatio, SleepEfficiency  

**Speaker notes:**  
Before starting analysis, I cleaned and prepared the data.  
This included combining the March–April and April–May exports, standardizing date formats, and removing duplicate rows.  
I also derived new variables: *ActiveMinutes*, *SedentaryRatio*, and *SleepEfficiency* to capture more meaningful measures of wellness behavior.

---

## Slide 4 – Key Insights: Activity
**Slide content:**  
- Avg steps/day: ~7,600  
- Only ~30% hit 10k/day  
- Sedentary >70% for most users  

**Speaker notes:**  
The activity data shows that users averaged about 7,600 steps per day.  
Only around one-third of participants met the 10,000-step benchmark.  
In addition, most users spent over 70% of their day sedentary, which suggests opportunities for Bellabeat to promote more active behaviors.

---

## Slide 5 – Key Insights: Sleep
**Slide content:**  
- Avg sleep: ~6.9 hrs (<7 hr CDC guideline)  
- Efficiency often <85%  
- Sleep data only for April–May  

**Speaker notes:**  
Sleep data revealed that users slept about 6.9 hours per night on average, which is slightly below the CDC’s recommendation of 7 hours.  
Sleep efficiency was often under 85%, showing restless or fragmented sleep.  
A limitation is that sleep logs were only available for the April–May subset of the dataset.

---

## Slide 6 – Cross-Analysis: Activity & Sleep
**Slide content:**  
- Weak/negative correlation  
- More steps ≠ better rest  

**Speaker notes:**  
When comparing daily steps with sleep duration, the data showed a weak negative correlation.  
This means higher activity did not necessarily result in longer or better sleep.  
For Bellabeat, this highlights that insights need to go beyond step tracking alone to provide real value.

---

## Slide 7 – Dataset Limitations
**Slide content:**  
- Small sample (30 users, 2 months)  
- Outdated (2016)  
- Missing demographics  
- No calories, sugar, or A1C data  

**Speaker notes:**  
While the dataset is reliable, it is also limited.  
The sample is very small, covers only two months, and was collected in 2016.  
It also lacks demographic details such as age and gender, and does not track nutrition or biomarkers like sugar intake or A1C.  
These gaps restrict the depth of insights.

---

## Slide 8 – Opportunities for Bellabeat
**Slide content:**  
1. 🍎 Nutrition logging (calories + sugar)  
2. 💉 Glucose meter integration (e.g., KP Health Ally)  
3. 🤰 IVY+ pregnancy expansion (gestational diabetes support)  
4. 🌿 Specialized devices (Leaf Diabetic edition)  

**Speaker notes:**  
Despite limitations, we can identify strong opportunities for Bellabeat.  
First, adding nutrition logging, particularly calories and sugar, would close the “calories in vs. out” gap.  
Second, integrating with glucose meters, like Kaiser’s KP Health Ally with OneTouch Verio, would support diabetic users and allow medical providers to monitor patient health.  
Third, IVY+, Bellabeat’s flagship pregnancy tracker, could be expanded with nutrition and glucose features to better support pregnant women, including those with gestational diabetes.  
Finally, Bellabeat could explore specialized devices like a “Leaf Diabetic,” potentially offered through doctor prescriptions.

---

## Slide 9 – Conclusion
**Slide content:**  
- Users fall short on steps & sleep  
- Dataset gaps limit insights  
- Opportunity: expand into **nutrition + biomarkers**  
- Position Bellabeat at **wellness + digital health** intersection  

**Speaker notes:**  
To summarize: users in this dataset often fell short of recommended steps and sleep.  
The dataset itself has important limitations, but these point toward even bigger opportunities for Bellabeat.  
By expanding into nutrition and biomarker tracking — especially through IVY+ — Bellabeat can move beyond lifestyle tracking into digital healthcare.  
This positions the company at the critical intersection of wellness and medical insight.  

---

## Slide 10 – Thank You
**Slide content:**  
- Repo: github.com/adriculous/bellabeat-capstone  
- Portfolio: data.adrianne.io (coming soon)  

**Speaker notes:**  
Thank you for your time and attention.  
I welcome any questions, and I encourage you to explore the full case study documentation in my GitHub repo.  
This concludes my presentation.  