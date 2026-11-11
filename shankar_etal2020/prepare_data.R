# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# See README.md for the row definition, source codes and missing-value rules.


raw <- read_csv("original_data/06_Torpor_individual_summaries.csv", na = c("", "NA", "NaN", "null", "N/A"),
                show_col_types = FALSE)

analysis <- raw |>
 transmute(id = paste(Site, Species, Sp_indiv_no, sep = "_"),
           log_energy = log(NEE_kJ_variableRER), log_mass = log(Mass),
           torpor_hours = if_else(Torpid_not == "N", 0, Hours_torpid), temperature = Tc_mean_C)




analysis$energy_kJ <- exp(analysis$log_energy)

analysis$mass_g <- exp(analysis$log_mass)

analysis <- analysis |> mutate(across(where(is.numeric), ~ if_else(is.finite(.x), .x, NA_real_)))


write_csv(analysis, "Shankar_2020_project.csv", na = "NA")
