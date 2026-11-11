# Diabetic kidney disease

**Paper:** Khurana, I., Hansen, T. W., Persson, F., Birkelund, S., Singh Ahluwalia, T., Maxwell, S., Zaki, R. A., Kaipananickal, H., Gill, S. S., Nazli, J., Theilade, S., Miguna, V. M., Tofte, N., Ottesen, E. C., Rossing, P., & El-Osta, A. (2026). Blood-Derived DNA Methylation Biomarkers Predict Diabetic Kidney Disease and Map to Epigenomic Remodeling in Renal Cells. Diabetes, , db260015. https://doi.org/10.2337/db26-0015

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.69p8cz9h5

This README describes the teaching files in `khurana_etal2026`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Khurana_2026_project.csv` | 96 rows; 5 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Khurana_2026_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 96 study-unit rows. 96 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Are glycaemic control and blood pressure associated with albumin excretion in type-1 diabetes?

## Collection and biological context

The paper’s discovery cohort contains 101 participants with type 1 diabetes and 20 non-diabetic controls. Participants came from a larger Danish cohort; the diabetes subset had long disease duration and was sampled across kidney-risk categories. The small sample-information table contains clinical measurements. The large methylation count matrix is not needed for this question.

Albumin excretion is natural-log transformed. HbA1c reflects longer-term glycaemia and systolic blood pressure reflects vascular load.

## Preparation and sampling unit

Type-1 diabetes participants with positive observed AER only; healthy controls and missing/nonpositive AER are excluded. This selection leaves 96 records. No age-derived eGFR response was substituted.



Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| log_albumin | Natural log of albumin_excretion. |
| hba1c | Baseline glycated haemoglobin (HbA1c), source percentage. |
| pressure | Systolic blood pressure, mm Hg. |
| albumin_excretion | Source AER, albumin excretion rate (mg/24 h). |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

The diabetic participants were selected across kidney-risk categories; associations need not represent an unselected diabetic population.

96 complete diabetic participants. Risk-stratified sampling limits population inference, and AER is not the age-derived eGFR outcome.

## Sources

Paper: https://doi.org/10.2337/db26-0015

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.69p8cz9h5

Prepared from Sample_Information_Manuscript.csv. Preparation choices are described above. No model results or solution code are included.
