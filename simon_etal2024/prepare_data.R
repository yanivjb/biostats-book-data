# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# See README.md for the row definition, source codes and missing-value rules.


raw <- read_csv("original_data/56_41598_2024_63031_MOESM1_ESM__Raw_Data_Sheet.csv", na = c("", "NA", "NaN", "null", "N/A"),
                show_col_types = FALSE, skip = 1)

analysis <- raw |>
 transmute(id = `Study ID`, followup = as.numeric(`Month 3 Off Leash Gait Speed`),
           baseline = as.numeric(`Month 0 Off Leash Gait Speed`), treatment = factor(Treatment))




analysis <- analysis |> mutate(across(where(is.numeric), ~ if_else(is.finite(.x), .x, NA_real_)))


write_csv(analysis, "Simon_2024_project.csv", na = "NA")
