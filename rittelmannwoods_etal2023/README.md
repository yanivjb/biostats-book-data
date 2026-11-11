# Can earthworms buffer microplastic effects on plants?

**Paper:** Rittelmann-Woods, E., Lachaise, T., & van Kleunen, M. (2023). Negative effects of EPDM microplastic and cork granules on plant growth are mitigated by earthworms and likely caused by their structural properties. Science of The Total Environment, 897, 165354. https://doi.org/10.1016/j.scitotenv.2023.165354

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.xgxd254n7

This README describes the teaching files in `rittelmannwoods_etal2023`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Rittelmann-Woods_2023_Daucus_carota_48pots.csv` | 48 rows; 42 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |
| `DATA_DICTIONARY.md` | Definitions and units for all 42 original columns. |

## Start here

Use **Rittelmann-Woods_2023_Daucus_carota_48pots.csv**. One CSV is sufficient; no reshape or join is needed.

**Motivating question:** Do earthworms and leachate exposure affect carrot growth?

## Data collection

The experiment crossed granule type (none, cork or EPDM rubber), EPDM infusion present or absent, and earthworms present or absent. Four pots represented each combination for each of seven grassland species, giving 336 pots. Pots were randomly positioned in a greenhouse; each held one plant. A single species gives a biologically defined 48-pot project.

## Preparation and sampling unit

All 48 carrot (Daucus carota) pots are retained, with 42 original columns and four pots in each of 12 factorial treatment combinations. One Total_mass is missing, leaving 47 complete biomass observations. No pot was removed because earthworms later died.

## Key variables

| Column | Meaning |
|---|---|
| No | Pot/plant identifier. |
| Species | Dau_car = Daucus carota, the prespecified carrot species. |
| Granulate | No granules (GranC), cork, or EPDM; categorical. |
| Infused | Assigned EPDM-infused fertilizer: 0 absent, 1 present; categorical. |
| EW | Assigned earthworms: 0 absent, 1 present; categorical. |
| EPDM / Cork / Control / Treatment | Original redundant treatment indicators and combination label. Do not enter every redundant encoding simultaneously. |
| Plant_dead | Plant dead at harvest: 0 no, 1 yes. |
| Above_mass / Below_mass / Total_mass | Aboveground, belowground and total dry biomass, g. |
| Total_L_area | Initial estimated leaf area, mm². |
| EW_alive | Worms found alive at harvest; a later outcome, not assigned treatment. |

`DATA_DICTIONARY.md` defines all 42 columns, including the remaining root and worm measurements. Select one growth response; correlated or derived outcomes are not independent replication. Worm survival and initial plant size answer different biological questions from assigned treatments.

## Planning an analysis

Choose a biological response and at least two substantive explanatory variables. Make predictions before fitting a model. Consider an interaction only when it has a biological interpretation. Check group sizes, missingness and residuals; do not treat IDs or repeated measurements as new replicates.

Carrot is selected by biological identity before inspecting results, giving 48 pots rather than a random slice of 336. Check death/missing outcomes; no automatic deletion of outliers.

## Sources

Paper: https://doi.org/10.1016/j.scitotenv.2023.165354

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.xgxd254n7

This folder contains the prepared classroom version. Original files and documentation are available from the source links above.
