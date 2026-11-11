# Brain responses to health images

**Paper:** Castellano, P., Leu, C., Mazzetti, M., & Liberati, G. (2025). Using fast periodic visual stimulation to investigate the processing of health-related images in the human brain. Scientific Reports, 15(1), 45597. https://doi.org/10.1038/s41598-025-29515-z

**Original data:** https://osf.io/9423j/

This README describes the teaching files in `castellano_etal2025`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Castellano_2025_project.csv` | 41 rows; 4 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Castellano_2025_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 41 study-unit rows. 41 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Do perceived stress and trait anxiety explain variation in thermal pain threshold?

## Collection and biological context

Forty-one healthy young volunteers supplied questionnaire scores and underwent thermal pain-threshold testing. The study also recorded EEG, but the participant-level psychological and pain table supports a separate question without analysing brain signals.

Threshold is the temperature in degrees C at which warmth is reported as painful. PSS and STAI measure different, potentially correlated psychological constructs.

## Preparation and sampling unit

Selected CSV is already close to one row per unit; filtering, renaming and a stated transformation are the main preparation steps.



Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| threshold | Thermal pain threshold, degrees C; temperature reported as painful. |
| stress | Perceived Stress Scale total (PSS_TOT); higher = greater reported stress. |
| anxiety | State-Trait Anxiety Inventory total (STAI_TOT); higher = greater reported anxiety. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

41 healthy young volunteers; self-report scores are not diagnoses. Choose these two measures in advance rather than screening all 36 possible questionnaires.

Two unusually low thermal thresholds give a pronounced residual tail. Keep them visible and avoid treating a marginal association as robust.

## Sources

Paper: https://doi.org/10.1038/s41598-025-29515-z

Original data: https://osf.io/9423j/

Prepared from Psychological_and_Pain_threshold_data__Psychological_and_Pain.csv. Preparation choices are described above. No model results or solution code are included.
