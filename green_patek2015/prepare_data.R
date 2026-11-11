# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# See README.md for the row definition, source codes and missing-value rules.


raw <- read_csv("original_data/03_Green_Patek_SuppData_MorphForce.csv", na = c("", "NA", "NaN", "null", "N/A"),
                show_col_types = FALSE, skip = 1)

analysis <- raw |>
 transmute(id = `Animal ID`, log_force = log(`Maximum Strike Force (N)`),
           log_body = log(`Body Length (mm)`), log_relative_merus = log(`Merus Length (mm)` / `Body Length (mm)`))




analysis$force_N <- exp(analysis$log_force)

analysis$body_length_mm <- exp(analysis$log_body)

analysis$relative_merus <- exp(analysis$log_relative_merus)

analysis <- analysis |> mutate(across(where(is.numeric), ~ if_else(is.finite(.x), .x, NA_real_)))


write_csv(analysis, "Green_2015_project.csv", na = "NA")
