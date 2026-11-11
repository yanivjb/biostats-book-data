# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# Preserve every source row and measurement; standardise the CSV encoding and missing-value marker.
ready <- read_csv("original_data/Crane_etal2024_cane_toads.csv", na = c("", "NA", "N/A", "NaN"), show_col_types = FALSE)
write_csv(ready, "ready_data.csv", na = "NA")
