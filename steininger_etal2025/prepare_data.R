# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# See README.md for the row definition, source codes and missing-value rules.


raw <- read_csv("original_data/36_immediate_ratings.csv", na = c("", "NA", "NaN", "null", "N/A"),
                show_col_types = FALSE)

analysis <- raw |>
 filter(rating_content == "int") |>
 group_by(subject, gender, video) |>
 summarise(pain = mean(rating_value), .groups = "drop") |>
 pivot_wider(names_from = video, values_from = pain) |>
 transmute(id = subject, nature_pain = Nature, urban_pain = Urban, nature_benefit = Urban - Nature,
           neutral_pain = xNeutral, gender = factor(gender))




analysis <- analysis |> mutate(across(where(is.numeric), ~ if_else(is.finite(.x), .x, NA_real_)))


write_csv(analysis, "Steininger_2025_project.csv", na = "NA")
