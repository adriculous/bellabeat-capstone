# Bellabeat Capstone Project

**Author:** Adrianne Padua  
**Date:** September 2025  
**Tools:** R, RStudio, tidyverse, ggplot2  

---

## 📌 Project Overview
This is my final capstone project for the **Google Data Analytics Specialization (v2 with Generative AI support)**.  

The project analyzes Fitbit fitness tracker data to identify wellness trends and propose new opportunities for **Bellabeat**, a women’s health and wellness technology company headquartered in San Francisco, CA (with an additional office in Zagreb, Croatia).  

The analysis explores **daily activity, sleep, and weight** data for 30 volunteer Fitbit users over a two-month period in 2016. Based on the findings, I developed recommendations for how Bellabeat could expand its product features to better support dieting individuals, diabetics, and pregnant women (including gestational diabetes).

---

## 📊 Bellabeat Capstone Presentation
This project includes both a detailed written report and a slide deck with speaker notes.

- 📝 [Final Report](report/final/capstone_report.md)  
- 🔑 [Key Takeaways](report/final/key_takeaways.md)  
- 🎤 [Speaker Notes](report/final/speaker_notes.md)  
- 📑 [Slides (PDF)](report/final/bellabeat_slides.pdf)  
- 🌐 [Google Slides Deck](https://docs.google.com/presentation/d/1BQVG1u87U-pJDoI8qBH8xYd1BIni62HvT4QYCDeANN8/edit?usp=sharing)  

---

## 🗂️ Repo Structure
```bash
bellabeat-capstone/
│
├── analysis/
│   └── r/                  # R scripts
│       ├── process_data.R   # Data cleaning
│       ├── analyze_data.R   # Exploratory analysis (EDA)
│       └── make_samples.R   # Create lightweight sample datasets
│
├── data/
│   ├── raw/                # Raw Fitbit datasets (ignored by Git)
│   ├── cleaned/            # Cleaned datasets (ignored, except *.sample.csv)
│   │   ├── dailyActivity.sample.csv
│   │   ├── sleep.sample.csv
│   │   └── weight.sample.csv
│   └── dictionary/         # Data dictionary (optional)
│
├── docs/
│   ├── cleaning-log.md     # Data cleaning documentation
│   ├── limitations.md      # Dataset limitations
│   └── references.md       # Sources & citations (optional)
│
├── report/
│   ├── draft/
│   │   └── analysis-notes.md
│   ├── final/
│   │   ├── capstone_report.md
│   │   ├── key_takeaways.md
│   │   └── speaker_notes.md
│   └── summary_tables.md
│
├── visuals/
│   ├── activity/           # Steps, calories, sedentary plots
│   ├── sleep/              # Sleep efficiency plots
│   ├── weight/             # BMI distribution
│   └── cross/              # Cross-analysis (steps vs sleep, etc.)
│
├── .gitignore
├── README.md
└── bellabeat-capstone.Rproj
```

---

## 🔍 Key Findings
- Users averaged 7,638 steps/day; only ~33% reached 10,000/day.
- Users averaged 6.9 hours of sleep; many below the 7+ hours guideline.
- Sleep efficiency often fell below 85%.
- Weight logs were sparse (98 entries across 30 users).
- Steps and sleep showed a weak negative correlation.

---

## 💡 Recommendations
- Add **nutrition and sugar intake logging** to Bellabeat products.
- Integrate with **glucose meters** (e.g., Kaiser Permanente’s KP Health Ally with OneTouch Verio).
    - Enable automatic sharing with doctors/dietitians.
    - Support **A1C uploads** for longitudinal tracking.
- Expand the **IVY+ product** with enhanced pregnancy support, including gestational diabetes features.
- Explore **specialized devices such** as *Leaf Diabetic*, potentially doctor-prescribed.

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
This project highlights the blind spots in wearable health data (nutrition, sugar intake, A1C) and demonstrates how Bellabeat could expand from activity and sleep tracking into **holistic women’s health and digital therapeutics**.

By bridging wellness tracking with medical integration, Bellabeat can position itself at the intersection of **consumer health + digital healthcare**.