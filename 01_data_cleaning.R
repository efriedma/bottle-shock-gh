# 01_data_cleaning.R
# Data import and preparation

library(dplyr)

# Set relative path to data
data_path <- file.path(base_path, "data", "red wine data.csv")

reds <- read.csv(data_path, stringsAsFactors = FALSE)
names(reds) <- tolower(gsub("\\.", "_", names(reds)))
ivs_reds <- reds %>% select(-quality)
dv_reds <- reds$quality

saveRDS(ivs_reds, file = file.path(base_path, "data", "ivs_reds.rds"))
saveRDS(dv_reds, file = file.path(base_path, "data", "dv_reds.rds"))
