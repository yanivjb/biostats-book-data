# Understanding out-group minds

**Paper:** Payne, B., Bird, G., & Catmur, C. (2024). Poorer representation of minds underpins less accurate mental state inference for out-groups. Scientific Reports, 14(1), 19432. https://doi.org/10.1038/s41598-024-67311-3

**Original data:** https://osf.io/nfamd/

This README describes the teaching files in `payne_etal2024`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Payne_2024_project.csv` | 128 rows; 5 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Payne_2024_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 128 study-unit rows. 128 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Do emotion-identification and autistic-trait scores relate to out-group prediction error?

## Collection and biological context

Study 2 involved 128 participants making judgments about others’ views. The analysis file includes repeated judgments, group relationships, accuracy-related measures and questionnaire scores. Participants and target statements can both recur.

Mean absolute distance on the five-point belief scale measures prediction error: larger means less accurate. TAS and AQ describe self-reported traits, not diagnoses.

## Preparation and sampling unit

Out-group initial judgments only. mean_error averages absolute distance between prediction and target ground truth on a five-point rating scale: higher means less accurate. emotion_score = TAS, autistic_traits = AQ; neither is a diagnosis. trials records the number of included judgments. One row per participant.



Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| mean_error | Mean absolute out-group prediction error on a five-point belief scale; larger = less accurate. |
| emotion_score | Toronto Alexithymia Scale (TAS) score; greater difficulty identifying/describing emotions. |
| autistic_traits | Autism-Spectrum Quotient (AQ) score; self-reported traits, not a diagnosis. |
| trials | Number of initial out-group judgments summarised; not independent participants. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

Judgments are already averaged to one row per participant. Participants contributed different numbers of out-group trials; trials records that count. Error is continuous but bounded, so inspect residuals.

Continuous mean rating-distance error replaces binary trial accuracy. Bounded averages and unequal trial counts need discussion.

## Sources

Paper: https://doi.org/10.1038/s41598-024-67311-3

Original data: https://osf.io/nfamd/

Prepared from PR_Study2_Data.csv. Preparation choices are described above. No model results or solution code are included.
