# The legacy of cold adaptation in bacteria — data

## Files

| File | Contents |
|---|---|
| [White_2025_project.csv](White_2025_project.csv) | Ready-to-load CSV; 20 rows. One summary per evolved lineage at the 30°C growth assay, retaining species, selection temperature and contributing-well counts. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Separate Bacillus lineages evolved at 15 or 30 degrees C. Researchers subsequently measured growth curves in common assay environments, with replicate wells for each lineage. The project CSV contains lineage-level summaries from the 30-degrees-C assay.

## Prepared tables

Ancestral rows (Selection temperature = A) were excluded and Growth temperature = 30°C retained. Rcurve values were averaged by Strain, Species and selection temperature. wells is the number of contributing well records. Both the mean growth value and its natural logarithm are supplied. Bm = Bacillus mycoides; Bt = Bacillus thuringiensis.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source Strain label. |
| log_growth | Natural log of growth_rate. |
| species | Species identity. Observed categories: Bm, Bt. |
| selection | Evolutionary selection temperature (15 or 30 C); categorical. Observed categories: 15, 30. |
| wells | Number of well records contributing to the lineage mean. |
| growth_rate | Mean fitted growth rate Rcurve across wells for a lineage at the common 30 C assay, in source growth-rate units. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** White, H., Vos, M., Padfield, D., Sharma, M. D., Sheppard, S. K., & Raymond, B. (2025). Constraints in temperature adaptation reinforce differences in thermal niche between mesophilic and psychrotolerant Bacillus cereus group species. Proceedings of the Royal Society B: Biological Sciences, 292(2051), 20251184. https://doi.org/10.1098/rspb.2025.1184

**Original data:** White, Hugh, Vos, Michiel, Padfield, Daniel, Sharma, Manmohan, Sheppard, Samuel, & Raymond, Ben (2025). Constraints in temperature adaptation reinforce differences in thermal niche between mesophilic and psychrotolerant Bacillus cereus group species (Version 5) [Dataset]. Dryad. https://doi.org/10.5061/dryad.w9ghx3g2c
