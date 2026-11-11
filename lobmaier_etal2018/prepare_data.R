# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# See README.md for the row definition, source codes and missing-value rules.


raw <- read_csv("original_data/04_BodyOdour_Homrones_Data.csv", na = c("", "NA", "NaN", "null", "N/A"),
                show_col_types = FALSE)

analysis <- raw |>
 mutate(id = str_remove(Donor, "_[0-9]+$")) |>
 filter(Not_perceivable == 0) |>
 group_by(id) |>
 summarise(attractiveness = mean(`Attractiveness Rating`, na.rm = TRUE),
           estrogen = first(log_Donor_E), progesterone = first(log_Donor_P),
           ratings = n(), .groups = "drop")




analysis <- analysis |> mutate(across(where(is.numeric), ~ if_else(is.finite(.x), .x, NA_real_)))


write_csv(analysis, "Lobmaier_2018_project.csv", na = "NA")
