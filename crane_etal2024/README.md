# Crane_etal2024_cane_toads.csv

**Paper:** Crane et al. 2024. Effect of parasite infection and invasion history on feeding, growth, and energy allocation of cane toads. Biol J Linn Soc  
https://doi.org/10.1093/biolinnean/blae054

**Data:** https://doi.org/10.5061/dryad.wm37pvmwd

This folder contains `Crane_etal2024_cane_toads.csv`, made from sheet "data" of `Data_from_-Effect_of_parasite_infection_and_invasion_history_on_feeding__growth_and_energy_allocation_of_cane_toads.xlsx` in the original deposit. Only the file format changed (Excel to CSV, so it loads with `read_csv()`); the values are the authors'. The file was renamed to something shorter. The authors' `variable list` sheet is copied at the end of this README. Please cite both the paper and the dataset (see CITATION.md).

_Below: the authors' README (README.md), NOT trimmed automatically - edit by hand_

---

# Data from: Effect of parasite infection and invasion history on feeding, growth and energy allocation of cane toads

[https://doi.org/10.5061/dryad.wm37pvmwd](https://doi.org/10.5061/dryad.wm37pvmwd)

## Description of the data and file structure

Data are from an experiment where cane toads from different sites were exposed to lungworm parasites from different sites. Toads were then individually housed and maintained in captivity for 4 months. After 4 months toads were euthanized and their level of infection was determined and their gonads, liver, and fat bodies were weighed.

'na' indicates values that were not measured

Variables in the dataset are:

**Variable                     explanation**

ID                                Individual toad identifier

Treatment                  Control vs exposed to parasite larvae from 1 of 6 sites

Sex                              sex of each toad, Male or Female

Litter                           family identifier of each toad

toad site                      capture location of parental toads

toad state                    Australian state each toad site is located in

Exposed?                    Exposed to larvae Yes vs No

infected?                     Adult parasites present in the lungs at postmortem Yes vs No

worm state                  Australian state each parasite location is located in.'null' indicates uninfected Controls

total gonad wt            gonad mass(g)

fat wt                            fat body mass (g)

liver wt                         liver mass (g)

Total Rhabdias            number of adult parasites in the lungs at postmortem

final SVL                       snout-vent length at end of study (mm)

final mass                    body mass at end of study (g)

start SVL                     snout-vent length at beginning of study (mm)

SVL2-SVL1                  change in SVL during study  (mm)

SVL Growth rate        daily growth rate in snout-vent length during study (mm/day)

Total food eaten         amount of food consumed during study (g)

Missing data code: na


## Variable list (from the authors' "variable list" sheet)

| Variable | explanation |
|---|---|
| ID | Individual toad identifier |
| Treatment | Control vs exposed to parasite larvae from 1 of 6 sites |
| sex | sex of each toad |
| litter | family identifier of each toad |
| toad site | capture location of parental toads |
| toad state | Australian state each toad site is located in |
| Exposed? | Exposed to larvae Yes vs No |
| infected? | Adult parasites present in the lungs at postmortem Yes vs No |
| worm state | Australian state each parasite location is located in |
| total gonad wt (g) | gonad mass |
| fat wt (g) | fat body mass |
| liver wt (g) | liver mass |
| Total Rhabdias in lungs | number of adult parasites in the lungs at postmortem |
| final SVL (mm) | snout-vent length at end of study |
| final mass (g) | body mass at end of study |
| start SVL (mm) | snout-vent length at beginning of study |
| SVL2-SVL1 (mm) | change in SVL during study |
| SVL Growth rate (mm/day) | daily growth rate in snout-vent length during study |
| Total food eaten (g) | amount of food consumed during study |
