# Blood and the demands of a sandpiper breeding season — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 986 rows. One row per bird at its earliest recorded capture, retaining hematocrit, body measurements, dates and breeding observations. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers sampled birds at an approximately 2 km² site near Utqiagvik, Alaska, during nine breeding seasons (2004–2009, 2012, 2014 and 2018). Both sexes were caught using hand-held mist nets; females were also caught in nest traps. At capture, birds were weighed, their tarsus (lower leg) measured, and blood collected. Hematocrit was averaged across capillary tubes from each capture. Some birds were sampled more than once; bird identity is recorded as ID.

Females were classified by whether they nested at the study site. Nests were found by following females and searching the tundra. Females without a local nest could include birds passing through to breed elsewhere. The sample therefore reflects birds encountered and captured at this site, using partly different methods for the sexes.

## Prepared tables

One row per bird: its earliest dated capture. All source columns remain; sample_date is the parsed capture date and capture_records counts source records for that ID. No rows were removed for missing measurements.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

### Description of data files

data\_PESA.csv (contains hematocrit values of individual pectoral sandpipers)

ID - unique identity for each individual
date\_ - date of sample collection (NA=no data)
year\_ - year of sample collection (NA=no data)
dayofyear\_ - day of year of sample collection (1 = January 1st, NA=no data)
hema - hematocrit value (%)
tarsus - tarsus length (in mm, NA=no data)
weight - body mass (in g, NA=no data)
cond - body condition (residuals of weight over tarsus, NA=no data)
sex - sex(1=male, 2=female)
lattitude - lattitude (degrees°, NA=no data)
longitude - longitude (degrees°, NA=no data)
breed - factor indicating whether an individual bred at the study site (0=no, 1=yes)
date\_cent - mean-centered date of sample collection (NA=no data)
tarsus\_cent - mean-centered tarsus length (in mm, NA=no data)
weight\_cent - mean-centered body mass (in g, NA=no data)
cond\_cent - mean-centered body condition (residuals of weight over tarsus, NA=no data)

## Sources

**Paper:** Santema, P., Eberhart-Hertel, L., Valcu, M., & Kempenaers, B. (2023). Sexual selection for extreme physical performance in a polygynous bird is associated with exceptional sex differences in oxygen carrying capacity. Biology Letters, 19(11), 20230391. https://doi.org/10.1098/rsbl.2023.0391

**Original data:** Santema, P., Eberhart-Hertel, L., Valcu, M., & Kempenaers, B. (2023). Data from: Sexual selection for extreme physical performance in a polygynous bird is associated with exceptional sex differences in oxygen carrying capacity (Version 4) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.PZGMSBCSS
