# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# See README.md for the row definition, source codes and missing-value rules.


raw <- read_csv("original_data/40_x1a_Regression.csv", na = c("", "NA", "NaN", "null", "N/A"),
                show_col_types = FALSE)

earlier <- raw |>
 filter(Stim_Type == "old_img", Phase == "1") |>
 group_by(UserID, Age) |>
 summarise(earlier_recognition = mean(Memory_Correct), .groups = "drop")
later <- raw |>
 filter(Stim_Type == "old_img", Phase == "3") |>
 group_by(UserID, Reward_Category) |>
 summarise(hits = mean(Memory_Correct), .groups = "drop") |>
 pivot_wider(names_from = Reward_Category, names_prefix = "reward", values_from = hits)
analysis <- earlier |>
 inner_join(later, by = "UserID") |>
 transmute(id = UserID, high_reward_hit_rate = reward1, low_reward_hit_rate = `reward-1`, reward_advantage = 100 * (reward1 - `reward-1`),
           age = as.numeric(Age), earlier_recognition)




analysis <- analysis |> mutate(across(where(is.numeric), ~ if_else(is.finite(.x), .x, NA_real_)))


write_csv(analysis, "Sukumaran_2023_project.csv", na = "NA")
