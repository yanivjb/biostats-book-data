# What do grasses get in exchange for feeding fungi?

**Paper:** Zhao, H., Liao, H., Biere, A., & Peng, S. (2026). Plant economics traits predict plant carbon allocation and responsiveness to arbuscular mycorrhizal fungi under varying precipitation. Functional Ecology, 40(6), 1921-1932. https://doi.org/10.1111/1365-2435.70340

**Original data:** https://datadryad.org/dataset/doi:10.5061/dryad.3j9kd51v3

This README describes the teaching files in `zhao_etal2026`, prepared from the linked authors’ data. Cite both the paper and original data source; see `CITATION.md`.

## Files included

| File | Contents |
|---|---|
| `Zhao_2026_project.csv` | 160 rows; 6 columns. One row per study unit as defined below. |
| `README.md` | Collection, preparation, variable definitions and biological context. |
| `CITATION.md` | Paper and original-data citations and source terms. |

## Start here

Use **Zhao_2026_project.csv**. One CSV is sufficient for this project; no join, pivot, trial scoring or sequence processing is needed. It has 160 study-unit rows. 160 have complete values for the outcome and explanatory variables used in the project description; your sample size can differ if you choose other variables.

**Motivating question:** Does the growth response to fungal inoculation depend on precipitation?

## Collection and biological context

The experiment crossed four grass species, fungal inoculation present or absent, and four simulated precipitation levels. Five individually potted seedlings represented each combination, giving 160 pots. Water treatments began after establishment, pots received nutrient solution, and their positions were randomised and rotated. Biomass and shoot nutrients were measured at harvest after 12 weeks.

Natural-log shoot biomass measures proportional growth differences. Precipitation is the assigned annual-equivalent water supply. Species adjusts for different grass growth strategies.

## Preparation and sampling unit

Selected CSV is already close to one row per unit; filtering, renaming and a stated transformation are the main preparation steps.

water is manipulated precipitation in mm, at four assigned levels. A numerical slope assumes a straight-line response; treating water as a factor asks a different, more flexible question.

Missing observations are **NA**, not zero. The ID identifies the study unit; it is not a biological explanatory variable. Original files and the authors’ documentation are available from the source links below; this folder contains the teaching version only.

## Variables

| Column | Meaning |
|---|---|
| id | Study-unit identifier. Added row IDs are labels only, not explanatory measurements. |
| log_biomass | Natural log of shoot_biomass. |
| water | Assigned irrigation regime or precipitation; see the study-specific coding below. |
| fungus | Fungal inoculation: AM = inoculated with arbuscular mycorrhizal fungi; NM = not inoculated. Observed categories: AM, NM. Use as a factor. |
| species | Species identity; categorical, not a numerical gradient. Observed categories: Cb, Et, Lp, Oc. Use as a factor. |
| shoot_biomass | Shoot dry biomass, g. |

Prepared log columns use the **natural logarithm** unless explicitly labelled base-10 in the definitions. Original-scale versions are also supplied where relevant. A raw and logged version of the same measurement are alternatives, not two independent biological predictors.

## Before modelling

Choose a biological response and at least two substantive explanatory variables. State the mechanisms and predictions first. Consider an interaction only if it has a biological meaning and enough data support it. Inspect distributions, group sizes, missingness and residuals. Compare effects over meaningful changes in each predictor; different measurement units make raw coefficient magnitudes hard to compare.

## Limits to interpretation

Treating precipitation as numeric imposes a straight-line dose response. Inspect that assumption across the four assigned levels; this is not a four-species evolutionary test.

A common linear water response and common species-adjusted fungal interaction are simplifications. Residual spread still varies; balanced treatment allocation helps interpretation but does not prove equal variance.

## Sources

Paper: https://doi.org/10.1111/1365-2435.70340

Original data: https://datadryad.org/dataset/doi:10.5061/dryad.3j9kd51v3

Prepared from 1._Biomass_and_shoot_nutrients_of_plant.csv. Preparation choices are described above. No model results or solution code are included.
