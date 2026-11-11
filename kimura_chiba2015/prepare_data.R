# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# See README.md for the row definition, source codes and missing-value rules.


raw <- read_csv("original_data/14_sperm.mass_KKSC2015PRSB__Sheet1.csv", na = c("", "NA", "NaN", "null", "N/A"),
                show_col_types = FALSE)

analysis <- raw |>
 filter(MO == "1st", STC %in% c("from virgin", "from nonvirgin")) |>
 transmute(id = ID, sperm_mass = SMW, body_size = BS, partner = factor(STC))




analysis <- analysis |> mutate(across(where(is.numeric), ~ if_else(is.finite(.x), .x, NA_real_)))


write_csv(analysis, "Kimura_2015_project.csv", na = "NA")
