# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# Skip the title and empty preamble rows, not the actual column names.
raw <- read_csv("original_data/28_Supplementary_Data_1__clean_master_correct_FD35-38.csv", skip = 2, show_col_types = FALSE)
# FD17 was the contaminated homogenate identified in the source documentation.
analysis <- raw |> filter(`Short ID without zeros` != "FD17")

write_csv(analysis, "Reboul_2025_cat_food_products_clean.csv", na = "NA")
