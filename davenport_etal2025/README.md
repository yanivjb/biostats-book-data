# Food, infection and the growth of Daphnia — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 89 rows. One row per animal, with length and assay-date columns for days 3, 10, 17 and 24 and all food and exposure labels. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers used one laboratory clone of Daphnia and one parasite isolate. After three generations under common conditions, young animals were housed individually and assigned to three food levels and either parasite exposure or a sham control. Medium food supplied 12.5% of the high-food concentration; low food supplied 6.25%. Food treatments continued after a 48-hour exposure period. Ten animals per treatment combination were measured during weekly feeding assays. The source table contains 228 length measurements from 89 individual codes, taken 3, 10, 17 or 24 days after exposure. Not every animal was measured at every time point.

## Prepared tables

One row per Individual. All animals remain, with Treatment and Food.Level retained. Body.Length_day3, day10, day17 and day24 are source length measurements at the named days; corresponding Date_day columns retain assay dates. An animal not measured on a day has NA. No single day or complete-case subset was selected.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

## Description of the data and file structure

\# experimental study on how resource quantity affects infections and impacts of a parasite on hosts

### Files and variables


BodyLength.csv: Individual = individual sample code. Treatment = unexposed (control) or exposed to parasite spores for the experiment. Food.Level = categorical resource quantity treatment for the experiment (high = high food, medium = 12.5% of the high food treatment, low = 6.25% of the high food treatment). Date = date of the assay. Day = number of days after the parasite exposure. Body.Length = body length of individual (micrometers).

## Sources

**Paper:** Davenport, E. S., Dziuba, M. K., Corcoran, F., Santos, N. F. D., Monell, K. J., McCreadie, P., Calhoun, S. K., Nelson, T., Jacobson, L. E., Manuel, R., & Duffy, M. A. (2026). Resource quantity affects infection success and impacts of a microsporidian on hosts. Oikos, 2026(2), e11412. https://doi.org/10.1002/oik.11412

**Original data:** Davenport, E., Dziuba, M., Duffy, M., Corcoran, F., Ferreira dos Santos, N., Monell, K., McCreadie, P., Calhoun, S., Nelson, T., Jacobson, L., & Manuel, R. (2025). Data from: Resource quantity affects infection success and impacts of a microsporidian on hosts (Version 7) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.2V6WWPZZR
