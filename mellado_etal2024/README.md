# What a bat’s measurements reveal about its life — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 1545 rows. One row per bat at its earliest recorded adult capture, with mass, forearm length, sex, month and source identifiers. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers monitored two colonies of Carollia perspicillata in Brazil’s União Biological Reserve from 2013–2021, changing the focal roost in 2015. Bats were captured in roosts and with mist nets, marked individually, measured, and released. Sampling occurred roughly every two months, with gaps and unequal seasonal coverage. Advanced-pregnancy records were excluded, and weighing after feeding had ceased reduced differences in gut contents. The source table contains 4,138 captures of 1,962 marked bats; ID follows the same bat across recaptures.

## Prepared tables

One row per bat with at least one recorded adult capture: the earliest adult capture month was selected before checking missing measurements. Earlier juvenile/subadult captures were not used as adult records. Ties within a month retain source order. capture_month is the parsed month; capture_records counts all source capture records for that ID. All other source columns remain. The full capture history is in original_data.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

Data and R scripts used in Mellado et al. (2024) Not all size measures are created equal: different body size proxies are not equivalent fitness predictors in the bat Carollia perspicillata. Journal of Mammalian Evolution. 31:9. https://doi.org/10.1007/s10914-024-09702-x

bmass.txt = data set with 4138 observations (bats captured). Variables are: ID = individual number, YearMon (Year and month), Month, Sex, AgeCat = age categories (JV juvenile, SUB - subadult, AD - adult), ForL = forearm length (mm), BM = body mass (g)

## Sources

**Paper:** Mellado, B., de Oliveira Carneiro, L., Nogueira, M. R., & Monteiro, L. R. (2024). Not all size measures are created equal: different body size proxies are not equivalent fitness predictors in the bat Carollia perspicillata. Journal of Mammalian Evolution, 31(1), 9. https://doi.org/10.1007/s10914-024-09702-x

**Original data:** Monteiro, L. (2024). Data and scripts for Mellado et al. (2024) Not all size measures are created equal: different body size proxies are not equivalent fitness predictors in the bat Carollia perspicillata. Journal of Mammalian Evolution 31:9. https://doi.org/10.1007/s10914-024-09702-x [Dataset]. Zenodo. https://doi.org/10.5281/ZENODO.10601061
