# Moth acoustic camouflage against bats

**Paper:** Simon, R., Dreissen, A., Leroy, H., Berg, M. P., & Halfwerk, W. (2023). Acoustic camouflage increases with body size and changes with bat echolocation frequency range in a community of nocturnally active Lepidoptera. Journal of Animal Ecology, 92(12), 2363-2372. https://doi.org/10.1111/1365-2656.14016

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.66t1g1k73

This README describes the teaching files in `simon_etal2023`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Simon_2023_project.csv` | 56 rows; 6 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Simon_2023_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 56 study-unit rows. 56 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Do moth body dimensions explain the acoustic benefit of scales?

## Collection and biological context

Researchers collected moths from eight families, measured their morphology and scanned their echoes from many angles using artificial ultrasound. A subset was scanned both intact and after body scales were removed. The fully-descaled table contains paired intact and shaved measurements for each specimen, including summaries for different frequency bands.

The supplied difference is shaved minus intact target strength in dB: positive values indicate stronger echoes after scales are removed. Body length and width are in mm before logging.

## Preparation and sampling unit

Selected CSV is already close to one row per unit; filtering, renaming and a stated transformation are the main preparation steps.

log_length = log(body_length_mm). Each acoustic contrast compares the same specimen before and after scale removal.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| scale_benefit | Shaved minus intact acoustic target strength, dB. Positive means stronger echoes after scale removal. |
| log_length | log_length = log(body_length_mm). |
| log_relative_width | Natural log of relative_width. |
| body_length_mm | Body length, mm. |
| relative_width | Body width divided by body length; dimensionless. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

Each moth contributes its own paired scale-removal contrast. Shared species and ancestry still limit independence. Relative width describes body shape at comparable length.

Paired acoustic differences remove within-moth repetition, but shared species/ancestry still need discussion; one observation is influential.

## Sources

Paper: https://doi.org/10.1111/1365-2656.14016

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.66t1g1k73

Prepared from Data_for_dryad__fully_descaled.csv. Preparation choices are described above. No model results or solution code are included.
