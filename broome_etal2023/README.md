# What a cat loses during weight management — data

## Files

| File | Contents |
|---|---|
| [Broome_2023_project.csv](Broome_2023_project.csv) | Ready-to-load CSV; 116 rows. Clinical weight-management records for 116 cats, retaining weight loss, lean-tissue change and starting-obesity information. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

The cat sheet contains 116 clinical weight-management records. Cats entered a supervised programme rather than being randomly assigned to different degrees of obesity. The file records starting characteristics, diet information and programme outcomes. Before-and-after body-composition measurements were available for 58 cats that completed weight management; the CSV also retains records without those follow-up measurements.

## Prepared tables

All 116 cat records are retained. change_lean, weight_loss and above40 are renamed without recalculation. Missing follow-up measurements remain NA. above40 records starting weight more than 40% above ideal.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source case_number. |
| lean_change | Percentage change in DXA lean tissue; negative = loss. |
| weight_loss | Percentage loss of total body weight. |
| severe_obesity | Source above40: starting weight >40% above ideal; categorical 0/1. Observed categories: no, yes. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Broome, H. A. O., Woods-Lee, G. R. T., Flanagan, J., Biourge, V., & German, A. J. (2023). Weight loss outcomes are generally worse for dogs and cats with class II obesity, defined as > 40% overweight. Scientific Reports, 13(1), 22958. https://doi.org/10.1038/s41598-023-50197-y

**Original data:** Broome, H. A. O., Woods-Lee, G. R. T., Flanagan, J., Biourge, V., & German, A. J. (2023). Supplementary data accompanying ‘Weight loss outcomes are generally worse for dogs and cats with class II obesity, defined as > 40% overweight’ [Dataset; 41598_2023_50197_MOESM1_ESM.xlsx | worksheet cat]. Scientific Reports. https://doi.org/10.1038/s41598-023-50197-y
