# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# See README.md for the row definition, source codes and missing-value rules.


raw <- read_csv("original_data/05_MEANS.csv", na = c("", "NA", "NaN", "null", "N/A"),
                show_col_types = FALSE)

analysis <- raw |>
 filter(material == "FRESH") |>
 transmute(id = species, log_ignition = log(`TTI (s)`), moisture = `FMC (%odw)`,
           log_sla = log(`SLA* (cm2/g)`))




analysis$ignition_seconds <- exp(analysis$log_ignition)

analysis$sla_cm2_g <- exp(analysis$log_sla)

analysis <- analysis |> mutate(across(where(is.numeric), ~ if_else(is.finite(.x), .x, NA_real_)))


write_csv(analysis, "Grootemaat_2015_project.csv", na = "NA")
