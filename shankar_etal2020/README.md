# How hummingbirds survive the night

**Paper:** Shankar, A., Schroeder, R. J., Wethington, S. M., Graham, C. H., & Powers, D. R. (2020). Hummingbird torpor in context: duration, more than temperature, is the key to nighttime energy savings. Journal of Avian Biology, 51(5), jav.02305. https://doi.org/10.1111/jav.02305

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.t4b8gthzh

This README describes the teaching files in `shankar_etal2020`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Shankar_2020_project.csv` | 41 rows; 7 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Shankar_2020_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 41 study-unit rows. 41 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Do torpor duration and body mass explain overnight energy expenditure?

## Collection and biological context

Researchers captured adult male hummingbirds near dusk at five sites in Arizona and Ecuador. Birds could feed before entering outdoor respirometry chambers. Oxygen consumption and chamber temperature were recorded overnight; birds were marked to avoid measuring an individual twice. The individual-summary file is the starting point, rather than the hourly oxygen readings.

Overnight energy is in kJ, mass in grams and torpor duration in hours. Temperature is the measured chamber-temperature summary.

## Preparation and sampling unit

Confirmed non-torpor nights have torpor_hours = 0; other missing torpor durations were not replaced with zero. The ID combines site, species and individual number.

Rows are birds from several species and sites, not independent species-level evolutionary replicates.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| log_energy | Natural log of energy_kJ. |
| log_mass | Natural log of mass_g. |
| torpor_hours | Hours in torpor; confirmed no-torpor nights are zero. |
| temperature | Mean chamber temperature, degrees C. |
| energy_kJ | Whole-night energy expenditure, kJ. |
| mass_g | Bird body mass, g. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

A verified non-torpor night (Torpid_not N) has zero torpor hours, although the source Hours_torpid is NA. Other missing values remain missing. Different species and sites share histories and environments. This is an exploratory cross-individual association, not a substitute for the paper’s comparative model; check that energy values are positive.

Birds belong to multiple species and sites. This cross-individual model leaves comparative and site structure unresolved.

## Sources

Paper: https://doi.org/10.1111/jav.02305

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.t4b8gthzh

Prepared from Torpor_individual_summaries.csv. Preparation choices are described above. No model results or solution code are included.
