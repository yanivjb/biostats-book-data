# Can an enriched environment reshape a guppy brain?

**Paper:** Fong, S., Buechel, S. D., Boussard, A., Kotrschal, A., & Kolm, N. (2019). Plastic changes in brain morphology in relation to learning and environmental enrichment in the guppy (Poecilia reticulata). Journal of Experimental Biology, , jeb.200402. https://doi.org/10.1242/jeb.200402

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.c4q7h62

This README describes the teaching files in `fong_etal2019`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Fong_2019_project.csv` | 79 rows; 7 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Fong_2019_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 79 study-unit rows. 79 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Does learning treatment predict brain size beyond fish body size?

## Collection and biological context

Eighty adult female guppies were individually housed and assigned to reversal-learning or spatial-learning experiments. Within each experiment, fish were assigned to training or an environment-control group. Controls experienced comparable handling and surroundings without the learning task. Brain regions and body length were measured after the experiment; the supplied table contains 79 fish records and a separate label key.

Total brain volume and standard length are natural-log transformed. Treatment distinguishes trained and control settings; batch records shared experimental timing.

## Preparation and sampling unit

Selected CSV is already close to one row per unit; filtering, renaming and a stated transformation are the main preparation steps.

log_length = log(body_length), with standard length in mm. These are individual female fish; batch is a shared experimental timing group.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| log_brain | Natural log of brain_volume. |
| log_length | log_length = log(body_length), with standard length in mm. |
| treatment | Assigned experimental treatment; categorical, with labels listed below. Observed categories: CRL, CSL, TRL, TSL. Use as a factor. |
| batch | Experimental batch; categorical. Observed categories: 1, 2. Use as a factor. |
| brain_volume | Total brain volume, original source total (mm³). |
| body_length | Fish standard length, original source sl (mm). |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

Use original brain volume rather than supplied residuals. Female guppies were housed individually; four treatment labels must be read with the paper’s design, not called a simple enrichment dose.

79 individually housed fish; modest residual tails merit inspection. Do not analyse supplied size residuals as if they were original brain volumes.

## Sources

Paper: https://doi.org/10.1242/jeb.200402

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.c4q7h62

Prepared from Fong_et_al_brain_plasticity_data__Data.csv. Preparation choices are described above. No model results or solution code are included.
