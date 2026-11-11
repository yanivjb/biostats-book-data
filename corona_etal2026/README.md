# Smelling and exploring as a dog grows older — data

## Files

| File | Contents |
|---|---|
| [Corona_2026_project.csv](Corona_2026_project.csv) | Ready-to-load CSV; 65 rows. Dog-level age, body mass and mean initial odour-interaction duration, with a supplied logarithm of that duration. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

The cross-sectional table contains 65 dogs tested with a standard odour battery. It records age, body weight, sex and measures of habituation and interaction with individual odours. A separate key defines the assay measures. Odours were presented for 30 seconds in a repeated-presentation sequence, and interaction times were measured from video. The project CSV summarises each dog’s initial interactions with the 16 retained odours.

## Prepared tables

The 16 initial-interaction-duration columns beginning IID: are averaged for each dog. A missing component makes the mean NA. smell_time is this mean in seconds; log_smell_time = ln(1 + smell_time). Age in months and body mass in kg are retained.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source Assigned ID. |
| age_months | Dog age, months. |
| mass | Dog body mass, kg. |
| smell_time | Mean initial odour-interaction duration across 16 IID odours, seconds. |
| log_smell_time | Natural log of (1 + smell_time). |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Corona, A. C., Harrison, H., Hopper, R. G., Smith, A. L., Rogers, C. M., Cook, C. L., Salzman, M. M., Peterson, K. D., Hall, N. J., & Mowat, F. M. (2026). Reliability, repeatability, and age associations of the dogSIT (dog Smell Interaction Test) battery in untrained companion dogs (Canis lupus familiaris). Scientific Reports, 16(1), 26518. https://doi.org/10.1038/s41598-026-59321-0

**Original data:** Corona, A. C., Harrison, H., Hopper, R. G., Smith, A. L., Rogers, C. M., Cook, C. L., Salzman, M. M., Peterson, K. D., Hall, N. J., & Mowat, F. M. (2026). Supplementary data accompanying ‘Reliability, repeatability, and age associations of the dogSIT (dog Smell Interaction Test) battery in untrained companion dogs (Canis lupus familiaris)’ [Dataset; 41598_2026_59321_MOESM1_ESM.xlsx | worksheet cross sectional age]. Scientific Reports. https://doi.org/10.1038/s41598-026-59321-0
