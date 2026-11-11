# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

raw <- read_csv("original_data/11_Rittelmann-WoodsEtAl_2023_MPEffectsOnPlants_Data.csv", show_col_types = FALSE)
# Preserve all 48 prespecified carrot pots and every factorial column.
analysis <- raw |> filter(Species == "Dau_car")

write_csv(analysis, "Rittelmann-Woods_2023_Daucus_carota_48pots.csv", na = "NA")
