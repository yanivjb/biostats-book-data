# Mantis shrimp: who packs the strongest punch?

**Paper:** Green, P. A., & Patek, S. N. (2015). Contests with deadly weapons: telson sparring in mantis shrimp (Stomatopoda). Biology Letters, 11(9), 20150558. https://doi.org/10.1098/rsbl.2015.0558

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.pd256

This README describes the teaching files in `green_patek2015`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Green_2015_project.csv` | 93 rows; 7 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Green_2015_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 93 study-unit rows. 93 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Do larger shrimp and proportionally longer striking appendages deliver stronger punches?

## Collection and biological context

The morphology-and-force table is the starting dataset, rather than the contest-winner table. Researchers measured body size and components of the striking appendage. Strike performance was represented by the maximum peak force from ten strikes by an animal. The file has a note before the header; each subsequent identified animal should contribute one morphology record.

Force and lengths are natural-log transformed: proportional size differences are the relevant comparisons. Relative merus length is merus length divided by body length. The model separates overall size from appendage proportions; this is a reparameterisation of log body length plus log merus length, not a different fitted relationship.

## Preparation and sampling unit

Selected CSV is already close to one row per unit; filtering, renaming and a stated transformation are the main preparation steps.

The logged size and appendage-proportion variables separate overall size from shape. The merus is part of the striking appendage.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| log_force | Natural log of force_N. |
| log_body | Natural log of body_length_mm. |
| log_relative_merus | Natural log of relative_merus. |
| force_N | Maximum recorded strike force for this shrimp, newtons. |
| body_length_mm | Body length, mm. |
| relative_merus | Merus length divided by body length; dimensionless appendage proportion. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

Maximum force summarises repeated strikes from each animal; correlated body and weapon dimensions can produce imprecise conditional slopes.

Using relative merus length makes overall size and shape comparisons more interpretable; it is algebraically the same fitted model as two logged lengths. Inspect the residual tail.

## Sources

Paper: https://doi.org/10.1098/rsbl.2015.0558

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.pd256

Prepared from Green_Patek_SuppData_MorphForce.csv. Preparation choices are described above. No model results or solution code are included.
