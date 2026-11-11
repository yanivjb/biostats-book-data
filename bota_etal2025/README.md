# Bat faeces, microbes and a carnivorous plant — data

## Files

| File | Contents |
|---|---|
| [Bota_2025_project.csv](Bota_2025_project.csv) | Ready-to-load CSV; 24 rows. Youngest-leaf mass and food, digestive-fluid and experimental-set labels for 24 pitcher plants. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Twenty-four Nepenthes hemsleyana plants were studied at one Bornean site. Each supplied two young pitchers. Plants received bat faeces or arthropod food daily for eight weeks, with or without UV treatment of the digestive fluid. Six sets, each containing the four treatment combinations, began at different times. Youngest-leaf and plant-growth tables retain plant identity and set.

## Prepared tables

One youngest-leaf measurement is supplied for each of 24 plants. One leaf mass is missing. prey and microbes retain the assigned food and UV treatments; block is the experimental set.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source plant.id. |
| leaf_mass | Youngest-leaf dry mass, g. |
| prey | Assigned food type; categorical. Observed categories: Arthropods, Faeces. |
| microbes | Assigned UV treatment; categorical. UV perturbs microbes but may also have direct effects. Observed categories: nonsterile, sterile. |
| block | Experimental set; categorical blocking variable. Observed categories: 1, 2, 3, 4, 5, 6. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Bota, J. L., Baum, C., Gawronski, S., Grafe, T. U., Kerth, G., Schöner, M. G., & Schöner, C. R. (2025). UV treatment of the digestive fluid of Nepenthes hemsleyana pitcher plants affects their digestive process, possibly via reducing microbial inquilines. Oecologia, 207(7), 108. https://doi.org/10.1007/s00442-025-05749-6

**Original data:** Bota, Julien, Baum, Christel, Gawronski, Sofie, Grafe, T. Ulmar, Kerth, Gerald, Schöner, Michael, & Schöner, Caroline (2025). UV treatment of the digestive fluid of Nepenthes hemsleyana pitcher plants affects their digestive process, possibly via reducing microbial inquilines (Version 8) [Dataset]. Dryad. https://doi.org/10.5061/dryad.00000009p
