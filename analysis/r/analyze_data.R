############################################################
# Bellabeat Capstone - Step 4: Analyze (Exploratory Analysis)
# Author: Adrianne Padua
# Date: 2025-09-17
# Description:
#   Loads cleaned Fitbit datasets and performs EDA.
#   Plots are automatically saved into visuals/ subfolders.
############################################################

# --- Load libraries ---
library(tidyverse)
library(lubridate)

# --- Set options ---
options(dplyr.summarise.inform = FALSE)

# --- Ensure subfolders exist ---
dir.create("visuals/activity", recursive = TRUE, showWarnings = FALSE)
dir.create("visuals/sleep", recursive = TRUE, showWarnings = FALSE)
dir.create("visuals/weight", recursive = TRUE, showWarnings = FALSE)
dir.create("visuals/cross", recursive = TRUE, showWarnings = FALSE)

# --- Helper function to save plots ---
save_plot <- function(plot, subfolder, filename, width = 7, height = 5) {
  ggsave(
    filename = file.path("visuals", subfolder, filename),
    plot = plot,
    width = width,
    height = height,
    dpi = 300
  )
}

# --- Load cleaned data ---
daily_activity <- read_csv("data/cleaned/dailyActivity_all.csv")
sleep_all      <- read_csv("data/cleaned/sleep_all.csv")
weight_all     <- read_csv("data/cleaned/weight_all.csv")

############################################################
# 1. Daily Activity
############################################################
summary_steps <- daily_activity %>%
  summarise(
    avg_steps = mean(TotalSteps, na.rm = TRUE),
    median_steps = median(TotalSteps, na.rm = TRUE),
    pct_10k = mean(TotalSteps >= 10000) * 100
  )
print(summary_steps)

plot_steps_calories <- ggplot(daily_activity, aes(x = TotalSteps, y = Calories)) +
  geom_point(alpha = 0.5, color = "steelblue") +
  geom_smooth(method = "lm", se = FALSE, color = "darkred") +
  labs(title = "Steps vs Calories Burned", x = "Total Steps", y = "Calories Burned")
save_plot(plot_steps_calories, "activity", "steps_vs_calories.png")

plot_sedentary <- ggplot(daily_activity, aes(x = SedentaryRatio)) +
  geom_histogram(binwidth = 0.05, fill = "lightblue", color = "black") +
  labs(title = "Distribution of Sedentary Ratio",
       x = "Sedentary Minutes / (Sedentary + Active)", y = "Count of Days")
save_plot(plot_sedentary, "activity", "sedentary_ratio_hist.png")

############################################################
# 2. Sleep (April–May only)
############################################################
summary_sleep <- sleep_all %>%
  summarise(
    avg_sleep = mean(TotalMinutesAsleep, na.rm = TRUE) / 60,
    median_sleep = median(TotalMinutesAsleep, na.rm = TRUE) / 60,
    pct_7hr = mean((TotalMinutesAsleep/60) >= 7) * 100
  )
print(summary_sleep)

plot_sleep_eff <- ggplot(sleep_all, aes(x = TotalMinutesAsleep/60, y = SleepEfficiency)) +
  geom_point(alpha = 0.5, color = "purple") +
  geom_smooth(method = "lm", se = FALSE, color = "darkgreen") +
  labs(title = "Sleep Efficiency vs Minutes Asleep",
       x = "Minutes Asleep (hours)", y = "Sleep Efficiency")
save_plot(plot_sleep_eff, "sleep", "sleep_efficiency_vs_minutes.png")

############################################################
# 3. Weight (sparse)
############################################################
weight_logs <- n_distinct(weight_all$Id)
print(paste("Unique users with weight logs:", weight_logs))

plot_bmi <- ggplot(weight_all, aes(x = BMI)) +
  geom_histogram(binwidth = 1, fill = "pink", color = "black") +
  labs(title = "Distribution of BMI (Logged Users)", x = "BMI", y = "Count")
save_plot(plot_bmi, "weight", "bmi_distribution.png")

############################################################
# 4. Cross-Dataset Analysis
############################################################
activity_sleep <- daily_activity %>%
  inner_join(sleep_all, by = c("Id" = "Id", "ActivityDate" = "SleepDay"))

plot_steps_sleep <- ggplot(activity_sleep, aes(x = TotalSteps, y = TotalMinutesAsleep/60)) +
  geom_point(alpha = 0.5, color = "orange") +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = "Steps vs Sleep Duration", x = "Total Steps", y = "Sleep Duration (hours)")
save_plot(plot_steps_sleep, "cross", "steps_vs_sleep.png")

############################################################
# End of Script
############################################################