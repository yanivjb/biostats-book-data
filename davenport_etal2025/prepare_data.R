# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# Retain every animal and all four assay days as columns, rather than selecting one day.
raw <- read_csv("original_data/BodyLength.csv", show_col_types = FALSE)
stopifnot(!anyDuplicated(raw[c("Individual", "Day")]))
ready <- raw |> pivot_wider(id_cols = c(Individual, Treatment, Food.Level),
  names_from = Day, values_from = c(Body.Length, Date), names_glue = "{.value}_day{Day}")
write_csv(ready, "ready_data.csv", na = "NA")
