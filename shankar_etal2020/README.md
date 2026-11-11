# Getting a hummingbird through the night — data

## Files

| File | Contents |
|---|---|
| [Shankar_2020_project.csv](Shankar_2020_project.csv) | Ready-to-load CSV; 41 rows. Individual hummingbird summaries with overnight energy expenditure, body mass, torpor duration and temperature information. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers captured adult male hummingbirds near dusk at five sites in Arizona and Ecuador. Birds could feed before entering outdoor respirometry chambers. Oxygen consumption and chamber temperature were recorded overnight; birds were marked to avoid measuring an individual twice. The project CSV contains individual summaries of the overnight recordings.

## Prepared tables

The ID combines site, species and individual number. Confirmed non-torpor nights (Torpid_not = N) were assigned zero torpor hours where the source duration was missing. Other missing durations remain NA. Energy and mass are supplied on their original scales and as natural logarithms.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Site, species and within-species individual number combined. |
| log_energy | Natural log of energy_kJ. |
| log_mass | Natural log of mass_g. |
| torpor_hours | Hours in torpor; confirmed no-torpor nights are zero. |
| temperature | Mean chamber temperature, degrees C. |
| energy_kJ | Whole-night energy expenditure, kJ. |
| mass_g | Bird body mass, g. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero except for the documented confirmed non-torpor nights in the hummingbird table.

## Sources

**Paper:** Shankar, A., Schroeder, R. J., Wethington, S. M., Graham, C. H., & Powers, D. R. (2020). Hummingbird torpor in context: duration, more than temperature, is the key to nighttime energy savings. Journal of Avian Biology, 51(5), jav.02305. https://doi.org/10.1111/jav.02305

**Original data:** Shankar, Anusha, Schroeder, Rebecca J., Wethington, Susan M., Graham, Catherine H., & Powers, Donald R. (2020). Hummingbird torpor in context: duration, more than temperature, is the key to nighttime energy savings (Version 1) [Dataset]. Dryad. https://doi.org/10.5061/dryad.t4b8gthzh
