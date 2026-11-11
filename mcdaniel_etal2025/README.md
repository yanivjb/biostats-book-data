# Mind wandering and writing

**Paper:** McDaniel, C., Habibi, A., & Kaplan, J. (2025). Mind wandering during creative incubation predicts increases in creative performance in a writing task. Scientific Reports, 15(1), 24629. https://doi.org/10.1038/s41598-025-09736-y

**Original data:** https://osf.io/qg6c7/

This README describes the teaching files in `mcdaniel_etal2025`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `McDaniel_2025_project.csv` | 200 rows; 5 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **McDaniel_2025_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 200 study-unit rows. 182 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Does incubation activity predict later creative quality beyond initial creative quality?

## Collection and biological context

Two hundred participants completed a creative-writing study with different incubation activities and task instructions. Stories before and after the break were evaluated by human raters. The table contains participant characteristics, experimental conditions, and separate ratings.

The outcome is the mean of three human creativity ratings, with the same rule used before and after incubation. Task and prior exposure describe assigned study conditions.

## Preparation and sampling unit

before and after are each the arithmetic mean of three human ratings. A missing rater score makes that timepoint mean NA; ratings are not averaged over different numbers of raters. All 200 participants are retained; 182 have all variables for the trial model. Task and exposure are categories. GPT scores are not substituted.



Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| before | Mean of three human creativity ratings before incubation. |
| after | Mean of three human creativity ratings after incubation, same scale. |
| task | Assigned incubation-task condition; categorical. Observed categories: 0-back, 2-back, mindfulness, noIncubation. Use as a factor. |
| exposure | Assigned prior-exposure condition; categorical. Observed categories: new, repeated. Use as a factor. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

Require all three ratings for each mean; no silent partial-rater mean or replacement by GPT ratings. Some task/exposure combinations may be absent. A common baseline slope is assumed; no stepwise selection.

182 people with all six required human-rater scores. The other 18 are not silently scored from a changing set of raters.

## Sources

Paper: https://doi.org/10.1038/s41598-025-09736-y

Original data: https://osf.io/qg6c7/

Prepared from data.csv. Preparation choices are described above. No model results or solution code are included.
