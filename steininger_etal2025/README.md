# Nature exposure and pain

**Paper:** Steininger, M. O., White, M. P., Lengersdorff, L., Zhang, L., Smalley, A. J., Kühn, S., & Lamm, C. (2025). Nature exposure induces analgesic effects by acting on nociception-related neural processing. Nature Communications, 16(1), 2037. https://doi.org/10.1038/s41467-025-56870-2

**Original data:** https://osf.io/t8dqu/

This README describes the teaching files in `steininger_etal2025`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Steininger_2025_project.csv` | 49 rows; 6 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Steininger_2025_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 49 study-unit rows. 48 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Who experiences stronger nature-related pain relief?

## Collection and biological context

Forty-nine volunteers experienced painful electrical stimulation while viewing different audiovisual environments, including natural and urban scenes. Repeated ratings describe pain and other experiences. A separate traits table provides participant characteristics.

Positive urban-minus-nature pain indicates nature-related relief. Pain in the separate neutral condition measures general pain responsiveness without sharing a term with that difference. Gender is reported identity, not a hormonal measurement.

## Preparation and sampling unit

Pain-intensity ratings only, averaged by participant and video condition. nature_benefit = urban_pain minus nature_pain; positive means less pain during nature. neutral_pain is the separate neutral-condition mean. Both original condition means remain available. Missing condition means are retained. No separate trait table is required.

Neutral-condition pain is separate from both terms in nature_benefit. Avoid using either component of a difference as a predictor of that same difference without considering mathematical coupling.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| nature_pain | Participant mean pain-intensity rating during nature scenes, source rating-scale units. |
| urban_pain | Participant mean pain-intensity rating during urban scenes, same scale. |
| nature_benefit | urban_pain minus nature_pain; positive = less pain in nature. |
| neutral_pain | Mean pain intensity in the separate neutral condition, same scale. |
| gender | Self-reported gender, categorical; not a hormone measurement. Observed categories: female, male. Use as a factor. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

49 people, one within-person contrast each. This preserves the analgesia question and uses only immediate_ratings.csv. Gender comparisons are observational and trial averages share an experimental protocol. Do not treat the neutral predictor as a randomised cause of relief.

48 complete participant contrasts; inspect spread across baseline responsiveness and gender. This retains the pain-relief question.

## Sources

Paper: https://doi.org/10.1038/s41467-025-56870-2

Original data: https://osf.io/t8dqu/

Prepared from immediate_ratings.csv. Preparation choices are described above. No model results or solution code are included.
