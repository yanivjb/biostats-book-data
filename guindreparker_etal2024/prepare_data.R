# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# Summarise eggs within each nest/year/attempt, then keep the first recorded attempt per nest/year.
# Nest numbers alone are not used to combine different years.
raw <- read_csv("original_data/egg.csv", na = c("", "NA", "N/A", "n/a"), show_col_types = FALSE)
attempts <- raw |> mutate(lay_date = lubridate::dmy(`Lay date`), year = lubridate::year(lay_date)) |>
  group_by(`Urbanization Status`, Nest.ID, year, `Nest Attempt`) |>
  summarise(egg_records = n(), clutch_size = first(`Clutch size`),
    first_lay_date = min(lay_date, na.rm = TRUE),
    mean_mass_g = mean(`Mass (g)`, na.rm = TRUE),
    n_mass = sum(!is.na(`Mass (g)`)),
    mean_length_mm = mean(`Length (mm)`, na.rm = TRUE),
    n_length = sum(!is.na(`Length (mm)`)),
    mean_width_mm = mean(`Width (mm)`, na.rm = TRUE),
    n_width = sum(!is.na(`Width (mm)`)),
    mean_egg_age_days = mean(`Egg Age (days)`, na.rm = TRUE), .groups = "drop")
ready <- attempts |> arrange(`Urbanization Status`, Nest.ID, year, `Nest Attempt`) |>
  distinct(`Urbanization Status`, Nest.ID, year, .keep_all = TRUE) |>
  mutate(across(where(is.numeric), ~ if_else(is.nan(.x), NA_real_, as.numeric(.x))))
write_csv(ready, "ready_data.csv", na = "NA")
