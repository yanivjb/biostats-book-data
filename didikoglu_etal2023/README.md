# Biological timing, caffeine and everyday sleep — data

## Files

| File | Contents |
|---|---|
| [Didikoglu_2023_project.csv](Didikoglu_2023_project.csv) | Ready-to-load CSV; 59 rows. Baseline questionnaire records describing sleep quality, chronotype and caffeine habits for 59 participants. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Fifty-nine participants supplied baseline questionnaires and repeated sleep diaries during a field study of light exposure and sleep. The sleep file contains 478 diary records, with sleep timing, duration and previous-day habits. The baseline file contains one record per participant. The project CSV contains the baseline questionnaire records.

## Prepared tables

Only the baseline questionnaire table is used. PSQI, corrected free-day midsleep and the daily caffeine-unit field are renamed. No diary averaging or light-logger processing was performed.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source baseline participant id. |
| sleep_quality | Pittsburgh Sleep Quality Index total, 0–21; higher = worse perceived sleep quality. |
| chronotype | Corrected free-day midsleep (MCTQ MSFsc), hours; higher = later chronotype. |
| caffeine | Reported general daily caffeine intake in the source’s questionnaire units; NOT mg. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Didikoglu, A., Mohammadian, N., Johnson, S., van Tongeren, M., Wright, P., Casson, A. J., Brown, T. M., & Lucas, R. J. (2023). Associations between light exposure and sleep timing and sleepiness while awake in a sample of UK adults in everyday life. Proceedings of the National Academy of Sciences, 120(42), e2301608120. https://doi.org/10.1073/pnas.2301608120

**Original data:** Didikoglu, Altug, Lucas, Robert J, & Brown, Timothy M (2023). Data: Associations between light exposure and sleep timing and sleepiness while awake in a sample of UK adults in everyday life [Dataset]. University of Manchester. https://doi.org/10.48420/23786238
