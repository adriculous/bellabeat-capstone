# Fitbit Dataset Notes

This dataset comes from Kaggle (Fitabase Fitbit data, 2016).  
It contains two exports: **March–April 2016** and **April–May 2016**, each with the same set of CSVs.

---

## File Inventory

| File Name                       | Description                         | Key Columns (examples)                                   | Notes |
|---------------------------------|-------------------------------------|---------------------------------------------------------|-------|
| dailyActivity_merged.csv        | Daily activity summary              | Id, ActivityDate, TotalSteps, TotalDistance, Calories    | Core dataset for activity & calories burned |
| dailyCalories_merged.csv        | Daily calories burned per day       | Id, ActivityDay, Calories                               | Duplicate info also in dailyActivity |
| dailyIntensities_merged.csv     | Breakdown of activity intensity     | Id, ActivityDay, VeryActiveMinutes, SedentaryMinutes    | Useful for sedentary vs active comparison |
| dailySteps_merged.csv           | Steps per day                       | Id, ActivityDay, StepTotal                              | Duplicate info also in dailyActivity |
| heartrate_seconds_merged.csv    | Heart rate per second               | Id, Time, Value                                         | Very detailed, might be heavy to process |
| hourlyCalories_merged.csv       | Calories burned per hour            | Id, ActivityHour, Calories                              | Granular, could be aggregated to daily |
| hourlyIntensities_merged.csv    | Activity intensity per hour         | Id, ActivityHour, TotalIntensity, AverageIntensity      | Granular |
| hourlySteps_merged.csv          | Steps per hour                      | Id, ActivityHour, StepTotal                             | Granular |
| minuteCaloriesNarrow.csv        | Calories burned per minute (long)   | Id, ActivityMinute, Calories                            | Easier for pivot tables & charts |
| minuteCaloriesWide.csv          | Calories burned per minute (wide)   | Id, Date, 1440 columns (each minute of day)             | Alternative format, harder to use |
| minuteIntensitiesNarrow.csv     | Intensity per minute (long)         | Id, ActivityMinute, Intensity                           | Easier for pivot tables & charts |
| minuteIntensitiesWide.csv       | Intensity per minute (wide)         | Id, Date, 1440 columns (each minute of day)             | Alternative format, harder to use |
| minuteStepsNarrow.csv           | Steps per minute (long)             | Id, ActivityMinute, Steps                               | Easier for pivot tables & charts |
| minuteStepsWide.csv             | Steps per minute (wide)             | Id, Date, 1440 columns (each minute of day)             | Alternative format, harder to use |
| sleepDay_merged.csv             | Sleep data per night                | Id, SleepDay, TotalMinutesAsleep, TotalTimeInBed        | Key dataset for sleep analysis |
| weightLogInfo_merged.csv        | Weight and BMI logs                 | Id, Date, WeightKg, BMI, Fat, IsManualReport            | Very sparse, may have little data |

---

## Notes
- Two time ranges:  
  - Export 1: March 12 – April 11, 2016  
  - Export 2: April 12 – May 12, 2016  
- Each export has the same file names/structures.  
- Main files for analysis will likely be:  
  - `dailyActivity_merged.csv`  
  - `sleepDay_merged.csv`  
  - (Optional) `heartrate_seconds_merged.csv` if performance allows  
- Limitations: Small sample size (30 users), no nutrition input.