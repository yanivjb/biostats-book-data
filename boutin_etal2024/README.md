# Sleep spindles and overnight motor memory

**Paper:** Boutin, A., Gabitov, E., Pinsard, B., Boré, A., Carrier, J., & Doyon, J. (2024). Temporal cluster-based organization of sleep spindles underlies motor memory consolidation. Proceedings of the Royal Society B: Biological Sciences, 291(2014), 20231408. https://doi.org/10.1098/rspb.2023.1408

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.nk98sf7xx

This README describes the teaching files in `boutin_etal2024`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Boutin_2024_project.csv` | 20 rows; 4 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Boutin_2024_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 20 study-unit rows. 20 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Do spindle-train length and spindle density predict overnight motor improvement?

## Collection and biological context

Healthy young adults learned a finger-tapping sequence, slept while EEG was recorded in an MRI scanner, and completed a later retention session. Screening, sleep requirements and recording-quality exclusions reduced the original 33 volunteers to 20 analysed participants. The NREM2 worksheet provides already processed participant-level spindle and performance summaries; no raw EEG analysis is needed.

Performance is the supplied offline motor-learning change score; train length and global spindle density measure different features of NREM2 sleep.

## Preparation and sampling unit

One row per supplied NREM2 participant summary. id is an added row identifier, not a verified cross-file subject key. Do not join other worksheets by row order.



Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| improvement | Motor-sequence performance change from delayed 15-minute test to 24-hour retest, percent. |
| train_length | Mean number of NREM2 sleep spindles per spindle train. |
| density | NREM2 sleep spindles per minute. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

Only 20 people. No cross-sheet row-order joins, no variable selection across all spindle features; correlate predictors and examine influential observations.

20 participants and two correlated sleep measures; low power and influential observations need attention.

## Sources

Paper: https://doi.org/10.1098/rspb.2023.1408

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.nk98sf7xx

Prepared from Dataset_SpindleClustering__NREM2.csv. Preparation choices are described above. No model results or solution code are included.
