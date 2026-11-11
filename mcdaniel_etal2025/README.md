# Mind wandering and writing — data

## Files

| File | Contents |
|---|---|
| `McDaniel_2025_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

200 rows. Two hundred participants completed a creative-writing study with different incubation activities and task instructions. Stories before and after the break were evaluated by human raters. The table contains participant characteristics, experimental conditions, and separate ratings.

## Preparation of this CSV

All 200 participant records are retained. before and after are each the arithmetic mean of three human-rater scores. A missing component makes that timepoint mean NA. task and exposure retain source conditions. No GPT ratings were substituted.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source participant id. |
| before | Mean of three human creativity ratings before incubation. |
| after | Mean of three human creativity ratings after incubation, same scale. |
| task | Assigned incubation-task condition; categorical. Observed categories: 0-back, 2-back, mindfulness, noIncubation. |
| exposure | Assigned prior-exposure condition; categorical. Observed categories: new, repeated. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1038/s41598-025-09736-y

Original data: https://osf.io/qg6c7/
