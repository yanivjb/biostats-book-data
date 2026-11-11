# The energetic demands of a first migration — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 109 rows. Basal metabolic rate, body measurements and capture information for juvenile and adult migrants from two songbird species. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Swainson’s thrushes and white-throated sparrows were caught in mist nets at Long Point, Ontario, between September and October 2010. Researchers assigned age from plumage, moult and skull development, and determined sex from blood samples. Birds selected for testing had visible fat stores and no injuries or signs of moult. Thus, these were migrants encountered at one stopover site and in suitable condition for measurement.

Up to four birds were held individually and tested on the night of capture. Food was removed before sunset. Each bird spent the night in a dark, ventilated respirometry canister maintained at 30°C, within the thermoneutral zone of both species. Basal metabolic rate was calculated from the lowest stable gas-exchange period after at least five hours of fasting, to reduce effects of digestion and activity.

The supplied file has 109 uniquely banded birds and includes body mass, skeletal measurements, age class, species, sex, capture date, outdoor minimum temperature, overnight mass loss and chamber duration. It covers the metabolic measurements, not the paper’s separate organ-dissection and feeding experiments.

## Prepared tables

All source rows and columns are retained. Only CSV formatting and the missing-value marker (NA) are standardised; no biological grouping, exclusions or transformations are applied.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

Metadata for file Frontiers_BMR_Data.csv
Created September 20, 2019 by Brendan J. McCabe

These data are from measurements of basal metabolic rate of Swainson's thrushes and white-throated sparrows of two age classes.

BandNum:  Band number
Species:  SWTH = Swainson's thrush, WTSP = white-throated sparrow
Age:  Age class - HY = hatch-year (juvenile), AHY = after hatch-year (adult)
Sex:  M = male, F = female
Wing:  Wing chord in mm
Tarsus:  Tarsus length in mm
Bill:  Bill length in mm
MassBody:  body mass in grams at start of respirometry
Ord_Date:  Ordinal date of capture
TempMin:  minimum daily temperature in degrees Celsius from day of testing
MassLoss:  body mass lost in grams over course of respirometry measurement
TimCan:  total time spend in respirometry canister in hours
BMR:  basal metabolic rate in Watts
OutlierNote:  note of outlier BMR value for one individual


## CSV formatting

Trailing empty OutlierNote fields are written explicitly in the teaching CSV; the recorded measurements and note text are unchanged.

## Sources

**Paper:** McCabe, B. J. & Guglielmo, C. G. (2019). Migration Takes Extra Guts for Juvenile Songbirds: Energetics and Digestive Physiology During the First Journey. Frontiers in Ecology and Evolution, 7, 381. https://doi.org/10.3389/fevo.2019.00381

**Original data:** Guglielmo, C., & McCabe, B. (2019). Migration takes extra guts for juvenile songbirds: energetics and digestive physiology during the first journey (Version 1) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.P5HQBZKKH
