# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# See README.md for the row definition, source codes and missing-value rules.


raw <- read_csv("original_data/55_41598_2023_50197_MOESM1_ESM__cat.csv", na = c("", "NA", "NaN", "null", "N/A"),
                show_col_types = FALSE)

analysis <- raw |>
 transmute(id = case_number, lean_change = change_lean,
           weight_loss = weight_loss, severe_obesity = factor(above40))




analysis <- analysis |> mutate(across(where(is.numeric), ~ if_else(is.finite(.x), .x, NA_real_)))


write_csv(analysis, "Broome_2023_project.csv", na = "NA")
