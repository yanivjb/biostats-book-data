# Nature exposure and pain — data

## Files

| File | Contents |
|---|---|
| `Steininger_2025_project.csv` | Project data file. |
| `CITATION.md` | Paper and source-data citations. |

## Rows and collection

49 rows. Forty-nine volunteers experienced painful electrical stimulation while viewing different audiovisual environments, including natural and urban scenes. Repeated ratings describe pain and other experiences. Pain-intensity ratings were averaged for each participant in each scene condition in the project CSV. Electrical stimulation was calibrated separately for each participant to a target pain rating of 6 on a 0–8 scale. The nature, urban and indoor scenes were shown in counterbalanced order.

## Preparation of this CSV

Pain-intensity records (rating_content = int) were averaged by participant, gender and video condition. nature_pain, urban_pain and neutral_pain retain the three means. nature_benefit = urban_pain − nature_pain. A missing component remains NA.

## Columns and codes

| Column | Meaning |
|---|---|
| id | Source subject identifier. |
| nature_pain | Participant mean pain-intensity rating during nature scenes, source rating-scale units. |
| urban_pain | Participant mean pain-intensity rating during urban scenes, same scale. |
| nature_benefit | urban_pain minus nature_pain; positive = less pain in nature. |
| neutral_pain | Mean pain intensity in the separate neutral condition, same scale. |
| gender | Self-reported gender, categorical; not a hormone measurement. Observed categories: female, male. |

## Missing values

`NA` denotes a missing measurement or a summary with a missing required component; it is not a measured zero. Missing values were not replaced by zero.


## Sources and citation

See [CITATION.md](CITATION.md) for the paper, original dataset and source terms.

Paper: https://doi.org/10.1038/s41467-025-56870-2

Original data: https://osf.io/t8dqu/
