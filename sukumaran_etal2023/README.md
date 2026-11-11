# Which experiences does reward help us remember? — data

## Files

| File | Contents |
|---|---|
| [Sukumaran_2023_project.csv](Sukumaran_2023_project.csv) | Ready-to-load CSV; 120 rows. Participant-level recognition summaries, including high- and low-reward hit rates, their difference and earlier-image recognition. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

In Experiment 1a, 120 people encoded animal and object pictures before, during and after reward conditioning, then completed a recognition test. The trial CSV records old and new images, category assignments, age and recognition responses. The project CSV summarises recognition of previously seen images encoded before or after conditioning. Recognition was tested after all encoding phases.

## Prepared tables

Experiment 1a, previously seen items (Stim_Type = old_img) only. earlier_recognition is mean Memory_Correct for Phase 1. high_reward_hit_rate and low_reward_hit_rate are mean Memory_Correct for Phase 3 in Reward_Category 1 and −1. reward_advantage = 100 × (high rate − low rate), in percentage points. Rates are not d-prime scores.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source UserID. |
| high_reward_hit_rate | Proportion of previously seen phase-3 high-reward images recognised, 0–1. |
| low_reward_hit_rate | Proportion of previously seen phase-3 low-reward images recognised, 0–1. |
| reward_advantage | 100 × (high_reward_hit_rate − low_reward_hit_rate), percentage points. |
| age | Participant age, years. |
| earlier_recognition | Hit rate for images encoded in phase 1, 0–1; recognition was tested after the experiment. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Sukumaran, P., Kazanina, N., & Houghton, C. (2023). Reward conditioning may not have an effect on category-specific memory. Scientific Reports, 13(1), 22297. https://doi.org/10.1038/s41598-023-48874-z

**Original data:** prisukumaran23. (n.d.). adaptiveMemoryReplication [Data and analysis code]. GitHub. https://github.com/prisukumaran23/adaptiveMemoryReplication (accessed 10 November 2026).
