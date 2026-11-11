# Everyday sleep and the challenge of recognising faces — data

## Files

| File | Contents |
|---|---|
| [Beattie_2016_project.csv](Beattie_2016_project.csv) | Ready-to-load CSV; 50 rows. Participant-level face-matching accuracy, sleep duration and sleepiness measurements from Experiment 2. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Experiment 2 used sleep diaries for the three nights before a face-matching task. Sixty-two volunteers participated initially; 50 met the study’s sleep-pattern and health criteria. The sample includes short sleepers and controls, defined from their existing sleep patterns rather than randomly assigned sleep restriction. The worksheet’s grouped-label row has been removed from the project CSV.

## Prepared tables

Experiment 2 only. The grouped-label preamble was removed; the header now contains the column names. Accuracy is the supplied overall percent correct, with sleep-duration and KSS fields renamed.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Added participant row identifier. |
| accuracy | Overall face-task percent correct, 0–100. |
| sleep_hours | Average sleep duration, hours. |
| sleepiness | Karolinska Sleepiness Scale (KSS); higher = sleepier. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Beattie, L., Walsh, D., McLaren, J., Biello, S. M., & White, D. (2016). Perceptual impairment in face identification with poor sleep. Royal Society Open Science, 3(10), 160321. https://doi.org/10.1098/rsos.160321

**Original data:** Beattie, Louise, Walsh, Darragh, McLaren, Jessica, Biello, Stephany M., & White, David (2016). Data from: Perceptual impairment in face identification with poor sleep (Version 1) [Dataset]. Dryad. https://doi.org/10.5061/dryad.r620r
