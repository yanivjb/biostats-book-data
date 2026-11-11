# Dog smell and ageing

**Paper:** Corona, A. C., Harrison, H., Hopper, R. G., Smith, A. L., Rogers, C. M., Cook, C. L., Salzman, M. M., Peterson, K. D., Hall, N. J., & Mowat, F. M. (2026). Reliability, repeatability, and age associations of the dogSIT (dog Smell Interaction Test) battery in untrained companion dogs (Canis lupus familiaris). Scientific Reports, 16(1), 26518. https://doi.org/10.1038/s41598-026-59321-0

**Original data:** https://doi.org/10.1038/s41598-026-59321-0

This README describes the teaching files in `corona_etal2026`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Corona_2026_project.csv` | 65 rows; 5 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Corona_2026_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 65 study-unit rows. 65 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Do age and body mass explain dogs’ mean interaction with an odour battery?

## Collection and biological context

The cross-sectional table contains 65 dogs tested with a standard odour battery. It records age, body weight, sex and measures of habituation and interaction with individual odours. A separate key defines the assay measures.

The mean initial interaction duration across the same odour battery is in seconds before log(1 + seconds). Age is months and mass kg.

## Preparation and sampling unit

smell_time is the arithmetic mean of the same 16 initial-interaction-duration IID odour columns, in seconds. A missing component makes the mean NA. log_smell_time = natural log(1 + smell_time). This behavioural duration reflects motivation as well as smell ability; retests are not additional dogs.

The odour battery is a behavioural engagement measure, not a pure sensory threshold.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| age_months | Dog age, months. |
| mass | Dog body mass, kg. |
| smell_time | Mean initial odour-interaction duration across 16 IID odours, seconds. |
| log_smell_time | Natural log of (1 + smell_time). |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

Each dog has one summary of the same 16 odour measurements. Duration reflects motivation and behaviour as well as sensory ability; repeated odours are not independent dogs.

65 dogs; all listed odour durations contribute to the fixed battery mean. This is behavioural engagement, not pure receptor sensitivity.

## Sources

Paper: https://doi.org/10.1038/s41598-026-59321-0

Original data: https://doi.org/10.1038/s41598-026-59321-0

Prepared from 41598_2026_59321_MOESM1_ESM__cross_sectional_age.csv. Preparation choices are described above. No model results or solution code are included.
