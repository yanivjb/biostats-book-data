# Short sleep and recognising unfamiliar faces

**Paper:** Beattie, L., Walsh, D., McLaren, J., Biello, S. M., & White, D. (2016). Perceptual impairment in face identification with poor sleep. Royal Society Open Science, 3(10), 160321. https://doi.org/10.1098/rsos.160321

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.r620r

This README describes the teaching files in `beattie_etal2016`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Beattie_2016_project.csv` | 50 rows; 4 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Beattie_2016_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 50 study-unit rows. 50 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Are sleep amount and current sleepiness associated with face-matching performance?

## Collection and biological context

Experiment 2 used sleep diaries for the three nights before a face-matching task. Sixty-two volunteers participated initially; 50 met the study’s sleep-pattern and health criteria. The sample includes short sleepers and controls, defined from their existing sleep patterns rather than randomly assigned sleep restriction. The worksheet has a grouped-label row before the actual variable names.

Accuracy is percent correct across the face task, not a binary trial outcome. Sleep hours and subjective current sleepiness describe different aspects of sleep.

## Preparation and sampling unit

Selected CSV is already close to one row per unit; filtering, renaming and a stated transformation are the main preparation steps.



Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| accuracy | Overall face-task percent correct, 0–100. |
| sleep_hours | Average sleep duration, hours. |
| sleepiness | Karolinska Sleepiness Scale (KSS); higher = sleepier. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

The response aggregates many trials per person. Check ceiling effects. Sleep was self-selected, so this is an observational association, not a sleep-deprivation experiment.

No substantial new obstacle in this worked question; retain the sampling and design caveats.

## Sources

Paper: https://doi.org/10.1098/rsos.160321

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.r620r

Prepared from S2_exp2data__Sheet1.csv. Preparation choices are described above. No model results or solution code are included.
