# Fungal insurance for wheat during drought

**Paper:** Pons, C., Voß, A., Schweiger, R., & Müller, C. (2020). Effects of drought and mycorrhiza on wheat and aphid infestation. Ecology and Evolution, 10(19), 10481-10491. https://doi.org/10.1002/ece3.6703

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.05qfttf13

This README describes the teaching files in `pons_etal2020`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Pons_2020_project.csv` | 56 rows; 6 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Pons_2020_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 56 study-unit rows. 56 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Does fungal inoculation change how irrigation regime affects wheat ear production?

## Collection and biological context

Researchers grew two wheat plants per pot in a climate chamber. Pots received live fungal inoculum or a comparable sterilised preparation, and were allocated to well-watered, continuously dry or pulsed-drought conditions. The two drought treatments received comparable total water on different schedules. There were 60 pots initially and 56 remaining after infection or sampling losses; positions were changed weekly.

The response is the natural log of ear dry mass in grams; effects are proportional differences in reproductive production. Irrigation distinguishes schedules; fungus distinguishes inoculation. Harvest accounts for different sampling schedules.

## Preparation and sampling unit

Selected CSV is already close to one row per unit; filtering, renaming and a stated transformation are the main preparation steps.

water: cd = continuous drought, pd = pulsed drought, ctr = well-watered control. Both drought regimes restrict total water but differ in timing.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| log_ear | Natural log of ear_mass_g. |
| water | Assigned irrigation regime or precipitation; see the study-specific coding below. Observed categories: cd, ctr, pd. Use as a factor. |
| fungus | Fungal inoculation: AM = inoculated with arbuscular mycorrhizal fungi; NM = not inoculated. Observed categories: AM, NM. Use as a factor. |
| harvest | Source harvest/sampling group; a design variable, not a biological response. Observed categories: A, B. Use as a factor. |
| ear_mass_g | Dry mass of wheat ears, g; reproductive production per pot. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

One pot is one unit; two plants in a pot are not two replicates.

No substantial new obstacle in this worked question; retain the sampling and design caveats.

## Sources

Paper: https://doi.org/10.1002/ece3.6703

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.05qfttf13

Prepared from Biomass.csv. Preparation choices are described above. No model results or solution code are included.
