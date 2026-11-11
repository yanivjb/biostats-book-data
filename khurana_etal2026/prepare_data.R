# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# See README.md for the row definition, source codes and missing-value rules.


raw <- read_csv("original_data/27_Sample_Information_Manuscript.csv", na = c("", "NA", "NaN", "null", "N/A"),
                show_col_types = FALSE)

analysis <- raw |>
 filter(Disease == "T1D", AER > 0) |>
 transmute(id = Sample_ID, log_albumin = log(AER), hba1c = HbA1c_baseline, pressure = SBP)




analysis$albumin_excretion <- exp(analysis$log_albumin)

analysis <- analysis |> mutate(across(where(is.numeric), ~ if_else(is.finite(.x), .x, NA_real_)))


write_csv(analysis, "Khurana_2026_project.csv", na = "NA")
