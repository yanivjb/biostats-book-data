# The costs of a lungworm invasion for cane toads — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 304 rows. Growth, food-consumption and organ measurements from cane toads in the lungworm-exposure experiment. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers bred toads from ten parental source sites, producing twelve families under laboratory conditions. At roughly six months old, 227 offspring were exposed to 50 lungworm larvae from one of six parasite sources; 77 received sham exposure. Toads were then housed individually, food consumption was monitored, and growth and organ masses were measured over approximately four months. At dissection, 100 exposed toads had adult worms.

## Prepared tables

All source rows and columns are retained. Only CSV formatting and the missing-value marker (NA) are standardised; no biological grouping, exclusions or transformations are applied.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

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

## Sources

**Paper:** Crane, H. R., Rollins, L. A., Shine, R., & Brown, G. P. (2025). Effect of parasite infection and invasion history on feeding, growth, and energy allocation of cane toads. Biological Journal of the Linnean Society, 144(4), blae054. https://doi.org/10.1093/biolinnean/blae054

**Original data:** Brown, G. P. (2024). Data from: Effect of parasite infection and invasion history on feeding, growth and energy allocation of cane toads (Version 5) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.WM37PVMWD
