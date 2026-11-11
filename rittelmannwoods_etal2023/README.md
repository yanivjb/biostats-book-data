# Can earthworms buffer microplastic effects on plants? — data

## Files

| File | Contents |
|---|---|
| `Rittelmann-Woods_2023_Daucus_carota_48pots.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

48 rows. The experiment crossed granule type (none, cork or EPDM rubber), EPDM infusion present or absent, and earthworms present or absent. Four pots represented each combination for each of seven grassland species, giving 336 pots. Pots were randomly positioned in a greenhouse; each held one plant. A single species gives a biologically defined 48-pot project.

## Preparation of this CSV

Species = Dau_car was retained: all 48 carrot pots, all 42 original columns, and all 12 treatment combinations (four pots per combination). One Total_mass value is missing. Subsequent worm survival was not used to remove rows.

## Columns and codes

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

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.

`DATA_DICTIONARY.md` defines all 42 retained source columns.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1016/j.scitotenv.2023.165354

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.xgxd254n7
