# Dog smell and ageing — data

## Files

| File | Contents |
|---|---|
| `Corona_2026_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

65 rows. The cross-sectional table contains 65 dogs tested with a standard odour battery. It records age, body weight, sex and measures of habituation and interaction with individual odours. A separate key defines the assay measures. Odours were presented for 30 seconds in a repeated-presentation sequence, and interaction times were measured from video. The project CSV summarises each dog’s initial interactions with the 16 retained odours.

## Preparation of this CSV

The 16 initial-interaction-duration columns beginning IID: are averaged for each dog. A missing component makes the mean NA. smell_time is this mean in seconds; log_smell_time = ln(1 + smell_time). Age in months and body mass in kg are retained.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source Assigned ID. |
| age_months | Dog age, months. |
| mass | Dog body mass, kg. |
| smell_time | Mean initial odour-interaction duration across 16 IID odours, seconds. |
| log_smell_time | Natural log of (1 + smell_time). |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1038/s41598-026-59321-0

Original data: https://doi.org/10.1038/s41598-026-59321-0
