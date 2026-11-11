# The lasting imprint of a noisy early life — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 40 rows. Adult telomere measurements before and after breeding, with early-life sound treatments and breeding information for 40 zebra finches. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Zebra finches experienced traffic noise or zebra finch song during the last five days before hatching, during days 4–13 after hatching, or at both stages. Playbacks had comparable intensity, 65 dB. Nestlings returned to undisturbed parents during the day, allowing researchers to manipulate offspring sound exposure without exposing their parents. As adults, experimental birds bred with unmanipulated partners. This file follows 40 birds from the four combinations of prenatal and postnatal sound treatment. Each bird has adult telomere measurements before and after breeding. These 40 adults were retained from the larger developmental experiment; the four treatment groups contain 9–11 birds each.

## Prepared tables

All source rows and columns are retained. Only CSV formatting and the missing-value marker (NA) are standardised; no biological grouping, exclusions or transformations are applied.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

## Description of the data and file structure

#### ###DATA-SPECIFIC INFORMATION FOR: Data\_S1\_Breeding\_Telo\_Ad

**Number of variables:** 24

**Description:** This data file includes measures of reproductive success in the second (first summer) and fourth years of life for 40 experimental individuals exposed to noise and/or song in early-life. Also included are telomere length measurements at adulthood, before and after breeding in the first summer. Please see the associated manuscript and supplementary materials for details on the data and methods.

**Variable list:**
A. Ring : Individual ring number
B. Sex : F=female, M=male
C. PreTreat : Prenatal treatment; 2 levels: song, noise
D. PostTreat : Postnatal treatment; 2 levels: song, noise
E. Treatments: Pre- and postnatal treatments; 4 levels: song-only, prenatal noise, postnatal noise, noise-only
F. Massd0: Mass at hatching of experimental individual (g)
G. IndOffspring_Total : Total number of independent offspring produced across all breeding opportunities (1st summer and 4th year)
H. Bred_1stSummer : Whether or not the individual bred in the first summer; 0=no, 1=yes
I. Eggs_1stSummer : Number of eggs laid in the first summer
J. Hatchlings_1stSummer : Number of hatchlings produced in the first summer
K. Fledglings_1stSummer : Number of fledglings produced in the first summer
L. IndOffspring_1stSummer : Number of independent offspring produced in the first summer
M. Present_4thYear : Whether or not the individual was present in the fourth year; 0=no, 1=yes
N. Bred_4thYear : Whether or not the individual bred in the fourth year; 0=no, 1=yes
O. Eggs_4thYear : Number of eggs laid in the fourth year
P. Hatchlings_4thYear : Number of hatchlings produced in the fourth year
Q. Fledglings_4thYear : Number of fledglings produced in the fourth year
R. IndOffspring_4thYear : Number of independent offspring produced in the fourth year
S. PartnerMass_1stSummer : Body mass (g) of the control partner in the first summer
T. PartnerMass_4thYear : Body mass (g) of the control partner in the fourth year
U. rTLd12 : Relative telomere length (T/S ratio) at day 12
V. rTLd40 : Relative telomere length (T/S ratio) at day 40
W. rTLAd_Before : Relative telomere length (T/S ratio) at adulthood, before breeding in the first summer
X. rTLAd_After : Relative telomere length (T/S ratio) at adulthood, after breeding in the first summer

Cells with NA = not applicable

#### ###DATA-SPECIFIC INFORMATION FOR: Data\_S2\_Egg

**Number of variables:** 8

**Description:** This data file includes measures of hatching success for 393 eggs exposed to playbacks of noise or song, or incubated in silence. Also included are the mass of the eggs (before acoustic manipulation) and their mass at hatching. Please see the associated manuscript and supplementary materials for details on the data and methods.

**Variable List:**
A. EggID : Unique identifier of the egg
B. ClutchID : Identifier of the clutch
C. LayingDateJul : Laying date (Julian days; number of days from the 01/06/2019)
D. EggMass : Egg mass (g) at d-5 (i.e. before acoustic manipulation, 5 days before hatching)
E. PreTreat : Prenatal treatment; 3 levels: song, noise, silence
F. Hatch : Whether or not the egg hatched; 0=no, 1=yes
G. MassHatching : Mass at hatching (g)
H: FollowedPH : Whether or not the individual was followed post-hatch; 0=no, 1=yes

Cells with NA = not applicable

#### ###DATA-SPECIFIC INFORMATION FOR: Data\_S3\_Growth

**Number of variables:** 12

**Description:** This data file includes 1026 body mass measurements from 114 nestlings. Individuals were exposed to song or noise playbacks pre- or postnatally, or in both life stages (or exposed to silence and used as a control for postnatal manipulation), and their body mass was recorded every day from day 5 to day 13 post-hatch (during postnatal manipulation). Please see the associated manuscript and supplementary materials for details on the data and methods.

**Variable List:**
A.ChickID : Unique identifier of the nestling
B. Sex : F=female, M=male
C. RearBroodID : Identifier of the rearing brood
D. GenPairID : Identifier of the genetic parents
E. PreTreat : Prenatal treatment; 3 levels: song, noise, silence
F. PostTreat : Postnatal treatment; 3 levels: song, noise, silence
G. Treatments : Pre- and postnatal treatments; 5 levels: song-only, prenatal noise, postnatal noise, noise-only, silence control birds
H. HatchDateJul : Hatching (Julian days; number of days from the 01/06/2019)
I. BroodSized3 : Brood size at day 3
J. Massd0 : Mass at hatching (g)
K. Day : Age when the measurement was made
L. Mass : Body mass (g) when the measurement was made

Cells with NA = not applicable

#### ###DATA-SPECIFIC INFORMATION FOR: Data\_S4\_Morpho\_d12

**Number of variables:** 23

**Description:** This data file includes morphological measurements (body mass and tarsus length) at day 12 post-hatch for 114 individuals exposed to acoustic treatments pre- and postnatally. Also included are the number of seeds in the crop in the evening of day 7 and day 12 post-hatch (used as indirect measures of food intake). Please see the associated manuscript and supplementary materials for details on the data and methods.

**Variable List:**
A.ChickID : Unique identifier of the nestling
B. Ring : Individual ring number
C. Sex : F=female, M=male
D. RearBroodID : Identifier of the rearing brood
E. GenPairID : Identifier of the genetic parents
F. PreTreat : Prenatal treatment; 3 levels: song, noise, silence
G. PostTreat : Postnatal treatment; 3 levels: song, noise, silence
H. Treatments : Pre- and postnatal treatments; 5 levels: song-only, prenatal noise, postnatal noise, noise-only, silence control birds
I. HatchDateJul : Hatching (Julian days; number of days from the 01/06/2019)
J. BroodSized3 : Brood size at day 3
K. Massd0 : Mass at hatching (g)
L. to T. Massd5 to Massd13 : Body mass (g) on day 5 to day 13
U. Tarsusd12 : Tarsus length (mm) at day 12
V. Seedsd7 : Crop seed counts in the evening on day 7
W. Seedsd12 : Crop seed counts in the evening on day 12

Cells with NA = not applicable

#### ###DATA-SPECIFIC INFORMATION FOR: Data\_S5\_Physio\_d12

**Number of variables:** 14

**Description:** This data file includes physiological measurements (telomere length and hematocrit level) at day 12 post-hatch for 112 individuals exposed to acoustic treatments pre- and postnatally (blood samples were missing for 2 individuals). Please see the associated manuscript and supplementary materials for details on the data and methods.

**Variable List:**
A. ChickID : Unique identifier of the nestling
B. Ring : Individual ring number
C. Sex : F=female, M=male
D. RearBroodID : Identifier of the rearing brood
E. GenPairID : Identifier of the genetic parents
F. PreTreat : Prenatal treatment; 3 levels: song, noise, silence
G. PostTreat : Postnatal treatment; 3 levels: song, noise, silence
H. Treatments : Pre- and postnatal treatments; 5 levels: song-only, prenatal noise, postnatal noise, noise-only, silence control birds
I. HatchDateJul : Hatching (Julian days; number of days from the 01/06/2019)
J. BroodSized3 : Brood size at day 3
K. Massd0 : Mass at hatching (g)
L. Hematocritd12 : Hematocrit level (%) at day 12
M. rTLd12 : Relative telomere length (T/S ratio) at day 12
N. PlateID : Identifier of the assay plate

Cells with NA = not applicable

#### ###DATA-SPECIFIC INFORMATION FOR: Data\_S6\_Juv\_d40

**Number of variables:** 18

**Description:** This data file includes morphological and physiological measurements (body mass, tarsus length, telomere length and hematocrit level) at day 40 post-hatch (i.e. after nutritional independence) for 64 individuals exposed to acoustic treatments pre- and postnatally. Please see the associated manuscript and supplementary materials for details on the data and methods.

**Variable List:**
A. Ring : Individual ring number
B. Sex : F=female, M=male
C. RearBroodID : Identifier of the rearing brood
D. GenPairID : Identifier of the genetic parents
E. PreTreat : Prenatal treatment; 3 levels: song, noise, silence
F. PostTreat : Postnatal treatment; 3 levels: song, noise, silence
G. Treatments : Pre- and postnatal treatments; 5 levels: song-only, prenatal noise, postnatal noise, noise-only, silence control birds
H. Massd0 : Mass at hatching (g)
I. Massd12 : Body mass (in g) at day 12
J. Tarsusd12 : Tarsus length (in mm) at day 12
K. Hematocritd12 : Hematocrit level (%) at day 12
L. rTLd12 : Relative telomere length (T/S ratio) at day 12
M. Massd40 : Body mass (in g) at day 40
N. MassGain : Mass gain (in g) between day 12 and day 40
O. Tarsusd40 : Tarsus length (in mm) at day 40
P. Hematocritd40 : Hematocrit level (%) at day 40
Q. rTLd40 : Relative telomere length (T/S ratio) at day 40
R. PlateID : Identifier of the assay plate

Cells with NA = not applicable

## Sources

**Paper:** Meillère, A., Buchanan, K. L., Eastwood, J. R., & Mariette, M. M. (2024). Pre- and postnatal noise directly impairs avian development, with fitness consequences. Science, 384(6694), 475-480. https://doi.org/10.1126/science.ade5868

**Original data:** Meillère, A., Buchanan, K., Eastwood, J., & Mariette, M. (2024). Pre- and postnatal noise directly impairs avian development, with fitness consequences (Version 4) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.47D7WM3MK
