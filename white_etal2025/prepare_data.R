# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# See README.md for the row definition, source codes and missing-value rules.


raw <- read_csv("original_data/31_All_well_values_output_ALL_STRAINS_BOTH_24_08_23.csv", na = c("", "NA", "NaN", "null", "N/A"),
                show_col_types = FALSE)

analysis <- raw |>
 filter(`Selection temperature` != "A", `Growth temperature` == 30) |>
 group_by(Strain, Species, `Selection temperature`) |>
 summarise(growth = mean(as.numeric(Rcurve), na.rm = TRUE), wells = n(), .groups = "drop") |>
 transmute(id = Strain, log_growth = log(growth), species = factor(Species),
           selection = factor(`Selection temperature`), wells)




analysis$growth_rate <- exp(analysis$log_growth)

analysis <- analysis |> mutate(across(where(is.numeric), ~ if_else(is.finite(.x), .x, NA_real_)))


write_csv(analysis, "White_2025_project.csv", na = "NA")
