# Milkweed: genes, environment and defence — data

## Files

| File | Contents |
|---|---|
| `Potts_2021_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

45 rows. The reciprocal transplant grew offspring from three maternal lines at three locations within one Michigan population, with five seedlings per line–location combination: 45 plants. Each line grew both at its home site and at the other sites. Plants were measured repeatedly through the growing season. The project CSV retains the Week-10 height measurement for each plant. Each family consists of seedlings sharing a maternal parent. At each location, plants grew in soil collected there, in a randomised grid with 0.5-metre spacing.

## Preparation of this CSV

Only Week 10 records were retained, one row for each of 45 plants. The source full-stop (.) missing-height code was changed to NA. family is the source Genotype label and site is Site.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source plantid. |
| height | Week-10 milkweed height, original ht measurement (cm). |
| family | Maternal family (source Genotype); categorical, not a sequenced genotype. Observed categories: 14, 20, 44. |
| site | Transplant site; categorical. Observed categories: RT14, RT20, RT44. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1002/ece3.7639

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.rv15dv47x
