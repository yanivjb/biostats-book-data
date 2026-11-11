# Senior dog cognitive trial

**Paper:** Simon, K. E., Russell, K., Mondino, A., Yang, C. C., Case, B. C., Anderson, Z., Whitley, C., Griffith, E., Gruen, M. E., & Olby, N. J. (2024). A randomized, controlled clinical trial demonstrates improved owner-assessed cognitive function in senior dogs receiving a senolytic and NAD+ precursor combination. Scientific Reports, 14(1), 12399. https://doi.org/10.1038/s41598-024-63031-w

**Original data:** https://doi.org/10.1038/s41598-024-63031-w

This README describes the teaching files in `simon_etal2024`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Simon_2024_project.csv` | 69 rows; 4 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Simon_2024_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 69 study-unit rows. 62 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Does supplement group predict three-month walking speed beyond baseline mobility?

## Collection and biological context

Older dogs entered a blinded trial with placebo and supplement-dose groups. Owner-reported cognitive measures were recorded at baseline and follow-up. The source sheet also records age, physical condition, eligibility and follow-up information.

Off-leash gait speed measures physical mobility in m/s; higher values indicate faster walking. Treatment identifies placebo and two supplement doses.

## Preparation and sampling unit

One row per enrolled source record with baseline and month-3 off-leash gait speed (m/s). 69 rows have an ID, 62 have baseline, follow-up and assigned treatment. Missing follow-up is not zero and does not create an extra dog. This is a physical-mobility question, not a test of improved cognition.

The prepared endpoint is mobility, not the paper’s owner-reported cognitive score.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| followup | Month-3 off-leash gait speed, m/s. |
| baseline | Baseline off-leash gait speed, m/s. |
| treatment | Assigned experimental treatment; categorical, with labels listed below. Observed categories: Full Dose, Low Dose, Placebo. Use as a factor. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

Use the baseline and three-month walking-speed pair for each dog. Follow-up availability may select the analysed sample; this classroom comparison is not an exact reproduction of the paper’s eligibility-restricted analysis.

62 baseline/three-month gait-speed pairs. Objective mobility retains the anti-ageing question and behaves better than the attempted owner cognitive-score model.

## Sources

Paper: https://doi.org/10.1038/s41598-024-63031-w

Original data: https://doi.org/10.1038/s41598-024-63031-w

Prepared from 41598_2024_63031_MOESM1_ESM__Raw_Data_Sheet.csv. Preparation choices are described above. No model results or solution code are included.
