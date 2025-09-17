# Bellabeat Capstone – Data Cleaning Log

**Original Source** [Kaggle](https://www.kaggle.com/datasets/arashnic/fitbit)
**Date:** 2025-09-17  
**Author:** Adrianne Padua  

This document records the data processing and cleaning steps for the Bellabeat Capstone project.  

---

## Daily Activity Data
- Sources:  
  - `dailyActivity_merged.csv` from March–April 2016  
  - `dailyActivity_merged.csv` from April–May 2016  
- Actions:  
  - Combined both months (bind_rows).  
  - Converted `ActivityDate` from string to `Date`.  
  - Removed duplicate rows.  
  - Added derived variables:  
    - `ActiveMinutes = VeryActive + FairlyActive + LightlyActive`  
    - `SedentaryRatio = Sedentary / (Sedentary + ActiveMinutes)`  
- Output: `data/cleaned/dailyActivity_all.csv` (1397 rows, 17 columns)

---

## Sleep Data
- Source:  
  - `sleepDay_merged.csv` (available only in April–May 2016)  
- Actions:  
  - Converted `SleepDay` to datetime format.  
  - Removed duplicates.  
  - Added derived variable:  
    - `SleepEfficiency = TotalMinutesAsleep / TotalTimeInBed`  
- Output: `data/cleaned/sleep_all.csv` (410 rows, 6 columns)  
- **Limitation:** No sleep data for March–April. Analysis restricted to April–May.

---

## Weight Data
- Sources:  
  - `weightLogInfo_merged.csv` from both exports (March–April and April–May).  
- Actions:  
  - Combined both months.  
  - Converted `Date` to datetime format.  
  - Removed duplicates.  
- Output: `data/cleaned/weight_all.csv` (98 rows, 8 columns)  
- **Limitation:** Very sparse (only 33 entries in March–April, 65 in April–May).

---

## Notes
- Heart rate data exists but is very large. Left commented out in cleaning script for now.  
- Minute-level and hourly-level datasets not yet processed (optional future work).  