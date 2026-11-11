# Plants and earthworms in soil with microplastic — data

## Files

| File | Contents |
|---|---|
| [Rittelmann-Woods_2023_Daucus_carota_48pots.csv](Rittelmann-Woods_2023_Daucus_carota_48pots.csv) | Ready-to-load CSV; 48 rows. All 48 carrot pots and all treatment columns from the microplastic, cork, infusion and earthworm experiment. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |
| [DATA_DICTIONARY.md](DATA_DICTIONARY.md) | Additional column definitions from the source documentation. |

## Data collection

The experiment crossed granule type (none, cork or EPDM rubber), EPDM infusion present or absent, and earthworms present or absent. Four pots represented each combination for each of seven grassland species, giving 336 pots. Pots were randomly positioned in a greenhouse; each held one plant. A single species gives a biologically defined 48-pot project.

## Prepared tables

Species = Dau_car was retained: all 48 carrot pots, all 42 original columns, and all 12 treatment combinations (four pots per combination). One Total_mass value is missing. Subsequent worm survival was not used to remove rows.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

## Columns and codes

| Column | Meaning |
|---|---|
| No | Pot/plant identifier. |
| Species | Dau_car = Daucus carota, the prespecified carrot species. |
| Granulate | No granules (GranC), cork, or EPDM; categorical. |
| Infused | Assigned EPDM-infused fertilizer: 0 absent, 1 present; categorical. |
| EW | Assigned earthworms: 0 absent, 1 present; categorical. |
| EPDM / Cork / Control / Treatment | Alternative encodings of the assigned treatments: individual indicators and a combined label. |
| Plant_dead | Plant dead at harvest: 0 no, 1 yes. |
| Above_mass / Below_mass / Total_mass | Aboveground, belowground and total dry biomass, g. |
| Total_L_area | Initial estimated leaf area, mm². |
| EW_alive | Worms found alive at harvest; a later outcome, not assigned treatment. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

`DATA_DICTIONARY.md` defines all 42 retained source columns.

## Sources

**Paper:** Rittelmann-Woods, E., Lachaise, T., & van Kleunen, M. (2023). Negative effects of EPDM microplastic and cork granules on plant growth are mitigated by earthworms and likely caused by their structural properties. Science of The Total Environment, 897, 165354. https://doi.org/10.1016/j.scitotenv.2023.165354

**Original data:** van Kleunen, Mark, Rittelmann-Woods, Elina, & Lachaise, Tom (2024). EPDM microplastic and earthworm effects on plants (Version 6) [Dataset]. Dryad. https://doi.org/10.5061/dryad.xgxd254n7
