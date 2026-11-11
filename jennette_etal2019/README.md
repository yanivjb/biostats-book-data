# How mothers invest in amphibian offspring — data

## Files

| File | Contents |
|---|---|
| [ready_EggsToad.csv](ready_EggsToad.csv) | Ready-to-load CSV; 50 rows. Maternal and clutch measurements for 50 American toad females from five populations. |
| [ready_EggsWood.csv](ready_EggsWood.csv) | Ready-to-load CSV; 48 rows. Maternal and clutch measurements for 48 wood frog females from four populations. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers sampled breeding amphibians around Baltimore in 2009–2010. The reproductive data come from subsets of gravid females whose eggs were counted and measured. Mean egg diameter was based on 40 mature eggs per female; a row therefore describes a female and her clutch, not one egg. The toad file contains 50 females from five populations; the wood frog file contains 48 females from four populations.

## Prepared tables

All source rows and columns are retained. Only CSV formatting and the missing-value marker (NA) are standardised; no biological grouping, exclusions or transformations are applied.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

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
| `Mass` | Maternal mass value as supplied. The RTF instead names `Weight`; The source documentation does not establish consistent units for this field. |
| `SVL` | Maternal snout–vent length, mm. |
| `Age` | Estimated maternal age, years. |
| `Egg.No` | Clutch size: number of mature ova. |
| `Dry.Mass` | Dry-mass column as supplied; original description of `DryMass` calls it clutch dry weight, but see below. |
| `Egg.Mass` | Egg-mass column as supplied; original description calls it mean individual egg weight, but see below. |
| `Egg.Dia` | Mean ovum diameter, mm. |

## Mass field labels and units

The original RTF column descriptions do not agree cleanly with the actual column names, numerical scales and paper methods. For example, the first toad record has `Weight = 76.5`, `DryMass = 14.5586`, `Egg.Mass = 5.309` and 4,741 eggs. Calling 5.309 a mean individual egg mass while 14.5586 is the whole clutch mass is not consistent with those numbers. The paper describes both maternal somatic dry mass and total clutch dry mass, but this alone does not establish which CSV column holds each measurement.

Keep these columns as supplied; no names, values or units have been silently corrected. Clarify the mass definitions before reporting mass-based biological coefficients or per-egg quantities. SVL, clutch count, age where present, and egg diameter have clearer definitions. No blank or `NA` cells occur in these three CSVs; numeric zeros are not designated missing values. Population membership is observational and is not a randomized urbanization treatment.

## Sources

**Paper:** Jennette, M. A., Snodgrass, J. W., & Forester, D. C. (2019). Variation in age, body size, and reproductive traits among urban and rural amphibian populations. Urban Ecosystems, 22(1), 137-147. https://doi.org/10.1007/s11252-018-0801-7

**Original data:** Jennette, M. A., Snodgrass, J. W., & Forester, D. C. (2019). Data from: Variation in age, body size, and reproductive traits among urban and rural amphibian populations (Version 1) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.8P165G9
