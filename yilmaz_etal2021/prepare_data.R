# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# Each colony has separate heat-tested and cold-tested animals.
# Summarise each endpoint separately before placing the two summaries side by side.
raw <- read_csv("original_data/isopod_thermal_tolerance.csv", show_col_types = FALSE)
ready <- raw |> group_by(colonyID, site, habitat, treatment, isa, thermal.tolerance.trait) |>
  summarise(mean_tolerance_C = mean(thermal.tolerance, na.rm = TRUE),
    animals = n(), measured_tolerance = sum(!is.na(thermal.tolerance)),
    mean_age_days = mean(age.days, na.rm = TRUE),
    mean_initial_weight_g = mean(initial.weight, na.rm = TRUE), .groups = "drop") |>
  pivot_wider(id_cols = c(colonyID, site, habitat, treatment, isa),
    names_from = thermal.tolerance.trait,
    values_from = c(mean_tolerance_C, animals, measured_tolerance, mean_age_days, mean_initial_weight_g))
write_csv(ready, "ready_data.csv", na = "NA")
