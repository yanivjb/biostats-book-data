# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# Keep the first recorded breeding year per mother, before checking missing outcomes.
raw <- read_csv("original_data/WeanMass_BirthMass_AdultMass_Dryad.csv", show_col_types = FALSE)
ready <- raw |> group_by(AnimalID) |> mutate(mother_year_records = n()) |> ungroup() |>
  arrange(AnimalID, BreedYear) |> distinct(AnimalID, .keep_all = TRUE)
write_csv(ready, "ready_data.csv", na = "NA")
