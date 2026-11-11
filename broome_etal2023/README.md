# Weight loss and lean-tissue preservation in cats — data

## Files

| File | Contents |
|---|---|
| `Broome_2023_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

116 rows. The cat sheet contains 116 clinical weight-management records. Cats entered a supervised programme rather than being randomly assigned to different degrees of obesity. The file records starting characteristics, diet information and programme outcomes. Before-and-after body-composition measurements were available for 58 cats that completed weight management; the CSV also retains records without those follow-up measurements.

## Preparation of this CSV

All 116 cat records are retained. change_lean, weight_loss and above40 are renamed without recalculation. Missing follow-up measurements remain NA. above40 records starting weight more than 40% above ideal.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source case_number. |
| lean_change | Percentage change in DXA lean tissue; negative = loss. |
| weight_loss | Percentage loss of total body weight. |
| severe_obesity | Source above40: starting weight >40% above ideal; categorical 0/1. Observed categories: no, yes. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1038/s41598-023-50197-y

Original data: https://doi.org/10.1038/s41598-023-50197-y
