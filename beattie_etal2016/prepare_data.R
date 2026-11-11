# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# See README.md for the row definition, source codes and missing-value rules.


raw <- read_csv("original_data/12_S2_exp2data__Sheet1.csv", na = c("", "NA", "NaN", "null", "N/A"),
                show_col_types = FALSE, skip = 1)

analysis <- raw |>
 transmute(id = row_number(), accuracy = `overall percent correct`,
           sleep_hours = `sleep average`, sleepiness = KSS)




analysis <- analysis |> mutate(across(where(is.numeric), ~ if_else(is.finite(.x), .x, NA_real_)))


write_csv(analysis, "Beattie_2016_project.csv", na = "NA")
