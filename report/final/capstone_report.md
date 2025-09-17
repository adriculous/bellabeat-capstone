# Bellabeat Capstone Report

**Author:** Adrianne Padua  
**Date:** 2025-09-17  
**Company Location:** Bellabeat HQ – San Francisco, CA (with office in Zagreb, Croatia)

---

## Executive Summary
This capstone project analyzes Fitbit fitness tracker data to uncover wellness trends and identify product opportunities for **Bellabeat**, a women’s health and wellness technology company.  

Using R and the tidyverse ecosystem, I explored daily activity, sleep, and weight data from 30 users over a two-month period in 2016. Key findings include:  
- Users averaged **7,638 steps/day**; only **~33%** reached 10,000 steps/day.  
- Users averaged **6.9 hours of sleep**; sleep efficiency often fell below 85%.  
- Weight logging was sparse (**98 logs across 30 users**).  
- Steps and sleep showed a weak negative correlation, highlighting trade-offs in activity vs recovery.  

**Recommendations for Bellabeat:**  
- Add nutrition and sugar intake logging.  
- Integrate with glucose meters (inspired by Kaiser Permanente’s *KP Health Ally* app with OneTouch Verio).  
- Enhance existing **Ivy+** product with expanded pregnancy support.  
- Explore condition-specific devices like *Leaf Diabetic*, potentially doctor-prescribed.  

These opportunities position Bellabeat to bridge **consumer wellness and digital health**, expanding their impact for dieting users, diabetics, and expectant mothers.

---

## Business Task
Bellabeat aims to expand its market by better understanding wellness behaviors and identifying gaps in current wearable features.  

**Business Question:**  
*How can Bellabeat leverage wearable health data to design features that support dieting, diabetic, and pregnant users?*

---

## Data
- **Source:** [Fitbit Fitness Tracker Data](https://www.kaggle.com/arashnic/fitbit) (Fitabase export, 2016).  
- **Sample Size:** 30 volunteer users, 2-month period (March–May 2016).  
- **Files Used:**  
  - `dailyActivity_merged.csv` (March–April, April–May)  
  - `sleepDay_merged.csv` (April–May only)  
  - `weightLogInfo_merged.csv` (sparse)  
- **Limitations:**  
  - Small, outdated sample.  
  - Sparse weight logs.  
  - Missing nutrition, sugar, and demographic data.  
  - Sleep data incomplete (only one month available).  

---

## Process
- **Tools:** RStudio, tidyverse (dplyr, ggplot2, readr, lubridate).  
- **Steps:**  
  1. **Prepare** – organized project in GitHub repo.  
  2. **Process** – cleaned datasets (removed duplicates, standardized dates, created derived columns). Logged in `docs/cleaning-log.md`.  
  3. **Analyze** – calculated summary stats, visualized trends with ggplot. Notes in `report/draft/analysis-notes.md`.  
  4. **Share** – this final case study report consolidates insights and recommendations.  

---

## Analysis

### Activity
- **Avg steps/day:** 7,638  
- **Median steps/day:** 7,250  
- **% hitting 10k/day:** ~33%  
- Sedentary ratio: most users spent >70% of their day sedentary.  
- (Real talk: I also fall short of 10k steps most days — so I’m right there with this dataset. 😅)  

*Visuals:*  
- `visuals/activity/steps_vs_calories.png`  
- `visuals/activity/sedentary_ratio_hist.png`

---

### Sleep
- **Avg sleep duration:** 6.9 hours  
- **Sleep efficiency:** avg 83% (many users <85%).  
- (Fun fact: that average is basically me — I usually get ~6 hours a night. Coffee is my Bellabeat. ☕😂)  

*Visuals:*  
- `visuals/sleep/sleep_efficiency_vs_minutes.png`

---

### Weight
- **Logs:** 98 total entries across 30 users.  
- **BMI range:** ~19.5–35.  
- **Most users:** within 23–28 (borderline overweight).  
- (Weight logging is also something I skip IRL, so I get why the dataset looks sparse. 🙈)  

*Visuals:*  
- `visuals/weight/bmi_distribution.png`

---

### Cross-Analysis
- **Steps vs Sleep:** weak negative correlation → more steps didn’t equal better sleep.  
- **Sedentary vs Calories:** higher sedentary ratio linked to lower calorie burn.  
- (Honestly, even on my most active days, I sometimes sleep worse. So I felt this result on a personal level. 😬)  

*Visuals:*  
- `visuals/cross/steps_vs_sleep.png`

---

## Recommendations

### Short-Term (Enhance Existing Products)
- Add nutrition & sugar intake logging.  
- Sync with glucose meters for diabetics.  
- Expand **Ivy+** to include nutrition and pregnancy-specific wellness guidance.  

### Long-Term (New Specialized Devices)
- Develop *Leaf Diabetic* — tailored device with glucose + nutrition tracking.  
- Potentially doctor-prescribed; bridges wellness and healthcare.  
- Build credibility in **digital therapeutics** market.  

---

## Limitations
- Small, outdated dataset; may not represent current Bellabeat market.  
- Lacked nutrition and biomarker data (calorie intake, A1C).  
- AFAB target group cannot be isolated due to missing demographics.  

---

## Conclusion
This analysis highlights gaps in current wearable data — particularly **nutrition and sugar intake tracking** — that limit holistic health insights. By addressing these blind spots, Bellabeat can create differentiated products for dieting, diabetic, and pregnant users.  

Through features like glucose meter integration and expanded pregnancy support in Ivy+, Bellabeat can position itself as a leader in **women’s digital health**, bridging lifestyle wellness with clinical care.  

---

## Appendix
- Cleaning Log: `docs/cleaning-log.md`  
- Dataset Limitations: `docs/limitations.md`  
- Summary Tables: `report/summary_tables.md`  