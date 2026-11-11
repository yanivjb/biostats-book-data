# Data preparation only; no model fitting or results.
# With tidyverse installed, run from this dataset folder:
#   Rscript prepare_data.R
# Also supports: Rscript path/to/this/folder/prepare_data.R
args <- commandArgs(trailingOnly = FALSE)
script <- sub("^--file=", "", args[grepl("^--file=", args)])
if (length(script)) setwd(dirname(normalizePath(gsub("~+~", " ", script, fixed = TRUE))))
suppressPackageStartupMessages(library(tidyverse))

# Attach farm/sex environmental summaries without duplicating individual bees.
bees <- read_csv("original_data/Jones-et-al_Raw_Individual_Data.csv", show_col_types = FALSE)
sites <- read_csv("original_data/Jones-et-al_Raw_Site_Data.csv", show_col_types = FALSE)
stopifnot(!anyDuplicated(sites[c("Site", "Sex")]))
ready <- left_join(bees, sites, by = c("Site", "Sex"),
                   suffix = c("", "_site_summary"), relationship = "many-to-one")
stopifnot(nrow(ready) == nrow(bees))
write_csv(ready, "ready_data.csv", na = "NA")
