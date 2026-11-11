# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# Average left/right measurements within specimens, then specimens within species.
# An available eye can contribute when the other eye is missing; all-missing stays NA.
specimens <- read_csv("original_data/Thomas_museum_specimens.csv", show_col_types = FALSE)
traits <- read_csv("original_data/Thomas_species_traits.csv", show_col_types = FALSE)
stopifnot(!anyDuplicated(traits[c("Genus", "Species")]))
measurements <- specimens |>
  mutate(eye_mm = rowMeans(pick(ED_right_mm, ED_left_mm), na.rm = TRUE),
         cornea_mm = rowMeans(pick(CD_right_mm, CD_left_mm), na.rm = TRUE)) |>
  group_by(Genus, Species) |>
  summarise(specimens = n(),
    across(c(eye_mm, cornea_mm, SVL_mm, Mass_g),
      list(mean = ~ mean(.x, na.rm = TRUE), n = ~ sum(is.finite(.x))),
      .names = "{.col}_{.fn}"), .groups = "drop") |>
  mutate(across(where(is.numeric), ~ if_else(is.nan(.x), NA_real_, as.numeric(.x))))
ready <- left_join(measurements, traits, by = c("Genus", "Species"), relationship = "one-to-one")
stopifnot(nrow(ready) == nrow(traits))
write_csv(ready, "ready_data.csv", na = "NA")
