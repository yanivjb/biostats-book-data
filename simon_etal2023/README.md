# A moth hidden from hunting bats — data

## Files

| File | Contents |
|---|---|
| [Simon_2023_project.csv](Simon_2023_project.csv) | Ready-to-load CSV; 56 rows. Change in acoustic target strength after scale removal, with body length and relative width for individual moths. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers collected moths from eight families, measured their morphology and scanned their echoes from many angles using artificial ultrasound. A subset was scanned both intact and after body scales were removed. The fully-descaled table contains paired intact and shaved measurements for each specimen, including summaries for different frequency bands.

## Prepared tables

The authors’ shaved-minus-intact target-strength difference is retained as scale_benefit, in dB. Relative width is body width divided by body length. Length and relative width are also supplied as natural logarithms.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source Spec_nr. |
| scale_benefit | Shaved minus intact acoustic target strength, dB. Positive means stronger echoes after scale removal. |
| log_length | log_length = log(body_length_mm). |
| log_relative_width | Natural log of relative_width. |
| body_length_mm | Body length, mm. |
| relative_width | Body width divided by body length; dimensionless. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Simon, R., Dreissen, A., Leroy, H., Berg, M. P., & Halfwerk, W. (2023). Acoustic camouflage increases with body size and changes with bat echolocation frequency range in a community of nocturnally active Lepidoptera. Journal of Animal Ecology, 92(12), 2363-2372. https://doi.org/10.1111/1365-2656.14016

**Original data:** Simon, Ralph, Dreissen, Alrike, Leroy, Helene, Berg, Matty, & Halfwerk, Wouter (2023). Acoustic camouflage increases with body size and bat echolocation frequency range in a community of nocturnally-active Lepidoptera (Version 4) [Dataset]. Dryad. https://doi.org/10.5061/dryad.66t1g1k73
