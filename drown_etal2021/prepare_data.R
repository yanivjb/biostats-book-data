# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# Place both acclimation records side by side, preserving all original measurements.
# Conflicting labels are retained by temperature; common labels are NA if records disagree.
raw <- read_csv("original_data/Drown_physiological_plasticity_2021.csv", show_col_types = FALSE)
stopifnot(!anyDuplicated(raw[c("Fish_ID", "Aclclimation_Temp")]))
labels <- raw |> group_by(Fish_ID) |>
  summarise(across(c(Population, Sex, Acclimation_Order, Habitat_temp),
     ~ if (n_distinct(.x, na.rm = TRUE) == 1) first(na.omit(.x)) else NA),
    label_conflict = any(n_distinct(Population, na.rm = TRUE) > 1,
                         n_distinct(Sex, na.rm = TRUE) > 1,
                         n_distinct(Acclimation_Order, na.rm = TRUE) > 1), .groups = "drop")
ready <- raw |> pivot_wider(id_cols = Fish_ID, names_from = Aclclimation_Temp,
    values_from = -c(Fish_ID, Aclclimation_Temp), names_sep = "_") |>
  left_join(labels, by = "Fish_ID", relationship = "one-to-one") |>
  mutate(CTMax_change_28_minus_12 = CTMax_28 - CTMax_12)
write_csv(ready, "ready_data.csv", na = "NA")
