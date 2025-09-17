# Bellabeat Capstone Project

**Author:** Adrianne Padua  
**Date:** September 2025  
**Tools:** R, RStudio, tidyverse, ggplot2  

---

## 📌 Project Overview
This is my final capstone project for the **Google Data Analytics Specialization (v2 with Generative AI support)**.  

The project analyzes Fitbit fitness tracker data to identify wellness trends and propose new opportunities for **Bellabeat**, a women’s health and wellness technology company headquartered in San Francisco, CA (with an additional office in Zagreb, Croatia).  

The analysis explores **daily activity, sleep, and weight** data for 30 volunteer Fitbit users over a two-month period in 2016. Based on the findings, I developed recommendations for how Bellabeat could expand its product features to better support dieting individuals, diabetics, and pregnant women.

---

## 🗂️ Repo Structure
```bash
bellabeat-capstone/
│
├── data/
│   ├── raw/              # Original Fitbit dataset (Fitabase export 2016)
│   ├── cleaned/          # Cleaned datasets (CSV)
│   └── processed/        # Optional aggregated files
│
├── docs/
│   ├── cleaning-log.md   # Data cleaning documentation
│   ├── limitations.md    # Dataset limitations
│   └── references.md     # Sources & citations (optional)
│
├── report/
│   ├── draft/
│   │   └── analysis-notes.md   # Exploration notes
│   ├── final/
│   │   ├── capstone_report.md  # Final written report
│   │   └── key_takeaways.md    # 1-page summary version
│   └── summary_tables.md       # Summary stats tables
│
├── scripts/
│   ├── cleaning.R        # Data cleaning scripts
│   ├── analysis.R        # Analysis scripts
│   └── visualization.R   # Plot generation
│
├── visuals/
│   ├── activity/         # Steps, calories, sedentary plots
│   ├── sleep/            # Sleep efficiency plots
│   ├── weight/           # BMI distribution
│   └── cross/            # Cross-analysis (steps vs sleep, etc.)
│
└── README.md             # This file

---

## 🔍 Key Findings
- Users averaged 7,638 steps/day; only ~33% reached 10,000/day.
- Users averaged 6.9 hours of sleep; many below the 7+ hours guideline.
- Sleep efficiency often fell below 85%.
- Weight logs were sparse (98 entries across 30 users).
- Steps and sleep showed a weak negative correlation.

---

## 💡 Recommendations
- Add nutrition and sugar intake logging to Bellabeat products.
- Integrate with glucose meters (e.g., Kaiser Permanente’s KP Health Ally with OneTouch Verio).
- Expand the Ivy+ product with enhanced pregnancy support.
- Explore specialized devices such as Leaf Diabetic, potentially doctor-prescribed.

---

### 📂 Sample Data
To keep this repo lightweight, only small preview samples of the cleaned datasets are included here:  

- [dailyActivity.sample.csv](data/cleaned/dailyActivity.sample.csv)  
- [sleep.sample.csv](data/cleaned/sleep.sample.csv)  
- [weight.sample.csv](data/cleaned/weight.sample.csv)  

⚠️ The full raw and cleaned datasets are excluded due to size. You can access the complete Fitbit dataset from the original Kaggle source:  
👉 [Fitbit Fitness Tracker Data on Kaggle](https://www.kaggle.com/arashnic/fitbit)

---

## 📊 Deliverables
- Final Report
- Key Takeaways Summary
- Cleaning Log
- Dataset Limitations

---

## ⚠️ Dataset Disclaimer
- Data from Kaggle – Fitbit Fitness Tracker Data.
- Collected by Fitabase in 2016 (2 months, 30 users).
- Shared under CC0 Public Domain license.

---

## 🎯 Big Picture
This project highlights the blind spots in wearable health data (nutrition, sugar intake, A1C) and demonstrates how Bellabeat could expand from activity and sleep tracking into holistic women’s health and digital therapeutics.