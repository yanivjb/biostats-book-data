# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# See README.md for the row definition, source codes and missing-value rules.


raw <- read_csv("original_data/44_PR_Study2_Data.csv", na = c("", "NA", "NaN", "null", "N/A"),
                show_col_types = FALSE)

analysis <- raw |>
 filter(Group_Status == "out-group") |>
 mutate(error = abs(Prediction_T1_Numeric - Target_Statement_Ground_Truth_Numeric)) |>
 group_by(Participant_ID) |>
 summarise(mean_error = mean(error), emotion_score = first(TAS_Score),
           autistic_traits = first(AQ_Score), trials = n(), .groups = "drop") |>
 rename(id = Participant_ID)




analysis <- analysis |> mutate(across(where(is.numeric), ~ if_else(is.finite(.x), .x, NA_real_)))


write_csv(analysis, "Payne_2024_project.csv", na = "NA")
