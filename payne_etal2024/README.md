# Understanding minds across political divides — data

## Files

| File | Contents |
|---|---|
| [Payne_2024_project.csv](Payne_2024_project.csv) | Ready-to-load CSV; 128 rows. Participant summaries of initial out-group judgment error, with questionnaire scores and contributing-trial counts. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Study 2 involved 128 participants making judgments about others’ views. The analysis file includes repeated judgments, group relationships, accuracy-related measures and questionnaire scores. Participants and target statements can both recur. Recruitment filled equal quotas of Democratic- and Republican-affiliated participants. Forty-three participants were excluded and replaced under preregistered response rules, including too few qualifying trials or never requesting additional information.

## Prepared tables

Initial out-group judgments only. Trial error is abs(Prediction_T1_Numeric − Target_Statement_Ground_Truth_Numeric); mean_error averages it by participant. TAS and AQ scores are copied from the participant’s records; trials is the number of judgments contributing to the summary.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source Participant_ID. |
| mean_error | Mean absolute out-group prediction error on a five-point belief scale; larger = less accurate. |
| emotion_score | Toronto Alexithymia Scale (TAS) score; greater difficulty identifying/describing emotions. |
| autistic_traits | Autism-Spectrum Quotient (AQ) score; self-reported traits, not a diagnosis. |
| trials | Number of initial out-group judgments contributing to the participant mean. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Payne, B., Bird, G., & Catmur, C. (2024). Poorer representation of minds underpins less accurate mental state inference for out-groups. Scientific Reports, 14(1), 19432. https://doi.org/10.1038/s41598-024-67311-3

**Original data:** Payne, B. (n.d.). Predicting the Beliefs and Opinions of In-group and Out-group Members [Data and materials]. OSF. https://osf.io/nfamd/ (accessed 10 November 2026).
