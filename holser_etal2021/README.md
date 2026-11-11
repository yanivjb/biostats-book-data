# Raising a pup on a fasting mother’s reserves — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 86 rows. One row per mother at her earliest recorded breeding year, retaining maternal and pup measurements and source identifiers. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers studied breeding females and pups at Año Nuevo, California, during 1991–2019. These records come from selected mother–pup pairs involved in physiological and instrumentation studies, rather than a random sample of all breeding females. The source table contains 98 mother–year records from 86 mothers. Arrival and birth masses were reconstructed from measurements and life-stage corrections; those calculations use some of the same recorded quantities.

## Prepared tables

One row per mother: the earliest recorded BreedYear was retained before checking missing measurements. All source variables remain. mother_year_records counts how many source mother-year records were available. No reconstructed mass calculations were changed.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

## Collection and row meaning

Data were collected at Año Nuevo, California, through physiological studies and instrument-recovery procedures. Each row describes a mother and pup in a breeding year. Some mothers recur across years. This is a selected research sample, not a census of the colony. Maternal and pup masses were corrected to comparable life stages using assumptions about fasting and lactation.

## Columns

| Column | Meaning and units |
| --- | --- |
| `AnimalID` | Mother’s individual identifier. Repeated values can represent the same mother in different years. Preserve as an identifier. |
| `BreedYear` | Breeding season year. December observations are assigned to the following breeding year. |
| `Age` | Mother’s age in years; present only in `WeanMass_BirthMass_AdultMass_Dryad.csv`. |
| `ArriveWt` | Estimated maternal mass at arrival, before giving birth, kg. Reconstructed from measured mass and timing/pup information, rather than directly weighed at arrival for every mother. |
| `PupMass` | Pup mass at the time of weighing, kg. |
| `PupAge` | Pup age at weighing, days. |
| `PupBirthMass` | Estimated pup mass at birth, kg, calculated from measured mass and age using an assumed early gain of 2.2 kg/day. |
| `PupSex` | `F` = female; `M` = male. |
| `WeanMass` | Pup mass at weaning, kg, with fasting corrections where applicable in the study. |

## Missing values and recorded calculations

`NA` denotes missing information. The 98-row file has 9 missing pup ages, 9 missing estimated birth masses and 8 missing pup sexes; maternal age, arrival mass and weaning mass are complete. The broader file also has missing mother IDs and many missing weaning masses. Some broader-file `PupMass` entries are zero; the source does not identify whether these are missing-value codes.

Use `AnimalID` together with `BreedYear` to identify mother–year records, checking for duplicate keys before joining. Missing IDs do not identify a single shared mother. Some mother IDs appear in more than one breeding year. Reconstructed maternal arrival and pup birth masses use some of the same recorded inputs. No colony-density variable is included in either CSV. The other Dryad file, `AdultFemale_Skipped_Dryad.csv`, is not present in this folder and is not documented here.

## Sources

**Paper:** Holser, R. R., Crocker, D. E., Robinson, P. W., Condit, R., & Costa, D. P. (2021). Density-dependent effects on reproductive output in a capital breeding carnivore, the northern elephant seal (Mirounga angustirostris). Proceedings of the Royal Society B: Biological Sciences, 288(1960), 20211258. https://doi.org/10.1098/rspb.2021.1258

**Original data:** Costa, D., Holser, R., Crocker, D., Robinson, P., McDonald, G., Fowler, M., Hassrick, J., Hückstädt, L., Peterson, S., Simmons, S., & Keates, T. (2021). Data from: Density-dependent effects on reproductive output in a capital breeding carnivore, the northern elephant seal (Mirounga angustirostris) (Version 11) [Dataset]. Dryad. https://doi.org/10.7291/D1K099
