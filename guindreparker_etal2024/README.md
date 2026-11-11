# The resources inside a starling egg — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 138 rows. Egg size and mass means for the first recorded nesting attempt of each nest in a year, with clutch size, dates and counts of measured eggs. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers monitored nest boxes at four sites around Atlanta, Georgia, during 2020–2023: two urban and two rural sites. Site coverage changed over time: one rural site replaced another after renovations, and the second urban site was added in 2021. Urbanization was classified from surrounding vegetation, buildings and impervious surfaces; it was not experimentally assigned.

Nest boxes were checked every few days during the March–June breeding season. Eggs were marked to follow laying, measured for length and width, and weighed. The source table contains 552 egg records with nesting identifiers, nesting-attempt number, lay date, egg age at measurement and clutch size. Multiple eggs belong to a nesting group; birds may also breed again during a season. Egg numbers are reused within nests, so they are not global individual identifiers.

## Prepared tables

One row per nest/year, using its first recorded nesting attempt. Urbanization Status, Nest.ID, year and Nest Attempt define the source group. Egg measurements are arithmetic means of recorded values; n_mass, n_length and n_width count measured eggs. egg_records counts source egg rows; clutch_size is the recorded clutch size; first_lay_date is the earliest recorded egg date; mean_egg_age_days is the average age at measurement. All-missing numeric means are NA. Nest.ID remains available across years.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

## Description of the data and file structure

Reproductive and environmental parameters collected for European starling nesting attempts from nest boxes in metro-atlanta.

### Files and variables

#### File: egg.csv

**Description:** Data file for egg size analyses

##### Variables

* Nest.ID: Unique ID for nest box
* Urbanization Status: dichotomous score based on UrbanizationScore value (urban or rural)
* Nest Attempt: Ordinal value for how many nesting attempts the breeding pair have attempted
* Egg.ID: Unique ID for each egg
* Lay date: Date each egg was laid in nest
* Length (mm): continuous variable
* Width (mm): continuous variable
* Mass (g): continuous variable
* Egg Age (days): Age of egg from lay date of egg to present date
* Clutch size: Number of eggs total in the nest
* n/a values mean observation/measurement not collected

## Sources

**Paper:** Guindre-Parker, S., Acosta, A., Bourque, C., Cook, A., Corimanya, J., Kaplan, R., Kilgour, D. A. V., Linkous, C. R., Ross, M., Smith, T., & Titus, C. (2025). No difference in reproductive investment or success across urban and rural breeding pairs in an urban-adapted songbird. Ornithology, 142(1), ukae047. https://doi.org/10.1093/ornithology/ukae047

**Original data:** Guindre-Parker, Sarah, Acosta, Arianna, Bourque, Cole, Cook, Amberlee, Corimanya, Joanna, Kaplan, Rachel, Kilgour, Denyelle A. V., Linkous, Courtney R., Ross, Michelle, Smith, Trinity, & Titus, CareyJo. (2024). No difference in reproductive investment or success across urban and rural breeding pairs in an urban-adapted songbird (Version 5) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.3N5TB2RT7
