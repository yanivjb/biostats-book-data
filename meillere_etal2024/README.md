# ade5868_Data_S1_Breeding_Telo_Ad.csv, ade5868_Data_S4_Morpho_d12.csv

**Paper:** Meillère et al. 2024. Pre- and postnatal noise directly impairs avian development, with fitness consequences. Science  
https://doi.org/10.1126/science.ade5868

**Data:** https://doi.org/10.5061/dryad.47d7wm3mk

This folder contains `ade5868_Data_S1_Breeding_Telo_Ad.csv`, `ade5868_Data_S4_Morpho_d12.csv`, made from sheet "Data_S1_Breeding_Telo_Ad" of `ade5868_Data_S1_to_S6.xlsx`; sheet "Data_S4_Morpho_d12" of `ade5868_Data_S1_to_S6.xlsx` in the original deposit. Only the file format changed (Excel to CSV, so it loads with `read_csv()`); the values are the authors'. Two of the six sheets are included, one CSV each: `ade5868_Data_S1_Breeding_Telo_Ad.csv` (adult telomeres before and after breeding) and `ade5868_Data_S4_Morpho_d12.csv` (nestling size at day 12). The other sheets described below are not in this folder. Please cite both the paper and the dataset (see CITATION.md).

_Below: the authors' README (README.md), NOT trimmed automatically - edit by hand_

---

# Pre- and postnatal noise directly impairs avian development, with fitness consequences

[https://doi.org/10.5061/dryad.47d7wm3mk](https://doi.org/10.5061/dryad.47d7wm3mk)

The dataset includes 6 spreadsheets:
1\. Data_S1_Breeding_Telo_Ad: reproductive success of individuals exposed to acoustic treatments in early-life, and their telomere length at adulthood.
2\. Data_S2_Egg: hatching success of eggs exposed to prenatal playbacks, and their mass at hatching.
3\. Data_S3_Growth: body mass measurements from day 5 to day 13 post-hatch of individuals exposed to pre- and postnatal acoustic treatments.
4\. Data_S4_Morpho_d12: morphological traits (body mass and tarsus length) measured at day 12 post-hatch in individuals exposed to pre- and postnatal acoustic treatments.
5\. Data_S5_Physio_d12: physiological traits (telomere length, hematocrit levels) measured at day 12 post-hatch in individuals exposed to pre- and postnatal acoustic treatments.
6\. Data_S6_Juv_d40: morphological and physiological traits measured at day 40 post-hatch in individuals exposed to pre- and postnatal acoustic treatments.

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

## Code/Software

All analyses were performed in R version 4.1.1 and the scripts are provided in the ade5868_Code.R file.

<br>
