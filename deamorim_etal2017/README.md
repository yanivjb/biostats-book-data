# Geckos on newly created islands — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 92 rows. Head length, snout–vent length and identifying information for 92 island and mainland geckos. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers compared five reservoir islands with five nearby mainland sites. The teaching file contains 92 geckos: 49 from islands and 43 from the mainland. Each lizard was measured for snout–vent length and head length using calipers; the same person made the measurements. Sex was recorded when identifiable. The file provides the individual lizard and site identifiers.

## Prepared tables

All source rows and columns are retained. Only CSV formatting and the missing-value marker (NA) are standardised; no biological grouping, exclusions or transformations are applied.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

**HeadLength.csv**

Data used for analysis of head length. Data are from Gymnodactylus amarali individuals collected from field sites near the Serra da Mesa Reservoir in central Brazil.

The following column headings are used.

area: Each field site was either an island created by the filling of the reservoir or part of the adjacent mainland

site: a unique identifier for each field site

lizard: a unique identifier for each lizard captured as part of the study

sex: male, female, or unknown

snout.vent.length_mm: the snout-vent length of the individual lizard

head.length_mm: the length of the head of the individual lizard

## Sources

**Paper:** Eloy de Amorim, M., Schoener, T. W., Santoro, G. R. C. C., Lins, A. C. R., Piovia-Scott, J., & Brandão, R. A. (2017). Lizards on newly created islands independently and rapidly adapt in morphology and diet. Proceedings of the National Academy of Sciences, 114(33), 8812-8816. https://doi.org/10.1073/pnas.1709080114

**Original data:** Eloy de Amorim, M., Schoener, T. W., Santoro, G. R. C. C., Lins, A. C. R., Piovia-Scott, J., & Brandão, R. A. (2018). Data from: Lizards on newly created islands independently and rapidly adapt in morphology and diet (Version 1) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.3NK78
