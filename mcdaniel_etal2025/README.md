# What happens to a creative idea during a break? — data

## Files

| File | Contents |
|---|---|
| [McDaniel_2025_project.csv](McDaniel_2025_project.csv) | Ready-to-load CSV; 200 rows. Participant-level creative-writing ratings before and after the break, with task and exposure-condition labels. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Two hundred participants completed a creative-writing study with different incubation activities and task instructions. Stories before and after the break were evaluated by human raters. The table contains participant characteristics, experimental conditions, and separate ratings.

## Prepared tables

All 200 participant records are retained. before and after are each the arithmetic mean of three human-rater scores. A missing component makes that timepoint mean NA. task and exposure retain source conditions. No GPT ratings were substituted.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source participant id. |
| before | Mean of three human creativity ratings before incubation. |
| after | Mean of three human creativity ratings after incubation, same scale. |
| task | Assigned incubation-task condition; categorical. Observed categories: 0-back, 2-back, mindfulness, noIncubation. |
| exposure | Assigned prior-exposure condition; categorical. Observed categories: new, repeated. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** McDaniel, C., Habibi, A., & Kaplan, J. (2025). Mind wandering during creative incubation predicts increases in creative performance in a writing task. Scientific Reports, 15(1), 24629. https://doi.org/10.1038/s41598-025-09736-y

**Original data:** McDaniel, C., Habibi, A., & Kaplan, J. (n.d.). Influence of mind wandering on artistic creativity [Data and materials]. OSF. https://osf.io/qg6c7/ (accessed 10 November 2026).
