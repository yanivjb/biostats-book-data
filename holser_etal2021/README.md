# Elephant seal mothers and pups

**Paper:** Holser et al. (2021). Density-dependent effects on reproductive output in a capital breeding carnivore, the northern elephant seal. Proceedings of the Royal Society B. https://doi.org/10.1098/rspb.2021.1258

**Original data:** [10.7291/D1K099](https://doi.org/10.7291/D1K099)

This README describes the teaching files in `holser_etal2021`. It adapts the authors’ documentation to the files present in this folder, checked 9 November 2026. File counts and notes about the teaching CSVs come from inspecting those files; they are not additional statements by the original authors. Cite both the paper and the original dataset. `CITATION.md` provides citation information; the paper link above identifies the published article where an older citation file is outdated.

## Files included

| File | Contents |
| --- | --- |
| `PupMass_MomMass_Dryad.csv` | 281 mother–pup breeding records; maternal and pup masses, year, pup age and sex. Does not include maternal age. |
| `WeanMass_BirthMass_AdultMass_Dryad.csv` | 98 records from 86 mothers, including maternal age and complete maternal-arrival and pup-weaning masses. |
| `CITATION.md` | Citation information. |

All 98 mother–year combinations in the second file also occur in the first. The files are overlapping selections with different columns and numerical precision, not independent datasets to append. The second file retains decimal mass values where the broader file often contains rounded values.

## Reading the data

```r
broad <- readr::read_csv("PupMass_MomMass_Dryad.csv")
weaning <- readr::read_csv("WeanMass_BirthMass_AdultMass_Dryad.csv")
```

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

## Missing values and interpretation

`NA` denotes missing information. The 98-row file has 9 missing pup ages, 9 missing estimated birth masses and 8 missing pup sexes; maternal age, arrival mass and weaning mass are complete. The broader file also has missing mother IDs and many missing weaning masses. Some broader-file `PupMass` entries are zero; these require clarification rather than automatic interpretation as plausible live-pup masses or conversion to missing data.

Use `AnimalID` together with `BreedYear` to identify mother–year records, checking for duplicate keys before joining. Missing IDs do not identify a single shared mother. Repeated mothers and shared years limit independence. Reconstructed maternal arrival and pup birth masses can share inputs and errors. No colony-density variable is included in either CSV. The other Dryad file, `AdultFemale_Skipped_Dryad.csv`, is not present in this folder and is not documented here.
