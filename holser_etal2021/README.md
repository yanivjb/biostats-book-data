# How do maternal size and age relate to elephant seal pup growth? — data

## Project data files

| File | Contents |
|---|---|
| `WeanMass_BirthMass_AdultMass_Dryad.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Collection and row meaning

Researchers studied breeding females and pups at Año Nuevo, California, during 1991–2019. These records come from selected mother–pup pairs involved in physiological and instrumentation studies, rather than a random sample of all breeding females. The file contains 98 mother–year records from 86 mothers. Arrival and birth masses were reconstructed from measurements and life-stage corrections; those calculations use some of the same recorded quantities.

## Column definitions and source documentation

## Files included

| File | Contents |
| --- | --- |
| `PupMass_MomMass_Dryad.csv` | 281 mother–pup breeding records; maternal and pup masses, year, pup age and sex. Does not include maternal age. |
| `WeanMass_BirthMass_AdultMass_Dryad.csv` | 98 records from 86 mothers, including maternal age and complete maternal-arrival and pup-weaning masses. |
| `CITATION.md` | Citation information. |

All 98 mother–year combinations in the second file also occur in the first. The files are overlapping selections with different columns and numerical precision, overlapping selections of records. The second file retains decimal mass values where the broader file often contains rounded values.

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

## Missing values and recorded calculations

`NA` denotes missing information. The 98-row file has 9 missing pup ages, 9 missing estimated birth masses and 8 missing pup sexes; maternal age, arrival mass and weaning mass are complete. The broader file also has missing mother IDs and many missing weaning masses. Some broader-file `PupMass` entries are zero; the source does not identify whether these are missing-value codes.

Use `AnimalID` together with `BreedYear` to identify mother–year records, checking for duplicate keys before joining. Missing IDs do not identify a single shared mother. Some mother IDs appear in more than one breeding year. Reconstructed maternal arrival and pup birth masses use some of the same recorded inputs. No colony-density variable is included in either CSV. The other Dryad file, `AdultFemale_Skipped_Dryad.csv`, is not present in this folder and is not documented here.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1098/rspb.2021.1258
