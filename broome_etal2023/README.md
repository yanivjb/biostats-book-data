# Obese cat weight loss

**Paper:** Broome, H. A. O., Woods-Lee, G. R. T., Flanagan, J., Biourge, V., & German, A. J. (2023). Weight loss outcomes are generally worse for dogs and cats with class II obesity, defined as > 40% overweight. Scientific Reports, 13(1), 22958. https://doi.org/10.1038/s41598-023-50197-y

**Original data:** https://doi.org/10.1038/s41598-023-50197-y

This README describes the teaching files in `broome_etal2023`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Broome_2023_project.csv` | 116 rows; 4 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Broome_2023_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 116 study-unit rows. 58 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Do more severely obese cats lose more lean tissue for the same percentage weight loss?

## Collection and biological context

The cat sheet contains 116 clinical weight-management records. Cats entered a supervised programme rather than being randomly assigned to different degrees of obesity. The file records starting characteristics, diet information and programme outcomes.

Lean change is percent change in DXA-measured lean tissue; negative values indicate loss. Total weight loss is a percentage and severe obesity means more than 40% above ideal starting weight.

## Preparation and sampling unit

Cat sheet only; all 116 records retained. lean_change is percentage change in DXA lean tissue; negative means loss. weight_loss is percentage total weight loss. severe_obesity is the source above40 indicator (>40% above ideal weight), a category. Only 58 records have all three fields. Completer selection and shared components of total/lean mass limit causal interpretation.

The repeat-DXA subset is selected by follow-up availability. Total and lean mass share a component, so their relationship is not a causal conversion rate.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| lean_change | Percentage change in DXA lean tissue; negative = loss. |
| weight_loss | Percentage loss of total body weight. |
| severe_obesity | Source above40: starting weight >40% above ideal; categorical 0/1. Observed categories: no, yes. Use as a factor. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

This uses the cat sheet’s before-and-after body-composition subset and retains the paper’s tissue-preservation question. Cats returning for repeat DXA may be selected completers. Lean mass contributes to total body mass, so the weight-loss slope partly reflects shared components and is not a causal physiological conversion.

58 cats with repeat DXA. This retains the lean-tissue-preservation question and has much better residual behaviour than weight-loss rate; follow-up selection and shared body-mass components still matter.

## Sources

Paper: https://doi.org/10.1038/s41598-023-50197-y

Original data: https://doi.org/10.1038/s41598-023-50197-y

Prepared from 41598_2023_50197_MOESM1_ESM__cat.csv. Preparation choices are described above. No model results or solution code are included.
