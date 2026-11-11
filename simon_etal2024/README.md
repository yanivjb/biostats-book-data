# Senior dog mobility — data

## Files

| File | Contents |
|---|---|
| `Simon_2024_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

69 rows. Older dogs entered a blinded trial with placebo and supplement-dose groups. Owner-reported cognitive measures were recorded at baseline and follow-up. The source sheet also records age, physical condition, eligibility and follow-up information. The project file records baseline and three-month off-leash walking speed.

## Preparation of this CSV

Baseline (Month 0) and Month 3 Off Leash Gait Speed are retained and renamed, in m/s. Each of the 69 records has one study ID. Missing visits remain NA; assigned treatment labels are retained.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source Study ID. |
| followup | Month-3 off-leash gait speed, m/s. |
| baseline | Baseline off-leash gait speed, m/s. |
| treatment | Assigned experimental treatment; categorical, with labels listed below. Observed categories: Full Dose, Low Dose, Placebo. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1038/s41598-024-63031-w

Original data: https://doi.org/10.1038/s41598-024-63031-w
