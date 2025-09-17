############################################################
# Bellabeat Capstone - Step 3: Process (Data Cleaning)
# Author: Adrianne Padua
# Date: 2025-09-17
# Description:
#   This script loads, cleans, and merges Fitbit datasets
#   from March–May 2016. Cleaned outputs are saved into
#   data/cleaned/ for later analysis & visualization.
############################################################

# --- Load libraries ---
library(tidyverse)   # dplyr, ggplot2, readr
library(lubridate)   # date/time parsing

# --- Load Daily Activity data ---
activity1 <- read_csv("data/raw/fitbit_dataset/mturkfitbit_export_3.12.16-4.11.16/Fitabase Data 3.12.16-4.11.16/dailyActivity_merged.csv")
activity2 <- read_csv("data/raw/fitbit_dataset/mturkfitbit_export_4.12.16-5.12.16/Fitabase Data 4.12.16-5.12.16/dailyActivity_merged.csv")

daily_activity <- bind_rows(activity1, activity2) %>%
  mutate(ActivityDate = mdy(ActivityDate)) %>%  # convert dates
  distinct()                                   # remove duplicates

# Add derived columns
daily_activity <- daily_activity %>%
  mutate(
    ActiveMinutes = VeryActiveMinutes + FairlyActiveMinutes + LightlyActiveMinutes,
    SedentaryRatio = SedentaryMinutes / (SedentaryMinutes + ActiveMinutes)
  )

# Save cleaned version
write_csv(daily_activity, "data/cleaned/dailyActivity_all.csv")

# --- Load Sleep data (only April–May available) ---
sleep2 <- read_csv("data/raw/fitbit_dataset/mturkfitbit_export_4.12.16-5.12.16/Fitabase Data 4.12.16-5.12.16/sleepDay_merged.csv")

sleep_all <- sleep2 %>%
  mutate(SleepDay = mdy_hms(SleepDay)) %>%   # has datetime format
  distinct() %>%
  mutate(SleepEfficiency = TotalMinutesAsleep / TotalTimeInBed)

# Save cleaned version
write_csv(sleep_all, "data/cleaned/sleep_all.csv")

# --- Load Weight data ---
weight1 <- read_csv("data/raw/fitbit_dataset/mturkfitbit_export_3.12.16-4.11.16/Fitabase Data 3.12.16-4.11.16/weightLogInfo_merged.csv")
weight2 <- read_csv("data/raw/fitbit_dataset/mturkfitbit_export_4.12.16-5.12.16/Fitabase Data 4.12.16-5.12.16/weightLogInfo_merged.csv")

weight_all <- bind_rows(weight1, weight2) %>%
  mutate(Date = mdy_hms(Date)) %>%
  distinct()

# Save cleaned version
write_csv(weight_all, "data/cleaned/weight_all.csv")

# --- (Optional) Load Heart Rate data ---
# ⚠️ Very large files, may slow RStudio
# Uncomment if you want to explore later
# hr1 <- read_csv("data/raw/fitbit_dataset/mturkfitbit_export_3.12.16-4.11.16/Fitabase Data 3.12.16-4.11.16/heartrate_seconds_merged.csv")
# hr2 <- read_csv("data/raw/fitbit_dataset/mturkfitbit_export_4.12.16-5.12.16/Fitabase Data 4.12.16-5.12.16/heartrate_seconds_merged.csv")
# heartrate_all <- bind_rows(hr1, hr2) %>% distinct()
# write_csv(heartrate_all, "data/cleaned/heartrate_all.csv")

############################################################
# End of Script
# Cleaned datasets saved in: data/cleaned/
# Next Step: Step 4 (Analyze) - Explore trends and visualize
############################################################