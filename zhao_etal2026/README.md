# The costs and benefits of feeding a root fungus — data

## Files

| File | Contents |
|---|---|
| [Zhao_2026_project.csv](Zhao_2026_project.csv) | Ready-to-load CSV; 160 rows. Shoot biomass and its natural logarithm, with species, fungal-inoculation and water treatments for 160 grass pots. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

The experiment crossed four grass species, fungal inoculation present or absent, and four simulated precipitation levels. Five individually potted seedlings represented each combination, giving 160 pots. Water treatments began after establishment, pots received nutrient solution, and their positions were randomised and rotated. Biomass and shoot nutrients were measured at harvest after 12 weeks.

## Prepared tables

Each row is a pot. A row identifier was added, labels were shortened, and shoot biomass is supplied in g and as its natural logarithm. Water records assigned precipitation in mm; AM/NM records fungal inoculation.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Added row identifier for a pot. |
| log_biomass | Natural log of shoot_biomass. |
| water | Assigned annual-equivalent precipitation: 400, 800, 1200 or 1600 mm; applied as 9, 18, 27 or 36 mL water daily. |
| fungus | Fungal inoculation: AM = inoculated with arbuscular mycorrhizal fungi; NM = not inoculated. Observed categories: AM, NM. |
| species | Cb = Chloris barbata; Et = Eragrostis tenella; Lp = Leptochloa panicea; Oc = Oplismenus compositus. |
| shoot_biomass | Shoot dry biomass, g. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Zhao, H., Liao, H., Biere, A., & Peng, S. (2026). Plant economics traits predict plant carbon allocation and responsiveness to arbuscular mycorrhizal fungi under varying precipitation. Functional Ecology, 40(6), 1921-1932. https://doi.org/10.1111/1365-2435.70340

**Original data:** Zhao, Hengjun, Liao, Huixuan, Biere, Arjen, & Peng, Shaolin (2026). Data from: Plant economics traits predict plant carbon allocation and responsiveness to arbuscular mycorrhizal fungi under varying precipitation (Version 7) [Dataset]. Dryad. https://doi.org/10.5061/dryad.3j9kd51v3
