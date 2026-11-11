# The costs and benefits of a red pitcher — data

## Files

| File | Contents |
|---|---|
| [Martin-Eberhardt_2025_project.csv](Martin-Eberhardt_2025_project.csv) | Ready-to-load CSV; 75 rows. One row per red–green plant pair, retaining each plant’s original measurements alongside prepared differences. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers paired 75 green pitcher plants with nearby red plants in one Michigan population. Newly emerged leaves were marked and later collected with their contents. Leaf height, captured prey, inquiline larvae and leaf damage were recorded; feeding assays and reproductive measurements supplied additional outcomes. CombinedDataset.csv brings several plant-level measurements together.

## Prepared tables

Each row joins one red and one green plant using pairID. Source prey mass (g), height (cm) and perforation values are retained for both plants. The three supplied differences are red minus green. The logged prey contrast is ln(1 + 1000 × preyMass_red) − ln(1 + 1000 × preyMass_green): mass is expressed in mg, with a 1-mg shift. That shift is part of the calculation, not a detection limit. There are 75 pairs; a contrast is NA when a required component is missing.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| pairID | Matched-pair ID; the two plants share a microsite. |
| preyMass_red / preyMass_green | Captured prey mass in the red / green pitcher, g. |
| height_red / height_green | Experimental leaf height, cm. |
| perforation_red / perforation_green | 0 = intact below water line, 1 = punctured below water line (excluding tears). |
| prey_mass_difference_g | Red minus green prey mass, g; positive favours red. |
| height_difference_cm | Red minus green height, cm. |
| perforation_difference | Red minus green perforation: +1 = only red punctured; -1 = only green punctured; 0 = same status. |
| log1p_prey_mass_difference | ln(1 + 1000 × preyMass_red) minus ln(1 + 1000 × preyMass_green). The masses are first expressed in mg. This optional prepared scale accommodates zeros and skew. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Martin-Eberhardt, S. A., Weber, M. G., & Gilbert, K. J. (2025). Anthocyanin Impacts Multiple Plant-Insect Interactions in a Carnivorous Plant. The American Naturalist, 205(5), 502-515. https://doi.org/10.1086/735010

**Original data:** Martin-Eberhardt, Sylvie, Weber, Marjorie, & Gilbert, Kadeem (2025). Anthocyanin impacts multiple plant-insect interactions in a carnivorous plant (Version 8) [Dataset]. Dryad. https://doi.org/10.5061/dryad.8w9ghx3vp
