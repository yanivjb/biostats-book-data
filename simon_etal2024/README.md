# Supporting mobility in older dogs — data

## Files

| File | Contents |
|---|---|
| [Simon_2024_project.csv](Simon_2024_project.csv) | Ready-to-load CSV; 69 rows. Baseline and three-month off-leash walking speeds, treatment labels and study identifiers for 69 older dogs. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Older dogs entered a blinded trial with placebo and supplement-dose groups. Owner-reported cognitive measures were recorded at baseline and follow-up. The source sheet also records age, physical condition, eligibility and follow-up information. The project file records baseline and three-month off-leash walking speed. At each visit, walking speed was the mean of three off-leash walks over a 5-metre course.

## Prepared tables

Baseline (Month 0) and Month 3 Off Leash Gait Speed are retained and renamed, in m/s. Each of the 69 records has one study ID. Missing visits remain NA; assigned treatment labels are retained.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source Study ID. |
| followup | Month-3 off-leash gait speed, m/s. |
| baseline | Baseline off-leash gait speed, m/s. |
| treatment | Assigned experimental treatment; categorical, with labels listed below. Observed categories: Full Dose, Low Dose, Placebo. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Simon, K. E., Russell, K., Mondino, A., Yang, C. C., Case, B. C., Anderson, Z., Whitley, C., Griffith, E., Gruen, M. E., & Olby, N. J. (2024). A randomized, controlled clinical trial demonstrates improved owner-assessed cognitive function in senior dogs receiving a senolytic and NAD+ precursor combination. Scientific Reports, 14(1), 12399. https://doi.org/10.1038/s41598-024-63031-w

**Original data:** Simon, K. E., Russell, K., Mondino, A., Yang, C. C., Case, B. C., Anderson, Z., Whitley, C., Griffith, E., Gruen, M. E., & Olby, N. J. (2024). Supplementary data accompanying ‘A randomized, controlled clinical trial demonstrates improved owner-assessed cognitive function in senior dogs receiving a senolytic and NAD+ precursor combination’ [Dataset; 41598_2024_63031_MOESM1_ESM.xlsx | worksheet Raw Data Sheet]. Scientific Reports. https://doi.org/10.1038/s41598-024-63031-w
