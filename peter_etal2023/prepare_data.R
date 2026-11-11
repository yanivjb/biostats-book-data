# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# Keep the earliest dated capture of each marked bird, before inspecting missing outcomes.
raw <- read_csv("original_data/data_PESA.csv", show_col_types = FALSE)
ready <- raw |> mutate(sample_date = lubridate::ymd(date_)) |>
  group_by(ID) |> mutate(capture_records = n()) |> ungroup() |>
  arrange(ID, sample_date) |> distinct(ID, .keep_all = TRUE)
write_csv(ready, "ready_data.csv", na = "NA")
