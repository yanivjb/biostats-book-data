# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# See README.md for the row definition, source codes and missing-value rules.


raw <- read_csv("original_data/43_CreativeCollabAI_Study2.csv", na = c("", "NA", "NaN", "null", "N/A"),
                show_col_types = FALSE)

analysis <- raw |>
 transmute(id = row_number(), creativity = expert_creativity,
           condition = factor(condition, levels = c(1, 2, 3),
                              labels = c("Human", "AI editor", "AI co-creator")), age = age)




analysis <- analysis |> mutate(across(where(is.numeric), ~ if_else(is.finite(.x), .x, NA_real_)))


write_csv(analysis, "McGuire_2024_project.csv", na = "NA")
