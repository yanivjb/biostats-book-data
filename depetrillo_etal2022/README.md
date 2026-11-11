# Novelty and persistence in the lives of lemurs — data

## Files

| File | Contents |
|---|---|
| [De_Petrillo_2022_project.csv](De_Petrillo_2022_project.csv) | Ready-to-load CSV; 39 rows. Animal-level persistence and novel-object summaries with species information for captive lemurs. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Thirty-nine captive lemurs from four species completed a set of cognitive and behavioural tasks. The original task-interrelations file summarises each animal’s performance and gives its species and sex; the project CSV retains persistence, novel-object and species summaries. Repeated trials have already contributed to these animal-level summaries.

## Prepared tables

The authors’ Persistence and NovelObject duration summaries are renamed. persistence_seconds retains the original duration; log_persistence = ln(1 + persistence_seconds). Species labels are retained.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source CodeID. |
| log_persistence | Natural log of (1 + persistence_seconds). |
| novel_time | Time near a novel object, seconds; a behavioural measure of response to novelty. |
| species | Species identity. Observed categories: Mongoose lemurs, Ring-tailed lemurs, Ruffed lemurs, Sifakas. |
| persistence_seconds | Time manipulating a puzzle box, seconds. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** De Petrillo, F., Nair, P., Cantwell, A., & Rosati, A. G. (2022). The Evolution of Cognitive Control in Lemurs. Psychological Science, 33(9), 1408-1422. https://doi.org/10.1177/09567976221082938

**Original data:** Rosati, Alexandra, De Petrillo, Francesca, Nair, Parvathy, & Cantwell, Averill (2024). Data from: The evolution of cognitive control in lemurs (Version 5) [Dataset]. Dryad. https://doi.org/10.5061/dryad.6hdr7sr2k
