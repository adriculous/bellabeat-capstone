# Bellabeat Capstone – Visuals

This folder contains exploratory analysis plots generated from the cleaned Fitbit dataset.  
Each plot is saved automatically from `analysis/r/analyze_data.R`.

---

## 📂 activity/
- **steps_vs_calories.png**  
  - Scatterplot of total steps vs calories burned.  
  - Shows a positive relationship: more steps generally → more calories burned.  
  - Insight: Activity level is a strong driver of calorie expenditure.

- **sedentary_ratio_hist.png**  
  - Histogram of Sedentary Ratio (SedentaryMinutes / TotalMinutes).  
  - Many users spend most of the day sedentary.  
  - Insight: Opportunity for Bellabeat to encourage breaks & active reminders.

---

## 📂 sleep/
- **sleep_efficiency_vs_minutes.png**  
  - Scatterplot of sleep efficiency vs minutes asleep (hours).  
  - Some users spend long time in bed but with low efficiency.  
  - Insight: Quality of sleep matters as much as quantity.

---

## 📂 weight/
- **bmi_distribution.png**  
  - Histogram of BMI values from weight logs.  
  - Sparse dataset (few users log weight).  
  - Insight: Weight tracking adoption is low; Bellabeat could encourage easier logging or smart scale integration.

---

## 📂 cross/
- **steps_vs_sleep.png**  
  - Scatterplot of steps vs sleep duration (hours).  
  - Weak or negative correlation observed.  
  - Insight: More steps ≠ longer sleep. Sleep is influenced by other lifestyle factors (stress, diet, routines).

---

## 📝 Notes
- Plots reflect exploratory trends, not final polished visuals.  
- Analysis is limited by dataset constraints (small sample, no nutrition/sugar data, sleep only for April–May).  
- These visuals will inform the Step 5 report, where insights are tied back to **Bellabeat product opportunities**:
  - Add nutrition & sugar intake logging.  
  - Consider A1C integration for diabetic users.  
  - Provide pregnancy-specific wellness features.  