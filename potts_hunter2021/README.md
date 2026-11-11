# Milkweed families in different growing places — data

## Files

| File | Contents |
|---|---|
| [Potts_2021_project.csv](Potts_2021_project.csv) | Ready-to-load CSV; 45 rows. Week-10 height measurements from 45 milkweed plants, retaining maternal-family and transplant-location labels. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

The reciprocal transplant grew offspring from three maternal lines at three locations within one Michigan population, with five seedlings per line–location combination: 45 plants. Each line grew both at its home site and at the other sites. Plants were measured repeatedly through the growing season. The project CSV retains the Week-10 height measurement for each plant. Each family consists of seedlings sharing a maternal parent. At each location, plants grew in soil collected there, in a randomised grid with 0.5-metre spacing.

## Prepared tables

Only Week 10 records were retained, one row for each of 45 plants. The source full-stop (.) missing-height code was changed to NA. family is the source Genotype label and site is Site.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source plantid. |
| height | Week-10 milkweed height, original ht measurement (cm). |
| family | Maternal family (source Genotype); categorical, not a sequenced genotype. Observed categories: 14, 20, 44. |
| site | Transplant site; categorical. Observed categories: RT14, RT20, RT44. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Potts, A. S. & Hunter, M. D. (2021). Unraveling the roles of genotype and environment in the expression of plant defense phenotypes. Ecology and Evolution, 11(13), 8542-8561. https://doi.org/10.1002/ece3.7639

**Original data:** Potts, Abigail, & Hunter, Mark (2022). Unraveling the roles of genotype and environment in the expression of plant defense phenotypes (Version 2) [Dataset]. Dryad. https://doi.org/10.5061/dryad.rv15dv47x
