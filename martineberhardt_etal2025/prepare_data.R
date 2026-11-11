# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

raw <- read_csv("original_data/15_CombinedDataset.csv", show_col_types = FALSE)
# Put each matched pair side by side; retain the original component measurements.
analysis <- raw |> select(pairID, morph, preyMass, height, perforation) |>
  pivot_wider(names_from = morph, values_from = c(preyMass, height, perforation)) |>
  mutate(prey_mass_difference_g = preyMass_red - preyMass_green,
    height_difference_cm = height_red - height_green,
    perforation_difference = perforation_red - perforation_green,
    log1p_prey_mass_difference = log1p(1000 * preyMass_red) - log1p(1000 * preyMass_green)) |>
  select(pairID, preyMass_red, preyMass_green, height_red, height_green,
    perforation_red, perforation_green, prey_mass_difference_g,
    height_difference_cm, perforation_difference, log1p_prey_mass_difference)

write_csv(analysis, "Martin-Eberhardt_2025_project.csv", na = "NA")
