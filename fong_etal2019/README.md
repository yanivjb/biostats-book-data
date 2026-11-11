# Experience and the structure of a guppy brain — data

## Files

| File | Contents |
|---|---|
| [Fong_2019_project.csv](Fong_2019_project.csv) | Ready-to-load CSV; 79 rows. Brain volume, body length and treatment and batch information for 79 female guppies. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Eighty adult female guppies were individually housed and assigned to reversal-learning or spatial-learning experiments. Within each experiment, fish were assigned to training or an environment-control group. Controls experienced comparable handling and surroundings without the learning task. Brain regions and body length were measured after the experiment; the supplied table contains 79 fish records and a separate label key.

## Prepared tables

The table contains 79 female fish records. Brain volume uses the original total field and body length the original sl field. Both are also supplied as natural logarithms. Treatment and batch labels are retained.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source fish ID. |
| log_brain | Natural log of brain_volume. |
| log_length | log_length = log(body_length), with standard length in mm. |
| treatment | CRL = reversal-learning environment control; CSL = spatial-learning environment control; TRL = reversal-learning treatment; TSL = spatial-learning treatment. |
| batch | Experimental batch; categorical. Observed categories: 1, 2. |
| brain_volume | Total brain volume, original source total (mm³). |
| body_length | Fish standard length, original source sl (mm). |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Fong, S., Buechel, S. D., Boussard, A., Kotrschal, A., & Kolm, N. (2019). Plastic changes in brain morphology in relation to learning and environmental enrichment in the guppy (Poecilia reticulata). Journal of Experimental Biology, 222(10), jeb200402. https://doi.org/10.1242/jeb.200402

**Original data:** Fong, Stephanie, Buechel, Severine Denise, Boussard, Annika, Kotrschal, Alexander, & Kolm, Niclas (2019). Data from: Plastic changes in brain morphology in relation to learning and environmental enrichment in the guppy (Poecilia reticulata) (Version 1) [Dataset]. Dryad. https://doi.org/10.5061/dryad.c4q7h62
