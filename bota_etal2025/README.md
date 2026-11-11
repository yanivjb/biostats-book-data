# Pitcher plants, bat poo and microbial helpers — data

## Files

| File | Contents |
|---|---|
| `Bota_2025_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

24 rows. Twenty-four Nepenthes hemsleyana plants were studied at one Bornean site. Each supplied two young pitchers. Plants received bat faeces or arthropod food daily for eight weeks, with or without UV treatment of the digestive fluid. Six sets, each containing the four treatment combinations, began at different times. Youngest-leaf and plant-growth tables retain plant identity and set.

## Preparation of this CSV

One youngest-leaf measurement is supplied for each of 24 plants. One leaf mass is missing. prey and microbes retain the assigned food and UV treatments; block is the experimental set.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source plant.id. |
| leaf_mass | Youngest-leaf dry mass, g. |
| prey | Assigned food type; categorical. Observed categories: Arthropods, Faeces. |
| microbes | Assigned UV treatment; categorical. UV perturbs microbes but may also have direct effects. Observed categories: nonsterile, sterile. |
| block | Experimental set; categorical blocking variable. Observed categories: 1, 2, 3, 4, 5, 6. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1007/s00442-025-05749-6

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.00000009p
