# Weapons, displays and the force of a mantis shrimp’s strike — data

## Files

| File | Contents |
|---|---|
| [Green_2015_project.csv](Green_2015_project.csv) | Ready-to-load CSV; 93 rows. Maximum strike force, body length and relative appendage size, with supplied natural logarithms, for individual mantis shrimp. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers measured body size and components of the striking appendage. Strike performance was represented by the maximum peak force from ten strikes by an animal. The original note row has been removed from the project CSV.

## Prepared tables

The force measurement is the maximum recorded strike force for the animal. Relative merus length is merus length divided by body length. Original-scale measurements and their natural logarithms are supplied.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source Animal ID. |
| log_force | Natural log of force_N. |
| log_body | Natural log of body_length_mm. |
| log_relative_merus | Natural log of relative_merus. |
| force_N | Maximum recorded strike force for this shrimp, newtons. |
| body_length_mm | Body length, mm. |
| relative_merus | Merus length divided by body length; dimensionless appendage proportion. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Green, P. A. & Patek, S. N. (2015). Contests with deadly weapons: telson sparring in mantis shrimp (Stomatopoda). Biology Letters, 11(9), 20150558. https://doi.org/10.1098/rsbl.2015.0558

**Original data:** Green, Patrick A., & Patek, Sheila N. (2015). Data from: Contests with deadly weapons: telson sparring in mantis shrimp (Stomatopoda) (Version 1) [Dataset]. Dryad. https://doi.org/10.5061/dryad.pd256
