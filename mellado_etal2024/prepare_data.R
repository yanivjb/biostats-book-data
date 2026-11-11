# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# Read the source comment/header and keep each bat's earliest recorded adult capture.
# Restrict age first, then choose the date, before checking missing measurements.
raw <- read_tsv("original_data/bmass.txt", skip = 1, show_col_types = FALSE)
ready <- raw |> mutate(capture_month = lubridate::ym(str_replace(YearMon, "_", "-"))) |>
  group_by(ID) |> mutate(capture_records = n()) |> ungroup() |>
  filter(AgeCat == "AD") |> arrange(ID, capture_month) |> distinct(ID, .keep_all = TRUE)
write_csv(ready, "ready_data.csv", na = "NA")
