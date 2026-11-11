# Putting a mass on the small animals in a food web — data

## Files

| File | Contents |
|---|---|
| [ready_data.csv](ready_data.csv) | Ready-to-load CSV; 6608 rows. Live mass, body dimensions and taxonomic and collection information for tropical and temperate arthropods. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Researchers sampled near Göttingen, Germany, in summer 2014 and Jambi, Sumatra, in autumn 2014. Sites included wayside vegetation, grassland and forest strips, selected partly for proximity to the laboratory. Live pitfall traps sampled active ground animals; sweep nets sampled vegetation; litter sieving sampled animals from the forest floor. These methods encounter different kinds of arthropods.

Animals were kept cool for no more than eight hours before weighing to reduce mass loss. Researchers weighed them alive, preserved them in ethanol, and measured body length and maximum width from microscope photographs, excluding appendages. Individuals were identified to family. The supplied file contains 6608 animals; 6212 contributed to the paper’s main analysis, which excluded larvae and groups lacking width measurements.

## Prepared tables

All source rows and columns are retained. Only CSV formatting and the missing-value marker (NA) are standardised; no biological grouping, exclusions or transformations are applied.

These are the source teaching tables previously linked from this folder; they are retained byte-for-byte in original_data. The original published deposit is cited below.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

The following source definitions also describe unchanged columns in the prepared file. Renamed, suffixed and added columns are defined above. Source filenames here refer to `original_data/`.

## Source column definitions

Length-mass regression data for arthropods from different geographic regionsThis data includes data used in Sohlström et al. to estimate how live body mass of arthropods depends on body length and further co-variables.
Description of headers:
Order refers to taxonomic order.
Suborder refers to taxonomic suborder.
Family refers to taxonomic family.
Live body mass [mg] refers to the body mass of the living organism, measured using a precision scale.
Body length [mm] refers to the maximum body length, measured without appendages.
Body width [mm] refers to the maximum body width, measured without appendages.
Geographic region refers to the location where the arthropods have been sampled. “tropical” refers to organisms collected near Jambi, Indonesia and “temperate” refers to organisms collected near Göttingen, Germany.
Groups for Table S1 refers to groups that have been further subset due to taxonomy, morphological or behavioural characteristics. These are the group labels used in the original supporting Table S1.
Analysis refers to where the results of the order are presented in the publication (e.g. Main analysis, Supporting information). Results of 12 orders are presented in the main text only, results of 7 orders are presented in the main text at the order level and in the supporting information based on the Groups for Table S1 and results of 4 orders are presented in the supporting information only.Sohlstroem_et_al_Data_Dryad.csv

## Sources

**Paper:** Sohlström, E. H., Marian, L., Barnes, A. D., Haneda, N. F., Scheu, S., Rall, B. C., Brose, U., & Jochum, M. (2018). Applying generalized allometric regressions to predict live body mass of tropical and temperate arthropods. Ecology and Evolution, 8(24), 12737-12749. https://doi.org/10.1002/ece3.4702

**Original data:** Sohlström, E. H., Marian, L., Barnes, A. D., Haneda, N. F., Scheu, S., Rall, B. C., Brose, U., & Jochum, M. (2018). Data from: Applying generalised allometric regressions to predict live body mass of tropical and temperate arthropods (Version 1) [Dataset]. Dryad. https://doi.org/10.5061/DRYAD.VK24FR1
