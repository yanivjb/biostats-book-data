# Evolving with microbial neighbours — data

## Files

| File | Contents |
|---|---|
| [Westley_2024_project.csv](Westley_2024_project.csv) | Ready-to-load CSV; 33 rows. Growth summaries for evolved OTU2 lineages tested at 20°C, retaining selection temperature and community-history labels. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Five microbial taxa were propagated alone or in communities across eight selection temperatures for roughly 110 generations. Growth curves were then measured across assay temperatures. The supplied table contains fitted growth parameters, taxon labels, selection temperature, treatment and lineage identifiers.

## Prepared tables

Only OTU2, temp.c = 20°C, and Treatment T1/T2 records were retained. Id retains the evolved-lineage identifier. selection_temperature is the temperature during evolution; community T1 = monoculture evolution and T2 = community evolution.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source lineage Id. |
| growth | Fitted growth-rate parameter r at a common 20 C assay, in source rate units. |
| selection_temperature | Temperature during evolution, degrees C; distinct from the common assay temperature. |
| community | Evolutionary history: T1 = monoculture; T2 = community. Observed categories: T1, T2. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

## Sources

**Paper:** Westley, J., García, F. C., Warfield, R., & Yvon-Durocher, G. (2024). The community background alters the evolution of thermal performance. Evolution Letters, 8(4), 505-513. https://doi.org/10.1093/evlett/qrae007

**Original data:** Westley, Joseph, García, Francisca C., Warfield, Ruth, & Yvon-Durocher, Gabriel (2024). The community background alters the evolution of thermal performance (Version 6) [Dataset]. Dryad. https://doi.org/10.5061/dryad.vq83bk41b
