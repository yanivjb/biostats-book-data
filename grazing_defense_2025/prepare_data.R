# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# First average the three quadrats in each management area; then pair areas by site.
# Average numeric quadrat measurements, not identifiers or category codes.
grass <- read_csv("original_data/data_defense_traits.csv", show_col_types = FALSE)
areas <- grass |> group_by(Site, Treatment, `Vegetation type`) |>
  summarise(quadrats = n(), across(where(is.numeric) & !any_of("Sample_id"),
       ~ mean(.x, na.rm = TRUE)), .groups = "drop")
ready <- areas |> pivot_wider(id_cols = c(Site, `Vegetation type`),
   names_from = Treatment, values_from = -c(Site, Treatment, `Vegetation type`)) |>
  mutate(phenolics_change_Grazed_minus_Ungrazed = `Phenolics(g kg-1)_Grazed` - `Phenolics(g kg-1)_Ungrazed`,
         silicon_change_Grazed_minus_Ungrazed = `Si (g kg-1)_Grazed` - `Si (g kg-1)_Ungrazed`)
write_csv(ready, "ready_data.csv", na = "NA")
# The species-associated leaf samples are a separate table, not matches to individual quadrats.
leaf <- read_csv("original_data/data_defense_traits_Leaf_Data.csv", show_col_types = FALSE)
write_csv(leaf, "ready_leaf_data.csv", na = "NA")
