############################################################
# make_samples.R
# Create lightweight sample CSVs for GitHub repo
# Author: Adrianne Padua
############################################################

library(dplyr)
library(readr)

set.seed(42)

# Daily Activity
activity_sample <- read_csv("data/cleaned/dailyActivity_all.csv", show_col_types = FALSE) %>%
  slice_sample(n = min(20, nrow(.)))
write_csv(activity_sample, "data/cleaned/dailyActivity.sample.csv")

# Sleep
sleep_sample <- read_csv("data/cleaned/sleep_all.csv", show_col_types = FALSE) %>%
  slice_sample(n = min(10, nrow(.)))
write_csv(sleep_sample, "data/cleaned/sleep.sample.csv")

# Weight
weight_sample <- read_csv("data/cleaned/weight_all.csv", show_col_types = FALSE) %>%
  slice_sample(n = min(10, nrow(.)))
write_csv(weight_sample, "data/cleaned/weight.sample.csv")

message("✅ Sample files created in data/cleaned/:")
print(list.files("data/cleaned", pattern = "sample.csv$"))