# Burn or rot: two fates of a leaf — data

## Files

| File | Contents |
|---|---|
| `Grootemaat_2015_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

32 rows. Researchers studied 32 evergreen perennial species from four Australian sites spanning rainfall and soil-nutrient contrasts. They burned individual leaves under controlled conditions, using fresh green, dried green and senesced material. Decomposition rates came from a common-garden litter experiment. MEANS.csv contains species-by-material summaries; species_list.csv provides taxonomic and site information.

## Preparation of this CSV

Only material = FRESH records were retained. Each row contains the authors’ mean measurements for one species. Ignition time, specific leaf area and their natural logarithms are supplied.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Species name. |
| log_ignition | Natural log of ignition_seconds. |
| moisture | Fresh-leaf moisture content, percent of oven-dry mass. |
| log_sla | Natural log of sla_cm2_g. |
| ignition_seconds | Time to ignition, seconds. |
| sla_cm2_g | Specific leaf area, cm² per g dry mass. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1111/1365-2435.12449

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.m41f1
