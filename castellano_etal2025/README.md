# Stress, emotion and the point at which heat hurts — data

## Files

| File | Contents |
|---|---|
| [Castellano_2025_project.csv](Castellano_2025_project.csv) | Ready-to-load CSV; 41 rows. One participant record with heat-pain threshold, perceived-stress and anxiety scores. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Forty-one healthy young volunteers supplied questionnaire scores and underwent thermal pain-threshold testing. The study also recorded EEG; the project CSV contains participant-level psychological and pain measurements.

## Prepared tables

One record per participant, with thermal pain threshold, PSS_TOT and STAI_TOT renamed. No questionnaire item scores were newly calculated.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source Participant identifier. |
| threshold | Thermal pain threshold, degrees C; temperature reported as painful. |
| stress | Perceived Stress Scale total (PSS_TOT); higher = greater reported stress. |
| anxiety | State-Trait Anxiety Inventory total (STAI_TOT); higher = greater reported anxiety. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Castellano, P., Leu, C., Mazzetti, M., & Liberati, G. (2025). Using fast periodic visual stimulation to investigate the processing of health-related images in the human brain. Scientific Reports, 15(1), 45597. https://doi.org/10.1038/s41598-025-29515-z

**Original data:** Leu, C., Castellano, P., & Liberati, G. (n.d.). Fast periodic visual stimulation to study the processing of health-related images in the human brain [Data and materials]. OSF. https://osf.io/9423j/ (accessed 10 November 2026).
