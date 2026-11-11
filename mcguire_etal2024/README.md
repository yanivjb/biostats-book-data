# Creating a poem with an AI collaborator — data

## Files

| File | Contents |
|---|---|
| [McGuire_2024_project.csv](McGuire_2024_project.csv) | Ready-to-load CSV; 152 rows. One record per writer with collaboration condition, expert creativity rating and participant age. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

In Study 2, 152 participants recruited through Prolific were randomly assigned to three writing conditions. The file contains one record per writer, demographic information, writing time, self-evaluations and expert judgments of the poem.

## Prepared tables

One writer record per row. expert_creativity is retained as creativity; source condition codes 1, 2 and 3 are relabelled Human, AI editor and AI co-creator. Age is retained.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Added writer row identifier. |
| creativity | Mean expert creativity rating for the participant’s poem, source rating-scale units. |
| condition | Writing condition: Human, AI editor or AI co-creator; categorical. Observed categories: Human, AI editor, AI co-creator. |
| age | Participant age, years. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** McGuire, J., De Cremer, D., & Van de Cruys, T. (2024). Establishing the importance of co-creation and self-efficacy in creative collaboration with artificial intelligence. Scientific Reports, 14(1), 18525. https://doi.org/10.1038/s41598-024-69423-2

**Original data:** Establishing the Importance of Self-Efficacy in Creative Collaboration with Artificial Intelligence. (n.d.) [Data and materials]. OSF. https://osf.io/3jqga/ (accessed 10 November 2026).
