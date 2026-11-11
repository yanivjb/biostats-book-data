# Experiencing pain while viewing nature — data

## Files

| File | Contents |
|---|---|
| [Steininger_2025_project.csv](Steininger_2025_project.csv) | Ready-to-load CSV; 49 rows. Mean pain ratings for each participant in nature, urban and neutral scenes, with the prepared urban-minus-nature difference. |
| [original_data/](original_data/) | Input tables retained before this script’s preparation; see the provenance record in that folder. |
| [prepare_data.R](prepare_data.R) | Commented R script that reproduces the prepared CSV file(s) from those inputs. |
| [README.md](README.md) | File structure, rows, column definitions, missing values and preparation. |
| [CITATION.md](CITATION.md) | Paper and original-source citations and source terms. |

## Data collection

Forty-nine volunteers experienced painful electrical stimulation while viewing different audiovisual environments, including natural and urban scenes. Repeated ratings describe pain and other experiences. Pain-intensity ratings were averaged for each participant in each scene condition in the project CSV. Electrical stimulation was calibrated separately for each participant to a target pain rating of 6 on a 0–8 scale. The nature, urban and indoor scenes were shown in counterbalanced order.

## Prepared tables

Pain-intensity records (rating_content = int) were averaged by participant, gender and video condition. nature_pain, urban_pain and neutral_pain retain the three means. nature_benefit = urban_pain − nature_pain. A missing component remains NA.

original_data contains the input table used for this teaching file, before the filtering, aggregation and calculations in prepare_data.R. Where the deposit was an Excel/SPSS workbook, this is a CSV export of its named worksheet/table (the original workbook remains at the cited deposit); it is not a byte-identical copy of the original workbook. No sequence files are included.

The ready file(s) can be loaded directly with `readr::read_csv()`. `NA` denotes a missing value, not zero.

## Reproducing preparation

With tidyverse installed, run `Rscript prepare_data.R` from this folder, or give Rscript the path to the script. It reads only the files in `original_data/` and writes the ready CSV file(s) named above. The comments document selections, row summaries, differences and missing-value rules.

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

## Sources

**Paper:** Steininger, M. O., White, M. P., Lengersdorff, L., Zhang, L., Smalley, A. J., Kühn, S., & Lamm, C. (2025). Nature exposure induces analgesic effects by acting on nociception-related neural processing. Nature Communications, 16(1), 2037. https://doi.org/10.1038/s41467-025-56870-2

**Original data:** Steininger, M. O. (n.d.). Pain modulation by nature: How exposure to nature stimuli impacts the neural processing of pain [Data and materials]. OSF. https://osf.io/t8dqu/ (accessed 10 November 2026).
