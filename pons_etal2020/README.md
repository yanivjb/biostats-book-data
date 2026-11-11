# Fungal partners for wheat during drought — data

## Files

| File | Contents |
|---|---|
| [Pons_2020_project.csv](Pons_2020_project.csv) | Ready-to-load CSV; 56 rows. Ear dry mass and its natural logarithm, watering and fungal-inoculation treatments, and harvest labels for 56 wheat pots. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers grew two wheat plants per pot in a climate chamber. Pots received live fungal inoculum or a comparable sterilised preparation, and were allocated to well-watered, continuously dry or pulsed-drought conditions. The two drought treatments received comparable total water on different schedules. There were 60 pots initially and 56 remaining after infection or sampling losses; positions were changed weekly.

## Prepared tables

Pot IDs and treatment labels were retained. Ear dry mass is supplied in g and as its natural logarithm. The table contains 56 pot records.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source pot ID. |
| log_ear | Natural log of ear_mass_g. |
| water | Irrigation: cd = continuous drought; pd = pulsed drought; ctr = well-watered control. Observed categories: cd, ctr, pd. |
| fungus | Fungal inoculation: AM = inoculated with arbuscular mycorrhizal fungi; NM = not inoculated. Observed categories: AM, NM. |
| harvest | Harvest group: A had phloem-sap sampling from one plant per pot at flowering; B did not. Both groups were harvested at the later watery-ripe grain stage. Observed categories: A, B. |
| ear_mass_g | Dry mass of wheat ears, g; reproductive production per pot. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Pons, C., Voß, A. C., Schweiger, R., & Müller, C. (2020). Effects of drought and mycorrhiza on wheat and aphid infestation. Ecology and Evolution, 10(19), 10481-10491. https://doi.org/10.1002/ece3.6703

**Original data:** Pons, Caroline, Voss, Ann-Cathrin, Schweiger, Rabea, & Müller, Caroline (2021). Effects of drought and mycorrhiza on wheat and aphid infestation (Version 4) [Dataset]. Dryad. https://doi.org/10.5061/dryad.05qfttf13
