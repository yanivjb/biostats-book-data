# The fate of a leaf’s carbon: burning or rotting — data

## Files

| File | Contents |
|---|---|
| [Grootemaat_2015_project.csv](Grootemaat_2015_project.csv) | Ready-to-load CSV; 32 rows. Species-level measurements for fresh green leaves, including ignition time, specific leaf area and other leaf traits. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers studied 32 evergreen perennial species from four Australian sites spanning rainfall and soil-nutrient contrasts. They burned individual leaves under controlled conditions, using fresh green, dried green and senesced material. Decomposition rates came from a common-garden litter experiment. MEANS.csv contains species-by-material summaries; species_list.csv provides taxonomic and site information.

## Prepared tables

Only material = FRESH records were retained. Each row contains the authors’ mean measurements for one species. Ignition time, specific leaf area and their natural logarithms are supplied.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Species name. |
| log_ignition | Natural log of ignition_seconds. |
| moisture | Fresh-leaf moisture content, percent of oven-dry mass. |
| log_sla | Natural log of sla_cm2_g. |
| ignition_seconds | Time to ignition, seconds. |
| sla_cm2_g | Specific leaf area, cm² per g dry mass. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Grootemaat, S., Wright, I. J., van Bodegom, P. M., Cornelissen, J. H. C., & Cornwell, W. K. (2015). Burn or rot: leaf traits explain why flammability and decomposability are decoupled across species. Functional Ecology, 29(11), 1486-1497. https://doi.org/10.1111/1365-2435.12449

**Original data:** Grootemaat, Saskia, Wright, Ian J., van Bodegom, Peter M., Cornelissen, Johannes H. C., & Cornwell, William K. (2016). Data from: Burn or rot: leaf traits explain why flammability and decomposability are decoupled across species (Version 1) [Dataset]. Dryad. https://doi.org/10.5061/dryad.m41f1
