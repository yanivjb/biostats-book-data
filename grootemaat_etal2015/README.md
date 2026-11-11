# Burn or rot: two fates of a leaf

**Paper:** Grootemaat, S., Wright, I. J., van Bodegom, P. M., Cornelissen, J. H. C., & Cornwell, W. K. (2015). Burn or rot: leaf traits explain why flammability and decomposability are decoupled across species. Functional Ecology, 29(11), 1486-1497. https://doi.org/10.1111/1365-2435.12449

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.m41f1

This README describes the teaching files in `grootemaat_etal2015`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Grootemaat_2015_project.csv` | 32 rows; 6 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Grootemaat_2015_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 32 study-unit rows. 32 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Do leaf moisture and specific leaf area help explain ignition time?

## Collection and biological context

Researchers studied 32 evergreen perennial species from four Australian sites spanning rainfall and soil-nutrient contrasts. They burned individual leaves under controlled conditions, using fresh green, dried green and senesced material. Decomposition rates came from a common-garden litter experiment. MEANS.csv contains species-by-material summaries; species_list.csv provides taxonomic and site information.

Ignition time is measured in seconds and natural-log transformed. Moisture is percent of oven-dry mass; SLA is leaf area per dry mass.

## Preparation and sampling unit

Selected CSV is already close to one row per unit; filtering, renaming and a stated transformation are the main preparation steps.

Only fresh leaves are included; one species mean is one row.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| log_ignition | Natural log of ignition_seconds. |
| moisture | Fresh-leaf moisture content, percent of oven-dry mass. |
| log_sla | Natural log of sla_cm2_g. |
| ignition_seconds | Time to ignition, seconds. |
| sla_cm2_g | Specific leaf area, cm² per g dry mass. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

One fresh-leaf species summary per row. Shared ancestry and species sampling limit inferential independence; species-average uncertainty is not modelled.

Species means share evolutionary history; coefficients describe the sampled species, not independent evolutionary experiments.

## Sources

Paper: https://doi.org/10.1111/1365-2435.12449

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.m41f1

Prepared from MEANS.csv. Preparation choices are described above. No model results or solution code are included.
