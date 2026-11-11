# Sleep and the consolidation of a learned skill — data

## Files

| File | Contents |
|---|---|
| [Boutin_2024_project.csv](Boutin_2024_project.csv) | Ready-to-load CSV; 20 rows. Participant-level motor-performance and sleep-spindle summaries from the NREM2 worksheet for 20 participants. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Healthy young adults learned a finger-tapping sequence, slept while EEG was recorded in an MRI scanner, and completed a later retention session. Screening, sleep requirements and recording-quality exclusions reduced the original 33 volunteers to 20 analysed participants. The NREM2 worksheet provides already processed participant-level spindle and performance summaries; raw EEG recordings are not included in the project CSV. EEG-fMRI sleep recordings lasted up to 2 hours 15 minutes, after which participants could finish sleeping in a nearby sleep laboratory.

## Prepared tables

The NREM2 worksheet was retained without cross-sheet joins. id is an added row identifier, not a verified participant key for other worksheets. Performance change, spindle-train length and spindle density are the authors’ processed summaries.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Added row identifier for the NREM2 summary. |
| improvement | Motor-sequence performance change from delayed 15-minute test to 24-hour retest, percent. |
| train_length | Mean number of NREM2 sleep spindles per spindle train. |
| density | NREM2 sleep spindles per minute. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Boutin, A., Gabitov, E., Pinsard, B., Boré, A., Carrier, J., & Doyon, J. (2024). Temporal cluster-based organization of sleep spindles underlies motor memory consolidation. Proceedings of the Royal Society B: Biological Sciences, 291(2014), 20231408. https://doi.org/10.1098/rspb.2023.1408

**Original data:** Boutin, Arnaud, Gabitov, Ella, Pinsard, Basile, Boré, Arnaud, Carrier, Julie, & Doyon, Julien (2024). Temporal cluster-based organisation of sleep spindles underlies motor memory consolidation (Version 5) [Dataset]. Dryad. https://doi.org/10.5061/dryad.nk98sf7xx
