# Amphibian age, body size and reproductive investment

**Paper:** Jennette, Snodgrass and Forester (2019). Variation in age, body size, and reproductive traits among urban and rural amphibian populations. Urban Ecosystems 22:137–147. https://doi.org/10.1007/s11252-018-0801-7

**Original data:** [10.5061/dryad.8p165g9](https://doi.org/10.5061/dryad.8p165g9)

This README describes the teaching files in `jennette_etal2019`. It adapts the authors’ documentation to the files present in this folder, checked 9 November 2026. File counts and notes about the teaching CSVs come from inspecting those files; they are not additional statements by the original authors. Cite both the paper and the original dataset. `CITATION.md` provides citation information; the paper link above identifies the published article where an older citation file is outdated.

## Files included

| File | Contents |
| --- | --- |
| `femalestoadage.csv` | 172 breeding female American toads, with population, body measurement and estimated age. |
| `EggsToad.csv` | 50 female American toads, with body and clutch measurements. |
| `EggsWood.csv` | 48 female wood frogs, with body and clutch measurements and estimated age. |
| `README_for_EggsToad.rtf`, `README_for_EggsWood.rtf` | Original author documentation. These files also describe datasets not included in this teaching folder. |
| `CITATION.md` | Citation information. |

The three CSVs represent different tables or subsets of the study. They contain no shared individual identifier, so row order or population alone must not be used to pair animals across files. Other age, male, or population-summary files described in the original RTF documents are not included here.

## Reading the data

```r
age_data <- readr::read_csv("femalestoadage.csv")
toad_eggs <- readr::read_csv("EggsToad.csv")
wood_eggs <- readr::read_csv("EggsWood.csv")
```

## Collection and row meaning

Researchers sampled breeding adults at artificial wetlands in Baltimore County, Maryland, in 2009–2010. Age was estimated from growth marks in toe bones. Reproductive tables describe individual females and their mature ova; egg number, mass and diameter are summaries for a female, not individual-egg rows. Forty ova per female were selected for diameter measurements. Animals from the same population share environmental and demographic history.

## `femalestoadage.csv`

| Column | Meaning and units |
| --- | --- |
| `POP` | Population code: 2 = Urban C; 3 = Urban B; 4 = Urban A; 5 = Suburban A; 6 = Rural. |
| `Weight` | Body-weight value as supplied. The original README calls it somatic dry weight, but its scale and the paper’s methods leave its tissue basis/units uncertain; see the mass clarification below. |
| `SVL` | Snout–vent length, mm. |
| `Age` | Estimated age, years; not the duration an individual was followed. |

## `EggsToad.csv`

| Column | Meaning and units |
| --- | --- |
| `Pop.` | Population code: B = Urban C; C = Urban B; D = Urban A; E = Suburban A; F = Rural. These letter codes differ from the age table. |
| `Weight` | Maternal mass value as supplied; original description says somatic dry weight in mg, but the values conflict with that interpretation. See below. |
| `SVL` | Maternal snout–vent length, mm. |
| `Egg.No.` | Clutch size: number of mature ova. |
| `DryMass` | Dry-mass column as supplied. Original README calls it clutch dry weight; numerical relationships suggest that needs checking. |
| `Egg.Mass` | Egg-mass column as supplied. Original README calls it mean individual egg weight; its scale and relationship to `DryMass` and clutch size require checking. |
| `Egg.Dia` | Mean ovum diameter, mm. |

## `EggsWood.csv`

| Column | Meaning and units |
| --- | --- |
| `POP` | Population code: B = Rural A; E = Rural B; FP = Suburban; MP = Urban. |
| `Mass` | Maternal mass value as supplied. The RTF instead names `Weight`; do not assume the description’s dry-mass units apply without clarification. |
| `SVL` | Maternal snout–vent length, mm. |
| `Age` | Estimated maternal age, years. |
| `Egg.No` | Clutch size: number of mature ova. |
| `Dry.Mass` | Dry-mass column as supplied; original description of `DryMass` calls it clutch dry weight, but see below. |
| `Egg.Mass` | Egg-mass column as supplied; original description calls it mean individual egg weight, but see below. |
| `Egg.Dia` | Mean ovum diameter, mm. |

## Mass definitions need clarification

The original RTF column descriptions do not agree cleanly with the actual column names, numerical scales and paper methods. For example, the first toad record has `Weight = 76.5`, `DryMass = 14.5586`, `Egg.Mass = 5.309` and 4,741 eggs. Calling 5.309 a mean individual egg mass while 14.5586 is the whole clutch mass is not consistent with those numbers. The paper describes both maternal somatic dry mass and total clutch dry mass, but this alone does not establish which CSV column holds each measurement.

Keep these columns as supplied; no names, values or units have been silently corrected. Clarify the mass definitions before reporting mass-based biological coefficients or per-egg quantities. SVL, clutch count, age where present, and egg diameter have clearer definitions. No blank or `NA` cells occur in these three CSVs; numeric zeros are not designated missing values. Population membership is observational and is not a randomized urbanization treatment.
